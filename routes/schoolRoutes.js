var express = require('express');
var router = express.Router();

const schoolController = require('../controller/schoolController');

/* GET home page. */
router.get('/listSchools', schoolController.list_all_school);

module.exports = router;

/*module.exports = function(app) {
	const info = require('../controller/schoolController');

	//Routes
	app.route('/list')
	.get(info.list_all_school)
	.post(info.create_a_school);

	app.route('/school/:schoolId')
	.get(info.read_a_school)
	.put(info.update_a_school)
	.delete(info.delete_a_school);
};*/