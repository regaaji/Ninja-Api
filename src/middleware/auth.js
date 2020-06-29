const jwt = require('jsonwebtoken')
const helper = require('../helpers/index')

module.exports = {
    authorization: (request, response, next) => {
        const token = request.headers.authorization
        // const userId = request.headers['user-id']

        // const token = authHeader.split(' ')[1];

        jwt.verify(token, process.env.JWT_KEY, (error, result) => {
            if (error && error.name === "TokenExpiredError" || error && error.name === "JsonWebTokenError"){
                 return helper.customErrorResponse(response, 401,  error.name )
            } else {
                request.token = result
                console.log(request.token.role)
                next()
            }
        })
    }
}