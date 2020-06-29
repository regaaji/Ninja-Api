const roleModels = require('../models/roles')

const helper = require('../helpers/index')

module.exports = {
    //async menunggu data result 
    getRoles: async function (request, response) {
        try {
            const result = await roleModels.getRoles()

            return helper.response(response, 200, result)
        } catch (error) {
            return helper.response(response, 500, error)

        }
    },

    postRoles: async function (request, response) {

        try {

            const setData = request.body
            console.log(setData)
            const result = await roleModels.postRoles(setData)

            return helper.response(response, 200, result)
        } catch (error) {
            return helper.response(response, 500, error)
        }


    },

    putRoles: async function (request, response) {

        try {

            const setData = request.body
            const id = request.params.id
            console.log(setData)
            const result = await roleModels.putRoles(setData, id)

            return helper.response(response, 200, result)
        } catch (error) {
            return helper.response(response, 500, error)
        }


    },

    deleteRoles: async function (request, response) {

        try {

            const id = request.params.id
            const result = await roleModels.deleteRoles(id)

            return helper.response(response, 200, result)
        } catch (error) {
            return helper.response(response, 500, error)
        }


    }


}