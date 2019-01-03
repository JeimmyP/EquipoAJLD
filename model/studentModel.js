'use strict';

const sql = require('./conexion.js');

let Student = function(student){
	this.group_id = student.group_id;
	this.phone_id = student.phone_id;
	this.email_id = student.email_id;
	this.address_id = student.address_id;
	this.name = student.name;
	this.status = student.status;	
	this.created_at = new Date();
	this.modified_at = new Date();
};

Student.createStudent = function(newStudent,result){
	let query = 'INSERT INTO student SET ?';
	sql.query(query,newStudent,function(err,res){
		if(err){
			console.log("Error:", err);
			result(err,null);
		}else{
			console.log(res.insertId);
			result(null,res.insertId);
		}
	});
};

Student.getAllStudents = function(result){
	let query = 'SELECT * FROM student;';
	sql.query(query,function(err,res){
		if(err){
			console.log("Error:", err);
			result(err,null);
		}else{
			result(null,res);
		}
	});
};


Student.getStudentById = function(sudentId,result){
	let query = 'SELECT * FROM student WHERE student_id = ?';
	sql.query(query,sudentId,function(err,res){
		if(err){
			console.log("Error:", err);
			result(err,null);
		}else{
			result(null,res);
		}
	});
};


Student.updateStudentById = function(sudent_id,group_id,phone_id,email_id,address_id,name,status,result){
	let query = 'UPDATE student SET group_id = ?, group_id = ?, phone_id = ?, email_id = ?, address_id = ?, name = ?, status = ? WHERE student_id = ?';
	sql.query(query,[group_id,phone_id,email_id,address_id,name,status,sudent_id],function(err,res){
		if(err){
			console.log("Error:", err);
			result(err,null);
		}else{
			result(null,res);
		}
	});
};

Student.removeStudentById = function(sudent_id,result){
	let query = 'DELETE FROM student WHERE student_id = ?';
	sql.query(query,sudent_id,function(err,res){
		if(err){
			console.log("Error:", err);
			result(err,null);
		}else{
			result(null,res);
		}
	});
}

module.exports = Student;