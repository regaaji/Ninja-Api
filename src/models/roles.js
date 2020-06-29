const connection = require('../config/mysql')

module.exports = {
    getRoles: function () {
        return new Promise(function (resolve, reject) {
            connection.query('SELECT * FROM roles', function (error, result) {
                if (!error) {
                    resolve(result)
                } else {
                    reject(new Error(error))
                }
            })
        })
    },

    postRoles: function (setData) {
        return new Promise(function (resolve, reject) {
            connection.query('INSERT INTO roles SET ?', setData, function (error, result) {
                if (!error) {
                    const newData = {
                        id: result.insertId,
                        ...setData
                    }

                    resolve(newData)
                } else {
                    reject(new Error(error))
                }
            })
        })
    },
 
    putRoles: function (setData, id) {
        return new Promise(function (resolve, reject) {
            connection.query('UPDATE roles SET ? WHERE id = ?', [setData, id], function (error, result) {
                if (!error) {
                    resolve(result)
                } else {
                    reject(new Error(error))
                }
            })
        })
    },

    deleteRoles: function (id) {
        return new Promise(function (resolve, reject) {
            connection.query('DELETE FROM roles WHERE id = ?', id, function (error, result) {
                if (!error) {
                    resolve(result)
                } else {
                    reject(new Error(error))
                }
            })
        })
    }

}