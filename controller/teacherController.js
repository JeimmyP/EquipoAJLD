'use strict';

const Teacher = require('../model/teacherModel.js');

exports.listAllTeacher = function(req, res){
	Teacher.getALLTeacher(function(err, teacher){
		console.log('controller');
		if(err){
			res.send(err);
			console.log('res', teacher);
		}
		res.send(teacher);
	});
};

exports.createTeacher = function(req, res){
	let newTeacher = new Teacher(req.body);
	if(!newTeacher.group_id || !newTeacher.phone_id || !newTeacher.name || !newTeacher.status){
		res.status(400).send({
			error: true,
			message: 'Todos los datos son obligatorios alv.'
		});
	}else{
		Teacher.createTeacher(newTeacher, function(err, teacher){
			if(err)
				res.send(err);
			res.json(teacher);
		});
	}
	// res.json(newTeacher);
};

exports.readTeacher = function(req, res){
	Teacher.getTeacherById(req.params.teacherId, function(err, teacher){
		if(err)
			res.send(err);
		res.json(teacher);
	});
};

exports.updateTeacher = function(req, res){
	Teacher.updateById(req.params.teacherId, new Teacher(req.body), function(err, teacher){
		if(err)
			res.send(err);
		res.json(teacher);
	});
};

exports.deleteTeacher = function(req, res){
	Teacher.remove(req.params.teacherId, function(err, teacher){
		if(err)
			res.send(err);
		res.json("Tarea borrada correctamente.");
	});
};