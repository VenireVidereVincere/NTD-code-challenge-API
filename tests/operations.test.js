const request = require('supertest');
const app = require('../server');
const { expect } = require('chai');
const client = require('../psql/client')

// token for future requests.
let token

// operation ID for deletion test
let operationId

// Setting up login / logout for operations tests:
beforeEach(async () => {
    const loginResponse = await request(app)
      .post('/users/login')
      .send({ username: 'test2@example.com', password: 'password123' });
  
      token = loginResponse.body.token;
  });
  
  afterEach(async () => {
    await request(app)
      .post('/users/logout')
      .set('Authorization', `Bearer ${token}`);
  });
  describe('POST /operations/request', () => {
    it('should return an error for division by 0', async () => {
      const response = await request(app)
        .post('/operations/request')
        .set('Authorization', `Bearer ${token}`)
        .send({ firstNum: 10, secondNum: 0, type: 'division' });
  
      expect(response.status).to.equal(400);
      expect(response.body).to.deep.equal({ error: 'Invalid operation: Divisions can\'t be made by 0' });
    });
  
    it('should return an error for square root of non-positive number', async () => {
      const response = await request(app)
        .post('/operations/request')
        .set('Authorization', `Bearer ${token}`)
        .send({ firstNum: -5, type: 'square_root' });
  
      expect(response.status).to.equal(400);
      expect(response.body).to.deep.equal({ message: "Values must be numeric in order to request an operation" });
    });

  });

  describe('GET /operations/records', () => {
    it('should return an error when retrieving records', async () => {
      const response = await request(app)
        .get('/operations/records')
    
      expect(response.status).to.equal(401);
      expect(response.body).to.deep.equal({ error: 'Unauthorized' });
    });
  
  });

  describe('DELETE /operations/record/:id', () => {
    it('should return an error when record is not found', async () => {
      const nonExistingRecordId = 12345;
  
      const response = await request(app)
        .delete(`/operations/record/${nonExistingRecordId}`)
        .set('Authorization', `Bearer ${token}`)
    
      expect(response.status).to.equal(404);
      expect(response.body).to.deep.equal({ error: 'Record not found' });
    });

  });