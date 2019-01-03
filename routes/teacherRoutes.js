const express = require('express');
const router = express.Router();

const teacherController = require('../controller/teacherController');

router.get('/', teacherController.listAllTeacher);
router.post('/create', teacherController.createTeacher);



module.exports = router;