'use strict';

var mysql = require('mysql');

var connection = mysql.createConnection({
	host: 'localhost',
	user: 'root',
	password: 'Geecko@_@',
	database: 'test',
});

connection.connect(function(err){
	if(err) throw 'hhgew';
});

module.exports = connection;