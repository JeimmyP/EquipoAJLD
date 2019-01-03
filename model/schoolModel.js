'use strict';

const sql = require('./conexion.js');

const School = function(school){
	this.address_id = school.address_id;
	this.phone_id = school.phone_id;
	this.email_id = school.email_id;
	this.name = school.name;
	this.status = school.status;
	this.created_at = new Date();
	this.modified_at = new Date();
}

School.createSchool = function createUser(newSchool, result){
	let query = "INSERT INTO school SET ?";
	sql.query(query, newSchool, function(err, res){
		if(err){
			console.log("Error: ", err);
			result(err, null);
		}else{
			console.log(res.insertId);
			result(null, res.insertId);
		}
	});
};

/*School.getSchoolById = function createUser(schoolId, result){
	let query = "SELECT name FROM school WHERE school_id = ?";
	sql.query(query, schoolId, function(err, res){
		if(err){
			console.log("Error: ", err);
			result(err, null);
		}else{
			result(null, res);
		}
	});
};*/

School.getAllSchool = function getAllSchool(result){
	let query = "SELECT * FROM school;";
	sql.query(query, function(err, res){
		if(err){
			console.log("Error: ", err);
			result(err, null);
		}else{
			result(null, res);
		}
	});
};

/*School.updateById = function(id, school, result){
	let query = "UPDATE school SET name = ? WHERE school_id = ?";
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
	let query = "DELETE FROM school WHERE school_id = ?";
	sql.query(query, [id], function(err, res){
		if(err){
			console.log("Error: ", err);
			result(err, null);
		}else{
			result(null, res);
		}
	});
};*/

module.exports = School;