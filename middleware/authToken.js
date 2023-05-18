const jwt = require('jsonwebtoken');
const client = require('../psql/client');
const logger = require('../server_logger')

const authenticateToken = async (req, res, next) => {

  try {

    // Get the token from the Authorization header
    const authHeader = req.headers['authorization'];
    const token = authHeader && authHeader.split(' ')[1];
    if (!token) {
      return res.status(401).json({ error: 'Unauthorized' });
    }

    // Verify the token
    const decodedToken = jwt.verify(token, process.env.JWT_SECRET);

    // Retrieve the user_id and token from the decoded token
    const { id } = decodedToken;

    // Query the database to check if the token exists for the user
    const query = 'SELECT * FROM tokens WHERE user_id = $1 AND token = $2';
    const values = [id, token];
    const result = await client.query(query, values);

    if (result.rowCount === 0) {
      
      logger.warn(`${new Date().toISOString()},id: ${id}, msg: Invalid JWT used`)
      return res.status(401).json({ error: 'Unauthorized' });
    }

    req.userId = id; // Add the user ID to the request object
    req.token = token // Add the token to the request object
    next();
  } catch (error) {
    logger.warn(`${new Date().toISOString()},error: ${error}`)
    return res.status(401).json({ error: 'Unauthorized' });
  }
};

module.exports = authenticateToken;