const Book = require('../models/books')

const erroHandler = require('../helpers/ErrorHandling')
const helper = require("../helpers/index");

module.exports = {
  getAllBooks: async (request, response) => {
      try {
        const limit = request.query.limit || 100
        const activePage = request.query.page || 1
        const searchTitle = request.query.search || ''
        const sortBy = request.query.sortBy || 'id' 

        const pagination = {
          activePage, limit, sortBy
        }

        const totalData = await Book.countData(searchTitle)
        // console.log(totalData)
        const totalPages = Math.ceil(totalData / limit)
        // console.log(totalPages)
        const pageDetail = {
          totalPages: totalPages,
          limit: limit,
          prev_page: activePage - 1,
          next_page: activePage + 1,
          page: activePage
        }
        const result = await Book.getAllBooks(searchTitle, pagination)
        helper.response(response, 200, result, pageDetail)
      } catch (error) {
        console.log(error)
        helper.customErrorResponse(response, 404, 'cant see the book')
      }
    },

     getBookDataByID: async (request, response) => {
      try {
       
          const id = request.params.id
          const result = await Book.getBookDataByID(id)
          helper.response(response, 200, result)
      
      } catch (error) {
        console.log(error)
        helper.customErrorResponse(response, 404, 'cant see the book details')
      }
    },

    addNewBook: async (request, response) => {
    try {
       // const role  = request.token.role;
       // if (role == 2) {

        if(request.file != undefined){
              data = {
                  image : request.file.filename,
                  ...request.body
              }

            }else{

              data = request.body

          }

        // const data = {
        //   title: request.body.title,
        //   description: request.body.description,
        //   image: request.file.filename,
        //   genre: request.body.genre,
        //   author: request.body.author,
        //   status: request.body.status,
        //   created_at: new Date(),
        //   updated_at: new Date()
        // }
        const result = await Book.addNewBook(data)
        data.id = result.insertId
        helper.response(response, 200, data)

       // } else {
          //helper.customErrorResponse(response, 404, 'not user role!')
        // }
      
    } catch (error) {
      console.log(error)
      helper.insertBooksErrorHandling(data, response)
    }
  },

  editBookData: async (request, response) => {
    try {
      // const role  = request.token.role;
      //  if (role == 2) {

          const id = request.params.id
          if(request.file != undefined){
                 data = {
                    image : request.file.filename,
                    ...request.body
                }

            }else{

                 data = request.body

            }
          // const data = {
          //    title: request.body.title,
          //   description: request.body.description,
          //   image: request.file.filename,
          //   genre: request.body.genre,
          //   author: request.body.author,
          //   status: request.body.status,
          //   updated_at: new Date()
          // }
          const result = await Book.editBookData(data, id)
          helper.response(response, 200, result)

      // } else {
          //helper.customErrorResponse(response, 404, 'not user role!')
      // }
    } catch (error) {
      console.log(error)
      helper.customErrorResponse(response, 404, 'cant edit book')
    }
  },


   getAllBorrowBook: async (request, response) => {
      try {
       
          const id = request.params.id

          console.log("id", id)
          const result = await Book.getAllBorrowBook(id)
          helper.response(response, 200, result)
      
      } catch (error) {
        console.log(error)
        helper.customErrorResponse(response, 404, 'cant see the borrow book details')
      }
    },


  borrowHistoryBookData: async (request, response) => {
    try {
 
          const id = request.params.id
          const data = {
            ...request.body
          }

          // console.log(data.user_id)
          const id_book = data.books_id;


             await Book.borrowHistoryBookData(id)
             await Book.borrowHistoryBookData1(id_book)
         
            helper.response(response, 200, {message: 'The book was successfully borrowed'})                    
          

          // helper.response(response, 200, result)

      
    } catch (error) {
      console.log(error)
      helper.customErrorResponse(response, 404, 'Internal server error!')
    }
  },

  borrowBookData: async (request, response) => {
    try {
 
          const id = request.params.id
          // const data = {
          //   status: request.body.status,
          //   updated_at: new Date()
          // }
          if(request.body.status == "borrow"){
            const result = await Book.borrowBookData(id)
            helper.response(response, 200, {message: 'The book was successfully borrowed'})                    
          } else if(request.body.status == "return") {
            const result = await Book.returnBookData(id)
            helper.response(response, 200, {message: 'The book was returned successfully'})                    
          } else {
            helper.response(response, 200, {message: 'Status Not Found'})
          }

          // helper.response(response, 200, result)

      
    } catch (error) {
      console.log(error)
      helper.customErrorResponse(response, 404, 'Internal server error!')
    }
  },

  addBorrowBook: async (request, response) => {
      try {
   
            const data = {
              ...request.body,
              created_at: new Date()
            }
            const result = await Book.addBorrowBook(data)
            data.id = result.insertId
            helper.response(response, 200, data)

            // helper.response(response, 200, result)

        
      } catch (error) {
        console.log(error)
        helper.customErrorResponse(response, 404, 'Internal server error!')
      }
    },


  deleteBookData: async (request, response) => {
    try {
      

          const id = request.params.id
          const result = await Book.deleteBookData(id)
          helper.response(response, 200, result)

      
    } catch (error) {
      console.log(error)
      helper.customErrorResponse(response, 404, 'Internal server error!')
    }
  }

}