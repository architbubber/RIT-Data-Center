const testFolder = './uploadExcel/';
const fs = require('fs');
var excelUploader = require('./excelExtract');
var tableCreationOrder = ["conference_paper"];

// delete the flag code
//var latestCommitFlag = 0;
function addChildTables()
{
  fs.readdirSync(testFolder).forEach(file => {
    console.log(file);
    var filePath = "uploadExcel/"+file;
    console.log("path:"+filePath);
    var tableName = file.split(".")[0];
    console.log("table:"+tableName);
//    if(tableName == "journal_paper")
//      latestCommitFlag = 1;

    if(tableCreationOrder.indexOf(tableName) == -1)// && latestCommitFlag == 1)
    {
      try{
      excelUploader.uploadExcel(filePath, tableName);
    }
    catch(err)
    {
      console.log("table not uploaded : " + tableName);
    }
    }

  });
}
//patent

function addParentTables()
{
  for(var i = 0; i < tableCreationOrder.length; i++)
  {
    excelUploader.uploadExcel("uploadExcel/" + tableCreationOrder[i] + ".xlsx", tableCreationOrder[i]);
  }
}

addParentTables();
//addChildTables();
