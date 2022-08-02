const { Router } = require('express');
const { Author } = require('../models/Author');

module.exports = Router().get('/', async (req, res) => {
  const author = await Author.getALL();
  res.send(author);
});