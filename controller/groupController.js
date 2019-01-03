'use strict';

const Group = require('../model/groupModel.js');

exports.list_alls_groups = function(req, res){
	Group.getAllGroups(function (err, group){
		console.log('controller');
		if(err)
			res.send(err);
			console.log('res', group);
		res.send(group);
	});
};

exports.create_a_group = function(req, res){
	let new_group = new Group(req.body);
	if(!new_group.school_id || !new_group.group_name || !new_group.status){
		res.status(400).send({
			error:true,
			message:'Please provide SchoolID, GroupName, GroupStatus'
		});
	}else{
		Group.createGroup(new_group, function(err, group){
			if(err)
				res.send(err);
				res.json(group);
		});
	}
};

exports.read_a_group = function(req, res){
	Group.getGroupById(req.params.group_id, function(err, group){
		if(err)
			res.send(err);
		res.json(group);
	});

};

exports.update_a_group =function(req, res){
	Group.updateById(req.params.group_id, new Group(req.body), function(err, group){
		if(err)
			res.send(err);
		res.json(group);
	});
}

exports.delete_a_group = function(req,res){
	Group.remove(req.params.group_id, function(err, group){
		if(err)
			res.send(err);
		res.json("Group successfully deleted");
	});
};