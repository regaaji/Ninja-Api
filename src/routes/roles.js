const express = require('express')
const Route = express.Router()

const roleController = require('../controllers/roles')

Route
    .get('/', roleController.getRoles) //
    .post('/', roleController.postRoles)
    .put('/:id', roleController.putRoles)
    .delete('/:id', roleController.deleteRoles)

module.exports = Route