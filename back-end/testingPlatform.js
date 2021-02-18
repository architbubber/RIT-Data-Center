//Importing Modules
var express = require('express');
var excelTools = require('./excelGenerator');
var sqlAPI = require('./sqlAPI');
var app = express();
var fileHandler = require('./fileManager');
var excelReader = require('./excelReader');

app.post('/', function(request, response)
{

  sqlAPI.fetchResults("*", "facultyInformation", [], syncSQLfunction);
  //This method will always be followed by a synchronous function to perform tasks immediately after getting results
  function syncSQLfunction(resultSet)
  {
    var fileName = "f1";//request.query.fileName;
    console.log("file name is " + fileName);
    var formattedName = fileName + '.xls';
    excelTools.getExcelSheet(resultSet, formattedName, response);
  }
  //response.sendFile("test1.html",  { root :"html/" });
  console.log("END");



});

app.listen(1337, function(){

	console.log('Listening at port 1337');
});
