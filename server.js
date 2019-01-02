var express = require('express');
var app = express();
var bodyParser = require('body-parser');

port = process.env.POST || 3000;

app.listen(port);

app.use(bodyParser.urlencoded({ extended: true}));
app.use(bodyParser.json());

var routes = require('./routes/appRoutes');
routes(app);

console.log('todo list RESTful API Port: ' + port);