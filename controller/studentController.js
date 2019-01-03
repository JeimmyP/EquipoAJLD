'use strict';

const Student = require('../model/studentModel.js');

exports.createStudent = function(req,res){
	let newStudent = new Student(req.body);
	if(!newStudent.group_id || !newStudent.phone_id || !newStudent.email_id || !newStudent.address_id || !newStudent.name || !newStudent.status){
		res.status(400).send({
			error: true,
			mesage: 'Todos los datos son obligatorios'
		});
	}else{
		Student.createStudent(newStudent, function(err,student){
			if(err){
				res.send(err);
			}else{
				res.json(student);
			}
		});
	}
};

exports.listAllStudents = function(req,res){
	Student.getAllStudents(function(err, student){
		console.log('controller');
		if(err){
			res.send(err);
			console.log('res', student);
		}
		res.json(student);
	});
};

