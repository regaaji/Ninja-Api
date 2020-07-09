const chai = require('chai');
const chaiHttp = require('chai-http');
const app = require('../app');
// const server = 'http://localhost:8001';
// const mysql = require('mysql')
const expect = chai.expect;
// import sinon
const sinon = require("sinon");
const indexPage = require("../src/controllers/books.js");

chai.should();
chai.use(chaiHttp);



describe('/GET book', () => {
    it('it should Get all books', (done) => {
        chai.request(app)
        .get('/books')
        .end((err, res) => {
            res.should.have.status(200);
            // res.body.should.be.a('object');
            done();
        });
    });

    it("should get a single book record", (done) => {
    	const id = 1;
    	chai.request(app)
    	.get(`/books/${id}`)
    	.end((err, res) => {
    		res.should.have.status(200);
    		// res.body.should.be.a('object');
    		done();
    	});
    });

    it("should not get a single book record", (done) => {
    	const id = 3;
    	chai.request(app)
    	.get(`/books/${id}`)
    	.end((err, res) => {
    		res.should.have.status(200);
    		// console.log(res);
    		done();
    	});
    });

   //   it('should update the status of an order on /:id GET', (done) => {
   //      	const id = 22;
   //      	chai.request(app)
   //      	.put(`/books/update/${id}`)
   //      	.end((err, res) => {
   //      		res.should.have.status(404);
			// 	// res.body.should.be.a('object');
			// 	// res.body.should.have.property('title');
   //    			// res.body.should.have.property('quantity');
			// 	console.log(res);
			// 	done();
			// });
   //      });

});



// describe('/POST book', () => {
//     it('it should post the book info', (done) => {
//         const book = {
//             id: "23",	
//             title: "tes",
//             description: "tes",
//             image: "image-1589773060532.png",
//             genre: "5",
//             author: "1",
//             status: "2"
//         };

//         chai.request(app)
//         .post('/books')
//         .send(book)
//         // console.log(book)
//         .end((err, res) => {
//             // res.should.have.status(200);
//             // res.body.should.be.a('object');
//             // res.body.should.have.property('data');
//             // res.body.should.have.property('message');
//             // res.body.should.have.property('statusType').eq('success');
//             console.log(res.send);
//             // console.log(err);
//             done();
//         });
//     });



// });   

 // describe("POST /", () => {
 //    it("should return user when the all request body is valid", async () => {
 //      const res = await chai.request(app)
 //        .post("/books")
 //        .send({
 // 			title: "tes",
 //            description: "tes",
 //            image: "image-1589773060532.png",
 //            genre: "5",
 //            author: "1",
 //            status: "2"
 //        });
 //      expect(res.status).to.equal(200);
 //      expect(res.body).to.have.property("_id");
 //      expect(res.body).to.have.property("title", "test2");
 //    });

 //  });