const chai = require('chai');
const chaiHttp = require('chai-http');
const app = require('../app');
const expect = chai.expect;


chai.should();
chai.use(chaiHttp);



describe('Genre.js', () => {
    it('get genre results are correct', (done) => {
        chai.request(app)
        .get('/book/genres')
        .end((err, res) => {
            res.should.have.status(200);
            done();
        });
    });

});



