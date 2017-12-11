const mysql = require('mysql2'); // mysql

module.exports = {
   connect: function () {
      return mysql.createConnection({
         host: '',
         user: 'root',
         password: '',
         database: 'hifi'
      })
   }
}