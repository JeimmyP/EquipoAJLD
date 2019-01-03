const express = require('express');
const router = express.Router();

const studentController = require('../controller/studentController');

/* GET home page. */
router.get('/listStudents', studentController.listAllStudents);

router.post('/',studentController.createStudent);

module.exports = router;
