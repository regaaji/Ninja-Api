const chai = require('chai');
const chaiHttp = require('chai-http');
const app = require('../app');
const expect = chai.expect;


chai.should();
chai.use(chaiHttp);



describe('Author.js', () => {
    it('get author results are correct', (done) => {
        chai.request(app)
        .get('/book/authors')
        .end((err, res) => {
            res.should.have.status(200);
            done();
        });
    });

});



