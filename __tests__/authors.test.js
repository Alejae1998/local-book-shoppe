const pool = require('../lib/utils/pool');
const setup = require('../data/setup');
const request = require('supertest');
const app = require('../lib/app');

describe('authors routes', () => {
  beforeEach(() => {
    return setup(pool);
  });

  it('should return a list of authors', async () => {
    const res = await request(app).get('/authors');
    expect(res.status).toBe(200);
    expect(res.body).toEqual([
      { id: '1', name: 'Arthur McArthur', dob: 1959, pob: 'Orange County' },
      { id: '2', name: 'Test McTest', dob: 1960, pob: 'New York' },
      { id: '3', name: 'Another McTest', dob: 1890, pob: 'Miami' },
    ]);
  }); 
});
