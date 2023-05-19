const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
// Require the route files
const usersRoute = require('./routers/users');
const operationsRoute = require('./routers/operations');
const cookieParser = require('cookie-parser');
require('dotenv').config();


const app = express();

// Middleware
app.use(express.json());
app.use(cors({
  origin: process.env.FRONTEND_URL,
}));
app.use(cookieParser());

// Mount the route files
app.use('/users', usersRoute);
app.use('/operations', operationsRoute);

// Routes

// Start the server
const port = process.env.PORT || 3000;
app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});

module.exports = app