'use strict';

let mysql = require('mysql');

const connection = mysql.createConnection({
	host: 'localhost',
	user: 'root',
	password: 'Geecko@_@',
	database: 'test'
});

connection.connect(function(err){
	if(err) throw 'error';
});

module.exports = connection;