const restify = require('restify');
const path = require('path');
const fs = require('fs');
const mysql = require(path.join(__dirname, '..', 'config', 'mysql'));
const service = require ("../../public/js/kontakt.js")


module.exports = (app) => {

   app.get('/products', (req, res, next) => {
      let db = mysql.connect();
      db.execute(`SELECT * FROM products`, [], (err, rows) => {
         if (err) {
            console.log(err);
         } else {
            res.json(200, rows);
         }
      })
      db.end();
   });

   app.get('/products/:id', (req, res, next) => {
      let id = (isNaN(req.params.id) ? 0 : req.params.id);
      if (id > 0) {
         let db = mysql.connect();
         db.execute(`SELECT * FROM products WHERE product_id = ?`, [req.params.id], (err, rows) => {
            if (err) {
               console.log(err);
            } else {
               res.json(200, rows);
            }
         })
         db.end();
      } else {
         res.json(400, {
            message: 'id ikke valid'
         });
      }
   });

   app.post('/products', (req, res, next) => {

      let name = (req.body.name == undefined ? '' : req.body.name);
      let description = (req.body.description == undefined ? '' : req.body.description);
      let price = (req.body.price == undefined ? 0 : req.body.price);
      price = price.replace(',', '.');

      if (name != '' && description != '' && !isNaN(price)) {

         let db = mysql.connect();
         db.execute(`INSERT INTO products SET product_name = ?, product_description = ?, product_price = ?`, [name, description, price], (err, rows) => {
            if (err) {
               console.log(err);
            } else {
               res.json(200, rows);
            }
         })
         db.end();
      } else {
         res.json(400, {
            message: 'validering fejlede'
         });
      }
   });

   app.put('/products/:id', (req, res, next) => {

      let name = (req.body.name == undefined ? '' : req.body.name);
      let description = (req.body.description == undefined ? '' : req.body.description);
      let price = (req.body.price == undefined ? 0 : req.body.price);
      let id = (isNaN(req.params.id) ? 0 : req.params.id);
      price = price.replace(',', '.');

      if (name != '' && description != '' && !isNaN(price) && id > 0) {

         let db = mysql.connect();
         db.execute(`UPDATE products SET product_name = ?, product_description = ?, product_price = ? WHERE product_id = ?`, [name, description, price, id], (err, rows) => {
            if (err) {
               console.log(err);
            } else {
               res.json(200, rows);
            }
         })
         db.end();
      } else {
         res.json(400, {
            message: 'validering fejlede'
         });
      }
   });

   app.del('/products/:id', (req, res, next) => {
      let id = (isNaN(req.params.id) ? 0 : req.params.id);
      if (id > 0) {
         let db = mysql.connect();
         db.execute(`DELETE FROM products WHERE product_id = ?`, [req.params.id], (err, rows) => {
            if (err) {
               console.log(err);
            } else {
               res.json(204);
            }
         })
         db.end();
      } else {
         res.json(400, {
            message: 'id ikke valid'
         });
      }
   });



app.post('/kontakt', (req, res) => {
    if (req.body.fname != undefined && req.body.lname != undefined && req.body.email != undefined && req.body.besked != undefined) {
       service.kontakt(req.body.fname, req.body.lname, req.body.email, req.body.besked, (err, result) => {
          if (err) {
             console.log(Date(), err);
             res.status(500);
          } else {
<<<<<<< HEAD
          res.writeHead(302, {'Location': 'http://188.226.187.169:3000/index.html'});
=======
          res.writeHead(302, {'Location': 'http://188.226.173.203:3000/index.html'});
>>>>>>> 0e8652121d49d7be574c88f95b3eee50579576dd
            res.end();
          }
       });
    } else {
       res.json(400);
    }
 });


}
