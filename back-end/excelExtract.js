var express = require('express');
var router = express.Router();
var excelReader = require('./excelReader');
var sqlQueryHandler = require('./sqlAPI');
if(typeof require !== 'undefined') XLSX = require('xlsx');
var excelExtractor = module.exports = {};


excelExtractor.uploadExcel = function(filePath, table)
{
  var jsonExcelData = excelReader.readExcel(filePath);
  var tableArray = [];
  var rowArray = [];
  console.log(jsonExcelData[0]);
  var objectKeys = Object.keys(jsonExcelData[0]);

  for(var i = 0; i < jsonExcelData.length; i++)
  {
    rowArray = [];
    for(var j = 0; j < objectKeys.length; j++)
    {
      var dataEntry = eval("jsonExcelData[i]." + objectKeys[j]);
      rowArray.push(dataEntry);
    }
    tableArray.push(rowArray);
  }
  console.log(tableArray);

  sqlQueryHandler.insertRow(table, tableArray);

}
