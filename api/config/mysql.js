const mysql = require('mysql2'); // mysql

module.exports = {
   connect: function () {
      return mysql.createConnection({
         host: '188.226.173.203',
         user: 'root',
         password: 'nokia1362',
         database: 'hifi'
      })
   }
}