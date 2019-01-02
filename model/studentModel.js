'use strict';

const sql = require('./db.js');

let Student = function(student){
	this.group_id = student.group_id;
	this.phone_id = student.phone_id;
	this.email_id = student.email_id;
	this.address_id = student.address_id;
	this.name = student.name;
	this.statues = task.statues;
	this.created_at = new Date();
	this.modified_at = new Date();
};

Student.createStudent = function createStudent(newStudent,result){
	let query = 'INSERT INTO `student` set ?';
	sql.query(query, newStudent, function(err,res){
		if(err){
			console.log("Error: ", err);
			result(err, null);
		}else{
			console.log(res.insertId);
			result(null, res.insertId);
		}
	});
};

Student.getStudentById = function getStudentById(student_id,result){
	let query = "SELECT `name` FROM `student` WHERE `student_id` = ?";
	sql.query(query, taskId, function(err, res){
		if(err){
			console.log("Error: ", err);
			result(err, null);
		}else{
			result(null, res);
		}
	});
};


Task.getAllStudent = function getAllStudent(result){
	let query = "SELECT * FROM student;";
	sql.query(query, function(err, res){
		if(err){
			console.log("Error: ", err);
			result(err, null);
		}else{
			result(null, res);
		}
	});
};

Task.updateStudentById = function(studentId, name, result){
	let query = "UPDATE student SET name = ? WHERE student_id = ?";
	sql.query(query, [name, studentId], function(err, res){
		if(err){
			console.log("Error: ", err);
			result(err, null);
		}else{
			result(null, res);
		}
	});
};

module.exports = Student;