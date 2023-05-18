// operations.js
const { Client } = require('pg');
const client = require('../psql/client')

const express = require('express');
const router = express.Router();

const authenticateToken = require('../middleware/authToken')

const logger = require('../server_logger')

const fetch = require('node-fetch');


// Operation types and their ID's in the DB. used to map in some functions.
const operationsTable = {
  multiplication: 1,
  addition: 2,
  subtraction: 3,
  division: 4,
  square_root: 5,
  random_string_generation: 6
}

// REQUEST
// ROUTE
// POST
// request route post
router.post('/request', authenticateToken, async (req, res) => {
  const { firstNum, secondNum, type } = req.body;
  const userId = req.userId;
  // Validate data. Ensure both firstNum and secondNum are numeric values.
  if (typeof firstNum !== 'number' || typeof secondNum !== 'number') {
    logger.warn(`${new Date().toISOString()},id: ${userId}, msg: Attempted operation with non-numeric values`)
    return res.status(400).json({ message: 'Values must be numeric in order to request an operation' });
  }
  try {
    // Make sure operation type is valid, and if so perform operation
    let result = null
    switch (type) {
      case 'addition':
        result = firstNum + secondNum
        break;
      case 'subtraction':
        result = firstNum - secondNum
        break;
      case 'multiplication':
        result = firstNum * secondNum
        break;
      case 'division':
        if (secondNum === 0) {
          logger.warn(`${new Date().toISOString()},id: ${userId}, msg: Attempted division by 0`);
          return res.status(400).json({ error: 'Invalid operation: Divisions can\'t be made by 0' });
        }
        result = firstNum / secondNum
        break;
      case 'square_root':        
        if (firstNum <= 0) {
          logger.warn(`${new Date().toISOString()},id: ${userId}, msg: Attempted square root of non-positive number`);
          return res.status(400).json({ error: 'Invalid operation: Number must be positive for square root' });
        }
        result = Math.sqrt(firstNum);
        break;
      case 'random_string_generation':
        // Uses random.org API in order to generate random numbers, then maps them into a random string

        // Request:
        const requestBody = {
          jsonrpc: '2.0',
          method: 'generateStrings',
          params: {
            apiKey: process.env.API_KEY,
            n: 1,
            length: 10,
            characters: 'abcdefghijklmnopqrstuvwxyz',
            replacement: true,
            pregeneratedRandomization: null
          },
          id: 29978
        };
      
        try {
          const response = await fetch('https://api.random.org/json-rpc/4/invoke', {
            method: 'POST',
            headers: {
              'Content-Type': 'application/json'
            },
            body: JSON.stringify(requestBody)
          });
      
          const data = await response.json();
      
          if (response.ok) {
            const randomStrings = data.result.random.data;
            result = randomStrings[0]
          } else {
            logger.error(`${new Date().toISOString()},id: ${userId}, error: ${data.error.message}`);
            return res.status(500).json({ error: 'Failed to request operation' });
          }
        } catch (error) {
          logger.error(`${new Date().toISOString()},id: ${userId}, error: ${error}`);
          return res.status(500).json({ error: 'Failed to request operation' });
          
        }
        break;
      default:
        logger.warn(`${new Date().toISOString()},id: ${userId}, msg: Invalid request: Invalid operation type - ${type}`);
        return res.status(400).json({ error: 'Invalid operation type' });
    }
    // IF OPERATION VALID:
    // Check the cost of the operation
    const costQuery = 'SELECT cost FROM operations WHERE type = $1';
    const costResult = await client.query(costQuery, [type]);
    const cost = parseFloat(costResult.rows[0].cost);

    // Get the current balance of the user
    const balanceQuery = 'SELECT balance FROM users WHERE id = $1';
    const balanceResult = await client.query(balanceQuery, [userId]);
    const balance = parseFloat(balanceResult.rows[0].balance);

    // Create a new record in the operation records table
    const operationStatus = balance >= cost ? 'approved' : 'denied';

    const insertQuery = 'INSERT INTO operation_records (user_id, operation_id, operation_response, cost) VALUES ($1, $2, $3, $4)';
    const insertValues = [userId, operationsTable[type], operationStatus, cost];
    await client.query(insertQuery, insertValues);

    if (operationStatus === 'denied') {
      logger.warn(`${new Date().toISOString()},id: ${userId}, msg: Insufficient balance for operation requested`);
      return res.status(400).json({ error: 'Balance too low to cover cost' });
    }

    logger.info(`${new Date().toISOString()},id: ${userId}, msg: Operation successful`);
    res.status(200).json({ 
      message: 'Operation successful!',
      result 
    });
  } catch (error) {
    logger.error(`${new Date().toISOString()},id: ${userId}, error: ${error}`);
    res.status(500).json({ error: 'Failed to request operation' });
  }
});

// GET-RECORDS
// ROUTE
// GET
// get-records route get
router.get('/records', authenticateToken, async (req, res) => {
  const userId = req.userId;
  try {
    // Pagination parameters
    const page = parseInt(req.query.page) || 1; // Current page number, defaulting to 1
    const limit = parseInt(req.query.limit) || 10; // Number of records per page, defaulting to 10
    const offset = (page - 1) * limit; // Offset calculation

    let result

    if(req.query.filter === 'all') {
      const query = 'SELECT * FROM operation_records WHERE user_id = $1 ORDER BY date DESC OFFSET $2 LIMIT $3';
      result = await client.query(query, [userId, offset, limit]);
    } else {
      filter = operationsTable[req.query.filter]
      const query = 'SELECT * FROM operation_records WHERE user_id = $1 AND operation_id = $2 ORDER BY date DESC OFFSET $3 LIMIT $4';
      result = await client.query(query, [userId, filter, offset, limit]);
    }

    const records = result.rows;
    logger.info(`${new Date().toISOString()},id: ${userId}, msg: Records retrieved successfully`)

    res.status(200).json(records);
  } catch (error) {
    logger.error(`${new Date().toISOString()},id: ${userId}, error: ${error}`);
    res.status(500).json({ error: 'Failed to retrieve records' });
  }
});

// RECORDS
// ROUTE
// DELETE
// records route delete
router.delete('/record/:id', authenticateToken, async (req, res) => {
  const userId = req.userId;
  try {
    const recordId = req.params.id;
    // Check if the record belongs to the authenticated user
    const query = 'SELECT id FROM operation_records WHERE id = $1 AND user_id = $2';
    const result = await client.query(query, [recordId, userId]);

    if (result.rowCount === 0) {
      logger.warn(`${new Date().toISOString()},id: ${userId}, msg: Record not found`);
      return res.status(404).json({ error: 'Record not found' });
    }

    // Delete the record
    const deleteQuery = 'UPDATE operation_records SET deleted = true WHERE id = $1';
    await client.query(deleteQuery, [recordId]);

    logger.info(`${new Date().toISOString()},id: ${userId}, msg: Record deleted successfully!`);
    res.status(200).json({ message: 'Record deleted successfully' });
  } catch (error) {
    logger.error(`${new Date().toISOString()},id: ${userId}, error: ${error}`);
    res.status(500).json({ error: 'Failed to delete record' });
  }
});

// Export the router
module.exports = router;