var excelReader = require('./excelReader');
var excelGenerator = require('./excelGenerator');
var dataCleaner = module.exports = {};

dataCleaner.cleanExcelData = function(filePath)
{
  var excelData = excelReader.readExcel(filePath);
  var columnsAttributes = Object.keys(excelData[0]);
  excelData = dataCleaner.removeSpecialCharacters(excelData, columnsAttributes);
  excelData = dataCleaner.dataToLowerCase(excelData, columnsAttributes);
  excelGenerator.getExcelSheet(excelData, 'hiiFiltered.xls', false);
  console.log(excelData);

}

dataCleaner.removeSpecialCharacters = function(excelData, columnsAttributes)
{
  var dataEntry = "";

  for(var i = 0; i < excelData.length; i++)
  {
    for(var j = 0; j < columnsAttributes.length; j++)
    {
      var dataEntry = eval("excelData[i]." + columnsAttributes[j]);
      eval("excelData[i]." + columnsAttributes[j] + " = '" + dataCleaner.specialCharacterFilter(dataEntry) + "'");
    }
  }

  return excelData;
}

dataCleaner.dataToLowerCase = function(excelData, columnsAttributes)
{
  var dataEntry = "";

  for(var i = 0; i < excelData.length; i++)
  {
    for(var j = 0; j < columnsAttributes.length; j++)
    {
      var dataEntry = eval("excelData[i]."+columnsAttributes[j]);
      eval("excelData[i]." + columnsAttributes[j] + " = '" + dataEntry.toLowerCase() + "'");
      //console.log( dataEntry.toLowerCase() );
    }
  }

  return excelData;
}


dataCleaner.specialCharacterFilter = function(dataEntry)
{

   var filteredString = dataEntry.replace(/[\r\n]/g, '');
   return filteredString;
}

//dataCleaner.cleanExcelData('excelSheets/hii.xls');
