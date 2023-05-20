# API for NTD code challenge

This api has 2 different routers, /users and /operations. It utilizes a psql instance as a database. For details on how to create an appropriate instance, check the psql directory for the dump backup of the database schema I used.

Operations are transactional, requests are atomic and the DB handles the updating of balance and such through triggers and trigger functions, so the app should be able to handle simulataneous requests without an issue. 

The app uses Winston for logging. You can find the logs in the logs directory. For the purposes of this test, it's a single combined file being created.

You can run:

- docker-compose up

In order to start a docker container with the app. Be sure to modify docker-compose.yml to include your credentials for the PSQL DB.

## Requirements
You will need to setup the following env variables for the app to work if you intend to use it locally.

DATABASE_URL=...
JWT_SECRET=...
API_KEY=...
FRONTEND_URL...

The database URL, like mentioned before, has to be a PSQL instance hosted somewhere.
The JWT secret is a phrase you must keep secret for token generation. 
API_KEY is your key for random.org services.

## DOCKER
You will need to open the docker-compose file and add your private keys to the environment variables, make sure to leave no spaces inbetween the '=' sign and your value, or after your value. Then, run the following:

- docker-compose build
- docker-compose up

### DEFINITIONS
Note - All non 2xx status responses are errors.
Unless otherwise specified, these are some generic responses from all endpoints:

Status 200 for successful request
Status 401 for Unauthorized Access
Status 500 for Network error

#### /users has 4 endpoints:

- POST /create-user
Expects a username and password in the request body. 
{
    "username":string,
    "password":string
} 

It validates for a valid email address and for a non-blank password, but it's recommended to perform validation in FE as well. 
Checks for duplicate usernames.
Hashes the password via bcrypt and stores a new user in the DB. 

Status 201 for successful creation.
Status 400 for duplicated username.

- POST /login
Expects a username and a password sent through the body of the request.
{
    "username":string,
    "password":string
} 

Returns a JWT token which is expected to be included in any future requests through the authorization header.

Status 401 for invalid PW.
Status 404 for User Not Found.


- POST /logout
Expects for the JWT token to be present in the cookie. This is handled by the browser, no need to send any information manually. 

Destroys the cookie, deletes the cookie from the server.

- GET /get-balance
Expects for the JWT token to be present in the cookie. This is handled by the browser, no need to send any information manually.
Returns a JSON object in the response body:
{
    "balance":number
}

#### /operations

- POST /request
Used in order to request an operation. Will check the balance vs the cost and create a record in the DB regardless of whether it's denied or approved (based on the cost vs balance).
Expects firstNum, secondNum and type to be in the request body:
{
	"firstNum": int,
	"secondNum": int,
	"type": string
}

type must be a string containing exactly one of the following values:
  multiplication
  addition
  subtraction
  division
  square_root
  random_string_generation

If successful, alongside a status 200 it returns:
{
	"message": "Operation successful!",
	"result": number | string
}

The result type depends on the operation requested

If you attempt an invalid operation, such as division by zero, you will receive the following in the response body. 

{
  "error": string
}

- GET /records
Retrieves paginated operation records for the authenticated user.
Expects for the JWT token to be present in the cookie. This is handled by the browser, no need to send any information manually.
Query Parameters: (Numeric)
page (optional): The current page number (default: 1).
limit (optional): The number of records per page (default: 10).

Returns:
[
  {
    "id": number,
    "user_id": number,
    "type": string,
    "operation_response": string,
    "cost": number,
    "created_at": string
  },
  ...
]

- DELETE /record/:id
Deletes the specified operation record.
Expects for the JWT token to be present in the cookie. This is handled by the browser, no need to send any information manually.
Path Parameters:
id: The ID of the operation record to delete.

Status 404 for Record Not Found.