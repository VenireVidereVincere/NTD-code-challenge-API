const { Client } = require('pg');
const client = require('../psql/client')

const express = require('express');
const router = express.Router();
const jwt = require('jsonwebtoken');
const bcrypt = require('bcrypt')

const authenticateToken = require('../middleware/authToken')

const logger = require('../server_logger')

// Used for validation across several routes
const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

// CREATE-USER
// ROUTE
// POST
// create-user route posts
router.post('/create-user', async (req, res) => {
  const { username, password } = req.body;
  
  try {
    // Validate data. Username must be a valid email, password can't be empty.
    if (!emailRegex.test(username)) {
      logger.warn(`${new Date().toISOString()},id: ${username},msg: Invalid email address`);
      return res.status(400).json({ message: 'Invalid email address' });
    }

    if (!password) {
      logger.warn(`${new Date().toISOString()},id: ${username},msg: Blank password used`);
      return res.status(400).json({ message: 'Password is required' });
    }

    // Hash the password
    const hashedPassword = await bcrypt.hash(password, 10);

    // Execute the INSERT query
    const query = 'INSERT INTO users (username, password) VALUES ($1, $2)';
    await client.query(query, [username, hashedPassword]);
    logger.info(`${new Date().toISOString()},id: ${username},msg: User successfully created`);
    // Send a success response
    res.status(201).json({ message: 'User created successfully' });
  } catch (error) {
    if (error.code === '23505') { // Constraint violation error code
      logger.warn(`${new Date().toISOString()},id: ${username}, error: ${error}`);
      res.status(400).json({ message: 'Username already exists' });
    } else {
      logger.warn(`${new Date().toISOString()},id: ${username}, error: ${error}`);
      res.status(500).json({ message: 'Failed to create user' });
    }
  }
});

// LOGIN
// ROUTE
// POST
// login route post
router.post('/login', async (req, res) => {
  const { username, password } = req.body;

  // Validate data. Username must be a valid email, password can't be empty.
  if (!emailRegex.test(username)) {
    logger.warn(`${new Date().toISOString()},id: ${username}, msg: Invalid email address`);
    return res.status(400).json({ message: 'Invalid email address' });
  }

  if (!password) {
    logger.warn(`${new Date().toISOString()},id: ${username}, msg: Empty password attempted`);
    return res.status(400).json({ message: 'Password is required' });
  }

  try {
    // Check if the username exists in the database
    const query = 'SELECT id, password FROM users WHERE username = $1';
    const result = await client.query(query, [username]);
    const user = result.rows[0];

    if (user) {
      // Compare the provided password with the stored hashed password
      const passwordMatch = await bcrypt.compare(password, user.password);

      if (passwordMatch) {
        // Generate a JWT token
        const token = jwt.sign({ id: user.id }, process.env.JWT_SECRET);

        // Insert new token into db.
        const insertQuery = 'INSERT INTO tokens (user_id, token) VALUES ($1, $2)';
        const insertValues = [user.id, token];
        await client.query(insertQuery, insertValues);

        // Set the JWT token as an HTTP-only cookie

        logger.info(`${new Date().toISOString()},id: ${username}, msg: Logged in successfully`);
        // Send the user id in the response body
        return res.status(200).json({token});
      } else {
        logger.warn(`${new Date().toISOString()},id: ${username}, msg: Invalid password`);
        res.status(401).json({ message: 'Invalid password' });
      }
    } else {
      logger.warn(`${new Date().toISOString()},id: ${username}, msg: User not found`);
      res.status(404).json({ message: 'User not found' });
    }
  } catch (error) {
    logger.error(`${new Date().toISOString()},id: ${username}, error: ${error}`)
    res.status(500).json({ message: 'Failed to log in' });
  }
});

// LOGOUT
// ROUTE
// POST
// logout route post
router.post('/logout', authenticateToken, async (req, res) => {
  const { userId, token } = req;
  try {  

    // Update the token entry in the database to mark it as deleted
    const updateQuery = 'UPDATE tokens SET deleted = true WHERE user_id = $1 AND token = $2';
    const updateValues = [userId, token];
    await client.query(updateQuery, updateValues);

    logger.info(`${new Date().toISOString()},id: ${userId}, msg: Successfully logged out`);
    res.status(200).json({ message: 'Logout successful' });
  } catch (error) {
    logger.error(`${new Date().toISOString()},id: ${userId}, error: ${error}`);
    res.status(500).json({ message: 'Failed to logout' });
  }
});

  // GET-BALANCE
  // ROUTE
  // GET
  // get-balance route get
router.get('/get-balance', authenticateToken, async (req, res) => {
  const { userId } = req;
  try { 

    // Query the database to retrieve the user's balance
    const query = 'SELECT balance FROM users WHERE id = $1';
    const result = await client.query(query, [userId]);

    if (result.rowCount === 0) {
      return res.status(404).json({ error: 'User not found' });
    }

    const balance = result.rows[0].balance;
    logger.info(`${new Date().toISOString()},id: ${userId}, msg: User ${userId} - Balance retrieved successfully: ${balance}`);
    res.status(200).json({ balance });
  } catch (error) {
    logger.error(`${new Date().toISOString()},id: ${userId}, error: ${error}`);
    res.status(500).json({ error: 'Failed to retrieve balance' });
  }
});

// Export the router
module.exports = router;