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

const allowlist = ['http://localhost:3000','http://localhost:3001', 'https://loanpro-code-challenge-api.herokuapp.com'];
const corsOptionsDelegate = function (req, callback) {
  let corsOptions;
  if (allowlist.indexOf(req.header('Origin')) !== -1) {
    corsOptions = { origin: true, credentials: true }
  } else {
    corsOptions = { origin: false }
  }
  callback(null, corsOptions)
}
app.use(express.json());
app.use(cors(corsOptionsDelegate));
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