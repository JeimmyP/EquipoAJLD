'use strict';

const School = require('../model/schoolModel.js');

exports.list_all_school = function(req, res){
	School.getAllSchool(function(err, task){
		console.log('controller');
		if(err)
			res.send(err);
			console.log('res', task);
		res.json(task);
	});
};
exports.create_a_school = function(req, res){
	var new_school = new School(req.body);
	if(!new_school.name || !new_school.status){
		res.status(400).send({
			error: true,
			message: 'Please provide task/status'
		});
	}else{
		School.createSchool(new_school, function(err, task){
			if(err)
				res.send(err);
				res.json(task);
		});
	// 	res.send('ya');
	}
	// res.json(new_school);
};
/*exports.read_a_school = function(req, res){
	School.getSchoolById(req.params.schoolId, function(err, task){
		if(err)
			res.send(err);
		res.json(task);
	});
};
exports.update_a_school = function(req, res){
	School.updateById(req.params.schoolId, new School(req.body), function(err, task){
		if(err)
			res.send(err);
		res.json(task);
	});
};
exports.delete_a_school = function(req,res){
	School.remove(req.params.schoolId, function(err, task){
		if(err)
			res.send(err);
		res.json("School successfully deleted");
	});
};*/