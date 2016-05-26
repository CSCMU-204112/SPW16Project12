const express = require('express');
const morgan = require('morgan');
const bodyParser = require('body-parser');
var cons = require('consolidate');
var port = 2000;
var app = express();

app.use(morgan('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
    extended: true
}));


app.engine('html', cons.swig);
app.set('views','./app/views');
app.set('view engine', 'html');

app.use(express.static('./public'));

require('./app/routes')(app);

app.listen(port,function(){
    console.log('Server runner at port ' + port);
});
