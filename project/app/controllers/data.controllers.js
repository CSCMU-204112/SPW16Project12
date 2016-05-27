var pgp = require('pg-promise')();
const dbconfig = require('../../config/database');
var db = pgp(dbconfig);

exports.index = function(req,res) {
    res.render('index');
}

exports.acer = function(req, res) {
    res.render('acer');
}

exports.apple= function(req, res) {
    res.render('apple');
}

exports.asus = function(req, res) {
    res.render('asus');
}

exports.dell = function(req, res) {
    res.render('dell');
}

exports.hp = function(req, res) {
    res.render('hp');
}

exports.lenovo = function(req, res) {
    res.render('lenovo');
}

exports.microsoft = function(req, res) {
    res.render('microsoft');
}

exports.samsung = function(req, res) {
    res.render('samsung');
}

exports.sony = function(req, res) {
    res.render('sony');
}

exports.toshiba = function(req, res) {
    res.render('toshiba');
}

exports.regis = function(req, res) {

    db.any('select * from user_data;')
    .then( function(data) {
    // req.body.email
    // req.body.password
    // req.body.firstname
    // req.body.lastname
    // req.body.tel
    // req.body.address

     res.render('register');
    })

    .catch(function(error){
        console.log(error);
    });
}

exports.regis_insert = function(req, res) {
    db.none('insert into user_data(email, password, firstname, lastname, tel, address) values($1, $2, $3, $4, $5, $6)', [req.body.email, req.body.password, req.body.firstname, req.body.lastname, req.body.tel, req.body.address])
        .then(function(data){
        res.redirect('/');
        res.render('index');
    })
        .catch(function(error){
        console.log(error);
    });

}


exports.login = function(req,res) {
    db.any('select * from user_data where email=$1', [req.body.login_email])
    .then   ( function(data) {
        if (data[0].password == req.body.login_password) {
                login = true;
                user = data.firstname +' '+ data.lastname;
        } else {
                login = false;
        }

    })
    .catch (function(error) {
            login = false;
    });
}