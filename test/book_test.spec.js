const chai = require('chai');
const chaiHttp = require('chai-http');
const app = require('../app');
const expect = chai.expect;


chai.should();
chai.use(chaiHttp);



describe('Book.js', () => {
    it('it should Get all books', (done) => {
        chai.request(app)
        .get('/books')
        .end((err, res) => {
            res.should.have.status(200);
            done();
        });
    });

    it("should get a single book record", (done) => {
    	const id = 1;
    	chai.request(app)
    	.get(`/books/${id}`)
    	.end((err, res) => {
    		res.should.have.status(200);
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

});



