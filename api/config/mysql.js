const mysql = require('mysql2'); // mysql

module.exports = {
   connect: function () {
      return mysql.createConnection({
<<<<<<< HEAD
         host: '188.226.187.169:3000',
         user: 'root',
         password: 'emilemil1362',
=======
         host: '',
         user: 'root',
         password: '',
>>>>>>> 0e8652121d49d7be574c88f95b3eee50579576dd
         database: 'hifi'
      })
   }
}