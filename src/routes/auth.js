const express = require('express');
const Route = express.Router();

const auth = require('../controllers/auth');

Route
    .post('/register', auth.createUser)
    .get('/users', auth.allUser)
    .delete('/users/:id', auth.deleteUser)
    .post('/login', auth.loginUser)
    .post('/token', auth.token)
    
module.exports = Route;