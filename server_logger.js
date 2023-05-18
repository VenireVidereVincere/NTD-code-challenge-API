// Logging library
const winston = require('winston');
// Due to app simpplicity, using a combined logger for all levels.
// The server is creating logs up to info level
// Only writing warn and above for now
// Change if required
const logger = winston.createLogger({
  level: 'warn', // debug, info, warn, error and fatal will be logged
  format: winston.format.simple(), 
  transports: [
    new winston.transports.File({ filename: 'logs/app.log' }) 
  ]
});
// Console logger for development mode.
if (process.env.NODE_ENV !== 'production') {
  logger.add(new winston.transports.Console({
    format: winston.format.simple(),
  }));
}

module.exports = logger