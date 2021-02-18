var app = require('express')();

var fileHandler = module.exports = {};

fileHandler.downloadExcel = function(response, fileName)
{
      response.download(__dirname + '/excelSheets/' + fileName, fileName);
      console.log("File Downloaded.");

}
