<h1 align="center">Ninja Library App 📚</h1>
<p align="center">
  <a href="http://opensource.org/licenses/MIT">
    <img title="MIT license" src="http://img.shields.io/badge/license-MIT-brightgreen.svg">
  </a>
    <a href="#">
    <img alt="David" src="https://img.shields.io/david/dev/iyansr/novel-library-api">
  </a>
  <a href="#">
    <img title="Open Source Love" src="https://badges.frapsoft.com/os/v1/open-source.svg?v=102">
  </a>
  <a href="https://github.com/regaaji?tab=followers">
    <img title="Followers" src="https://img.shields.io/github/followers/regaaji?style=social">
  </a>
  <a href="https://github.com/prettier/prettier"><img src="https://img.shields.io/badge/styled_with-prettier-ff69b4.svg"></a>
  <a href="#">
    <img title="Repo Size" src="https://img.shields.io/github/repo-size/regaaji/novel-library-api">
  </a>

</p>



## Table of Contents

- [Introduction](#introduction)
- [Build Setup](#build-setup)
- [Stacks](#stacks)
- [Dependencies](#dependencies)
- [Aplication Structure](#aplication-structure)



## Introduction
<b>Ninja Api</b>  is application specially for backend only. Built with NodeJs using the ExpressJs Framework.
Express.js is a web application framework for Node.js. [More about Express](https://en.wikipedia.org/wiki/Express.js)

## Build Setup

1. Clone repository
   `$ git clone https://github.com/regaaji/ninja-ibrary-app.git`

2. Install depedencies

```bash
# with npm
$ npm install

# or with yarn
$ yarn install
```

3. Setup your environment variable in `.env` files (if not exists, create your own).

```env
DB_HOST      = 'localhost'
DB_USER      = 'root'
DB_PASSWORD  = 'xxx'
DB_DATABASE  = 'dbname'
```

4. Start API server

```bash
$ yarn start
```

## Stacks

- NodeJS
- MySQL
- ExpressJS

## Dependencies

- [expressjs](https://www.npmjs.com/package/express) - The server for handling and routing HTTP requests
- [morgan](https://www.npmjs.com/package/morgan) - a HTTP request logger middleware for Node.js. It simplifies the process of logging requests to your application
- [dotenv](https://www.npmjs.com/package/dotenv) - is a zero-dependency module that loads environment variables from a `.env` file into `process.env`
- [momentjs](https://www.npmjs.com/package/moment) - To convert dateTime from javascript format to mysql format easily
- [mysql](https://www.npmjs.com/package/mysql) - NodeJs driver for MySQL
- [body-parser](https://www.npmjs.com/package/body-parser) - Node.js body parsing middleware
- [nodemon](https://www.npmjs.com/package/nodemon) - is a tool that helps develop node.js based applications by automatically restarting the node application when file changes in the directory are detected.

## Aplication Structure

- `app.js` - Entry point of our aplication
- `src/config` - This folder contain configuration files of our app, such as mysql connection
- `src/models` - This folder containt files that define query of MysQL
- `src/routes` - Route of our app going here
- `src/helpers` - This folder contain file that help you simplify your code such as define the error handling
- `src/controllers` - This folder contain configuration files that links Models to Route

---


## Book's endpoint

| No  | HTTP Method |                         URI                           | Operation                                  |
| --- | ----------- | ----------------------------------------------------- | ------------------------------------------ |
| 1   | GET         | /books/                                               | Get all books data                         |
| 2   | GET         | /books/:book_id                                       | Get book’s data by it’s ID                 |
| 3   | GET         | /books/?limit=1&page=2&search=Harry&sortBy=statusbook | Get book data based on pages and limits    |
| 4   | GET         | /books/?search=book_title                             | Search books data by title keyword         |
| 9   | POST        | /books/                                               | Insert new book data                       |
| 10  | PUT         | /books/update/:book_id                                | Edit or update the book’s data by it’s ID  |
| 11  | DELETE      | /books/delete/:book_id                                | Delete the book’s data from database by ID |



## Genre's endpoint

| No  | HTTP Method | URI                             | Operation                                  |
| --- | ----------- | ------------------------------- | ------------------------------------------ |
| 1   | GET         | /book/genres/                   | Get all genres data                        |
| 2   | POST        | /book/genres/                   | Insert new genre data                      |
| 3   | PUT         | /book/genres/:genre_id          | Edit or update the genre’s data by it’s ID |
| 4   | DELETE      | /book/genres/:genre_id          | Delete genre’s data by it’s ID             |



## Author's endpoint

| No  | HTTP Method | URI                             | Operation                                  |
| --- | ----------- | ------------------------------- | ------------------------------------------ |
| 1   | GET         | /book/authors/                  | Get all authors data                       |
| 2   | GET         | /book/authors/history/users_id  | Get history data by it’s ID                |
| 3   | POST        | /book/authors/                  | Insert new author data                      |
| 4   | PUT         | /book/authors/:author_id        | Edit or update the author’s data by it’s ID |
| 5   | DELETE      | /book/authors/:author_id        | Delete author’s data by it’s ID             |



## User's endpoint

| No  | HTTP Method | URI                       | Operation                                                             |
| --- | ----------- | ----------------------    | --------------------------------------------------------------------- |
| 1   | POST        | /book/auth/register       | Insert new user data                                                  |
| 2   | POST        | /book/auth/login          | User’s login to get JWT token’s for full access on the backend system |


## Testing api
Sample test script with ```Mocha``` and ```Chai```

1. Create the folder ```test``` at root directory
2. Create the file named ```book_test.spec.js```, ```author_test.spec.js```, and ```genre_test.spec.js```  at ```test``` folder

For testing with ```Mocha``` and ```Chai``` we have just install devdependency
```bash
# with npm
$ npm install mocha chai chai-http nyc --save-dev

# or with yarn
$ yarn add mocha chai chai-http nyc -D
```


Then add the ```chai``` and ```chai-http``` package for testing the api server. for testing with api server we need to
add main `js` file ```app.js``` as server 
```javascript
const chai = require('chai');
const chaiHttp = require('chai-http');
const app = require('../app');
chai.should();
chai.use(chaiHttp)
```

### books testing:
```javascript
describe('/GET book', () => {
    it('it should Get all books', (done) => {
        chai.request(app)
        .get('/books')
        .end((err, res) => {
            res.should.have.status(200);
            res.body.should.be.a('object');
            done();
        });
    });
});
```
write the following code in the file ```book_test.spec.js```


### authors testing:
```javascript
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
```
write the following code in the file ```author_test.spec.js```


### genres testing:
```javascript
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
```
write the following code in the file ```genre_test.spec.js```



Run Test

```bash
# with npm
$ npm test

# or with yarn
$ yarn test
```

Run Test Coverage

```bash
# with npm
$ npm run coverage

# or with yarn
$ yarn run coverage
```



## Screenshoot Coverage
<div align="center">
  <img width="500" src="./screenshoot/coverage1.png">
  <img width="500" src="./screenshoot/coverage.png">

</div>

Copyright © 2020 by Rega Aji Prayogo
