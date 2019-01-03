'use strict';

const sql = require('./conexion.js');

let Group = function(group) {
	// body...
	this.school_id=group.school_id;
	this.group_name=group.group_name;
	this.status=group.status;
	this.created_at= new Date();
	this.modified_at= new Date();
}

Group.createGroup = function createGroup(newGroup, result){
	let query = "INSERT INTO group set ?";
	sql.query(query, newGroup, function(err, rest){
		if(err){
			console.log("ERROR: ",err);
			result(err, null);
		}else{
			console.log(res.insertId);
			result(null, res.insertId);
		}
	});
};

Group.getGroupById = function getGroupById(group_id, result){
	let query= "SELECT school_id, group_name, status FROM group WHERE group_id = ?";
	sql.query(query, group_id, function(err, rest){
		if(err){
			console.log("ERROR: ", err);
			result(err, null);
		}else{
			console.log(null, res);
		}
	});
};

Group.updateById = function(group_id, group_name, result){
	let query="UPDATE group SET group_name = ? WHERE group_id = ?";
	sql.query(query, [group_name, group_id], function(err, res){
		if(err){
			console.log("ERROR: ", err);
			result(err, null);
		}else{
			result(null, res);
		}
	});
};

Group.getAllGroups = function getAllGroups(result){
	let query="SELECT * FROM `group`;";
	sql.query(query, function(err, res){
		if(err){
			console.log("ERROR: ", err);
			result(err, null);
		}else{
			result(null, res);
		}
	});
};

Group.remove = function(group_id, result){
	let query="DELETE FROM group WHERE group_id = ?";
	sql.query(query, group_id, function(err, res){
		if(err){
			console.log("ERROR: ", err);
			result(err, null);
		}else{
			result(null, res);
		}
	});
};

module.exports =Group;