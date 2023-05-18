const request = require('supertest');
const app = require('../server');
const { expect } = require('chai');

// TEST CREDENTIALS:
// -----------------------
// -----------------------
// username: 'test2@example.com',
// password: 'password123',

// token for future requests.
let token;

// LOGIN ENDPOINT TESTS
describe('Login Endpoint', () => {
  it('should log in a user and receive a token in the response', async () => {
    const response = await request(app)
      .post('/users/login')
      .send({ username: 'test2@example.com', password: 'password123' })
      .expect(200);

    // Assert that the JWT token is received in the response
    expect(response.body).to.have.property('token');
    token = response.body.token; // Store the JWT token in the token variable
  });

  it('should return an error response for invalid email address', async () => {
    const response = await request(app)
      .post('/users/login')
      .send({ username: 'invalid-email', password: 'password123' })
      .expect(400);

    expect(response.body.message).to.equal('Invalid email address');
  });

  it('should return an error response for missing password', async () => {
    const response = await request(app)
      .post('/users/login')
      .send({ username: 'test@example.com', password: '' })
      .expect(400);

    expect(response.body.message).to.equal('Password is required');
  });

  it('should return an error response for invalid password', async () => {
    const response = await request(app)
      .post('/users/login')
      .send({ username: 'test@example.com', password: 'incorrect' })
      .expect(401);

    expect(response.body.message).to.equal('Invalid password');
  });

  it('should return an error response for user not found', async () => {
    const response = await request(app)
      .post('/users/login')
      .send({ username: 'nonexistent@example.com', password: 'password123' })
      .expect(404);

    expect(response.body.message).to.equal('User not found');
  });
});

  // GET-BALANCE ENDPOINT TESTS
  //
  //
  //

  describe('Get Balance Endpoint', () => {
    it('should retrieve the user balance', async () => {
      // Send a GET request to the /get-balance route
      const response = await request(app)
        .get('/users/get-balance')
        .set('Authorization', `Bearer ${token}`)
        .expect(200);
  
      // Assert the response body contains the balance
      expect(response.body).to.have.property('balance');
    });
  
    it('should return an error not authorized for no token', async () => {
      // Send a GET request to the /get-balance route with an invalid user ID
      const response = await request(app)
        .get('/users/get-balance')
        .expect(401);
  
      // Assert the response body contains the error message
      expect(response.body).to.deep.equal({ error: 'Unauthorized' });
    });

    it('should return an error not authorized for wrong token', async () => {
        // Send a GET request to the /get-balance route with an invalid user ID
        const response = await request(app)
          .get('/users/get-balance')
          .set('Authorization', `Bearer QEFWefawegWEGAREGAERGARAER`)
          .expect(401);
    
        // Assert the response body contains the error message
        expect(response.body).to.deep.equal({ error: 'Unauthorized' });
      });
  
  
  });
  
  // LOGOUT ENDPOINT TESTS
  //
  //
  //  
  describe('Logout Endpoint', () => {
    it('should log out the user', async () => {
      // Send a POST request to the /logout route
      const response = await request(app)
        .post('/users/logout')
        .set('Authorization', `Bearer ${token}`)
        .expect(200);
  
      // Assert the response body contains the success message
      expect(response.body).to.deep.equal({ message: 'Logout successful' });
    });
  
    it('should return an error response for unauthorized access', async () => {
      // Send a POST request to the /logout route without a token (unauthorized access)
      const response = await request(app)
        .post('/users/logout')
        .expect(401);
  
      // Assert the response body contains the unauthorized error message
      expect(response.body).to.deep.equal({ error: 'Unauthorized' });
    });
  });