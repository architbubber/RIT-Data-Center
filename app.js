var express = require('express');
var path = require('path');
var favicon = require('serve-favicon');
var logger = require('morgan');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');
var session = require('express-session');

var app = express();
app.set('trust proxy', 1) // trust first proxy
app.use(session({ secret: 'RIT Data Center 19089905'}))
// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

// uncomment after placing your favicon in /public
//app.use(favicon(path.join(__dirname, 'public', 'favicon.ico')));
app.use(logger('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/', require('./routes/index'));
app.use('/login', require('./routes/login'));
app.use('/forgotPass', require('./routes/forgotPass'));
app.use('/v1/apis', require('./routes/apis/api-index'));
app.use('/faculty', require('./routes/faculty/faculty-index'));
app.use('/admin', require('./routes/admin/admin-index'));
app.use('/department', require('./routes/department/department-index'));
app.use('/institution', require('./routes/institution/institution-index'));

app.get('/error/:type', function(req, res, next){
  if(req.params.type == 401){
    res.render("error401.ejs");
  }
})

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  var err = new Error('Not Found');
  err.status = 404;
  next(err);
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});  
app.listen(3000);
//module.exports=app;
