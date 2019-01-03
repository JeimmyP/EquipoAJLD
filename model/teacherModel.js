'use strict';

const sql = require('./conexion.js');

let Teacher = function(teacher){
	this.group_id = teacher.group_id;
	this.phone_id = teacher.phone_id;
	this.name = teacher.name;
	this.status = teacher.status;
	this.created_at = new Date();
	this.modified_at = new Date();
};

Teacher.createTeacher = function(newTeacher, result){
	let query ="INSERT INTO teacher set ?";
	sql.query(query, newTeacher, function(err, res){
		if(err){
			console.log("Error: ", err);
			result(err, null);
		}else{
			console.log(res.insertId);
			result(null, res.insertId);
		}
	});
};

Teacher.getTeacherById =function(teacherId, result){
	let query = "SELECT teacher FROM teachers WHERE teacher_id = ?";
	sql.query(query, teacher_id, function (err, res){
		if(err){
			console.log("Error: ", err);
			result(err, null);
		}else{
			result(null, res);
		}
	});
};

Teacher.getALLTeacher = function(result){
	let query = "SELECT * FROM teacher;";
	sql.query(query, function(err, res){
		if(err){
			console.log("Error: ", err);
			result(err, null);
		}else{
			result(null, res);
		}
	});
};

Teacher.updateById = function(result, teacher_id, phone_id, email_id, name, status){
	let query ="UPDATE teacher SET phone_id = ?, email_id = ?, name = ?, status = ? WHERE teacher_id = ?";
	sql.query(query, [phone_id, email_id, name, status, teacher_id], function(err, res){
		if(err){
			console.log("Error: ", err);
			result(err, null);
		}else{
			result(null, res);
		}
	});
};

Teacher.remove = function(id, result){
	let query ="DELETE FROM teacher WHERE teacher_id = ?";
	sql.query(query, [teacher_id], function(err, res){
		if(err){
			console.log("Error: ", err);
			result(err, null);
		}else{
			result(null, res);
		}
	});
};

module.exports = Teacher;