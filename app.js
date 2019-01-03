const express = require('express');
const path = require('path');
const cookieParser = require('cookie-parser');
const logger = require('morgan');

const indexRouter = require('./routes/index');
const usersRouter = require('./routes/users');
const schoolRouter = require('./routes/schoolRoutes');
const groupRouter = require('./routes/groupRoutes');
const studentRouter = require('./routes/studentRoutes');
const teacherRouter = require('./routes/teacherRoutes');


const app = express();

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/school', schoolRouter);
app.use('/group', groupRouter);
app.use('/student', studentRouter);
app.use('/users', usersRouter);
app.use('/teacher', teacherRouter);


module.exports = app;
