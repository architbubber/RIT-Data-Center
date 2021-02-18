var excel = require('xlsx')
var excelReader = module.exports = {};
excelReader.readExcel = function (filePath)
{
  var workbook = excel.readFile(filePath);
  var sheet_name_list = workbook.SheetNames;
  console.log("columns are " + sheet_name_list[0]);
  var xlData = excel.utils.sheet_to_json(workbook.Sheets[sheet_name_list[0]]);
  return xlData;
}
