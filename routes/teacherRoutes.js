const express = require('express');
const router = express.Router();

const teacherController = require('../controller/teacherController');

router.get('/', teacherController.listAllTeacher);



module.exports = router;