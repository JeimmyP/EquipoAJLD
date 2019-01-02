'use strict';

var sql = require('./db.js');

var Task = function(task){
	this.task = task.task;
	this.statues = task.statues;
	this.created_at = new Date();
}

Task.createTask = function createUser(newTask, result){
	var query = "INSERT INTO tasks set ?";
	sql.query(query, newTask, function(err, rest){
		if(err){
			console.log("Error: ", err);
			result(err, null);
		}else{
			console.log(res.insertId);
			result(null, res.insertId);
		}
	});
};

Task.getTaskById = function createUser(taskId, result){
	var query = "SELECT task FROM tasks WHERE id = ?";
	sql.query(query, taskId, function(err, res){
		if(err){
			console.log("Error: ", err);
			result(err, null);
		}else{
			result(null, res);
		}
	});
};

Task.getAllTask = function getAllTask(result){
	var query = "SELECT * FROM tasks;";
	sql.query(query, function(err, res){
		if(err){
			console.log("Error: ", err);
			result(err, null);
		}else{
			result(null, res);
		}
	});
};

Task.updateById = function(id, task, result){
	var query = "UPDATE tasks SET task = ? WHERE id = ?";
	sql.query(query, [task.task, id], function(err, res){
		if(err){
			console.log("Error: ", err);
			result(err, null);
		}else{
			result(null, res);
		}
	});
};

Task.remove = function(id,result){
	var query = "DELETE FROM tasks WHERE id = ?";
	sql.query(query, [id], function(err, res){
		if(err){
			console.log("Error: ", err);
			result(err, null);
		}else{
			result(null, res);
		}
	});
};

module.exports = Task;