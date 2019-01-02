'use strict';
module.exports = function(app) {
	var todoList = require('../controller/schoolController');

	//Routes
	app.route('/school')
	.get(todoList.list_all_school)
	.post(todoList.create_a_school);

	app.route('/school/:schoolId')
	.get(todoList.read_a_school)
	.put(todoList.update_a_school)
	.delete(todoList.delete_a_school);
};