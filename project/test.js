var pgp = require('pg-promise')();
var db = pgp("postgres://sui:10321032@localhost:5432/data");

    db.any('select * from user_data where email=$1',['wollraphong@gmail.com'] )
    .then   ( function(data) {
        console.log(data);
        // if (data.password == req.body.login_password) {
        //     confirm('Login!')
        //     login = true,
        //     user = data.firstname +' '+ data.lastname;
        // } else {
        //     confirm('Login!')
        //     login = false;
        // }
    })
    .catch (function(error) {
        console.log(error);
            // confirm('Login!')
            // login = false;
    });
