var dataCtrl = require('./controllers/data.controllers');
var login = false;
var user = '';

module.exports = function(app){
    app.get('/', dataCtrl.index);
    app.get('/acer', dataCtrl.acer);
    app.get('/apple', dataCtrl.apple);
    app.get('/asus', dataCtrl.asus);
    app.get('/dell', dataCtrl.dell);
    app.get('/lenovo', dataCtrl.lenovo);
    app.get('/hp', dataCtrl.hp);
    app.get('/microsoft', dataCtrl.microsoft);
    app.get('/samsung', dataCtrl.samsung);
    app.get('/sony', dataCtrl.sony);
    app.get('/toshiba', dataCtrl.toshiba);

    app.post('/login', dataCtrl.login);

    app.route('/register')
          .get(dataCtrl.regis)
          .post(dataCtrl.regis_insert);
          //.post(dataCtrl.showDataBeforeSend);
        
}