'use strict';
module.exports = function(app) {
	var info = require('../controller/schoolController');

	//Routes
	app.route('/school')
	.get(info.list_all_school)
	.post(info.create_a_school);

	app.route('/school/:schoolId')
	.get(info.read_a_school)
	.put(info.update_a_school)
	.delete(info.delete_a_school);
};