const db = require('../../api/config/mysql').connect();
db.connect((err) => {
   if (err) {
      console.log(Date(), err.stack);
      return;
   }
});

module.exports = {


   'kontakt': (fornavn, efternavn, email, besked, next) => {
    let query = `INSERT INTO kontakt SET Fornavn = '${fornavn}', Efternavn = '${efternavn}', Email = '${email}', Besked = '${besked}'`;
    db.query(query, (err, results) => {
        if (err) {
           next(err);
        } else {
           next(null, results);
        }
     });
   }
}