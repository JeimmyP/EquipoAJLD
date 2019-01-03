'use strict';

const Teacher = require('../controller/teacherControler.js');

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

exports.createTeacher = function(err, res){
	let newtTeacher = new Teacher(req.body);
	if(!newTeacher.phone_id || !newTeacher.email_id || !newTeacher.name || !newTeacher.status){
		res.status(400).send({
			error; true,
			message: 'Todos los datos son obligatorios alv.'
		});
	}else{
		Teacher.createTeacher(new_teacher, function(err, teacher){
			if(err)
				res.send(err);
				res.json(teacher);
		});
	}
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
		res.json(Tarea borrada correctamente.);
	});
};