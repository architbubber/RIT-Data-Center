var express = require('express');
var router = express.Router();
var extractExcel = require('../back-end/excelExtract');
var sqlAPI = require('../back-end/sqlAPI');
var sqlExecute = require('./apis/mySqlCalls');
var app=require('../app.js');

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

router.get('/excelExtract', function(req,res,next){
  var path = './back-end/excelSheets/service.xlsx';
  var table = 'service';
  extractExcel(path, table);
  res.render('index2');
});


module.exports = router;

