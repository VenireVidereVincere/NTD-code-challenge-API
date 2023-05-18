const { Client } = require('pg');
require('dotenv').config(); // Load environment variables from .env file

const connectionString = process.env.DATABASE_URL;

const client = new Client({
  connectionString: connectionString,
});

// Connect to the database
client.connect((err) => {
  if (err) {
    console.error('Error connecting to the database:', err);
  } else {
    console.log('Connected to the database');
  }
});

// Export the client object
module.exports = client;