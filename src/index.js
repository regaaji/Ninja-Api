const express = require('express')
const Route = express.Router()

const bookRoutes = require('./routes/books')
const genreRoutes = require('./routes/genres')
const authorRoutes = require('./routes/authors')
const statusRoutes = require('./routes/status')
const auth = require('./routes/auth')
const roles = require('./routes/roles')

Route.use('/books', bookRoutes)
Route.use('/book/genres', genreRoutes)
Route.use('/book/authors', authorRoutes)
Route.use('/book/status', statusRoutes)
Route.use('/book/auth', auth)
Route.use('/book/role', roles)

module.exports = Route