const mysql = require('mysql2'); // mysql

module.exports = {
   connect: function () {
      return mysql.createConnection({
         host: '188.226.187.169:3000',
         user: 'root',
         password: 'emilemil1362',
         database: 'hifi'
      })
   }
}