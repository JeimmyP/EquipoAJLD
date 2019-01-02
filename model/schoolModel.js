'use strict';

var sql = require('./db.js');

var School = function(school){
	this.school = school.school;
	this.statues = school.statues;
	this.created_at = new Date();
}

School.createSchool = function createUser(newSchool, result){
	var query = "INSERT INTO school set ?,?,?,?,?,?,?";
	sql.query(query, newSchool, function(err, rest){
		if(err){
			console.log("Error: ", err);
			result(err, null);
		}else{
			console.log(res.insertId);
			result(null, res.insertId);
		}
	});
};

School.getSchoolById = function createUser(schoolId, result){
	var query = "SELECT name FROM school WHERE school_id = ?";
	sql.query(query, schoolId, function(err, res){
		if(err){
			console.log("Error: ", err);
			result(err, null);
		}else{
			result(null, res);
		}
	});
};

School.getAllSchool = function getAllSchool(result){
	var query = "SELECT * FROM school;";
	sql.query(query, function(err, res){
		if(err){
			console.log("Error: ", err);
			result(err, null);
		}else{
			result(null, res);
		}
	});
};

School.updateById = function(id, school, result){
	var query = "UPDATE school SET name = ? WHERE school_id = ?";
	sql.query(query, [school.school, id], function(err, res){
		if(err){
			console.log("Error: ", err);
			result(err, null);
		}else{
			result(null, res);
		}
	});
};

School.remove = function(id,result){
	var query = "DELETE FROM school WHERE school_id = ?";
	sql.query(query, [id], function(err, res){
		if(err){
			console.log("Error: ", err);
			result(err, null);
		}else{
			result(null, res);
		}
	});
};

module.exports = School;