//Importing Modules
var sqlAPI = require('./sqlAPI');
var fs = require('fs');

function getAllTables()
{
  var currentTable = "";
  sqlAPI.getDataBaseTables("rit_data_center", setResultSet);
  function setResultSet(resultSet)
  {
    for(var i = 0; i < resultSet.length; i++)
    {
      currentTable = resultSet[i]['table_name'];
      console.log(resultSet[i]['table_name']);
      sqlAPI.getTableAttributesInfo(resultSet[i]['table_name'], getTableAttributes);
    }

  }
  function getTableAttributes(resultSet, tableName)
  {
    var heading = "";
    for(var i = 0; i < resultSet.length; i++)
    {
      heading += resultSet[i].columnName + "\t";
    }
    fs.writeFileSync(__dirname+ '/uploadExcelTest/' + currentTable + '.xls', heading, (err) => {
      console.log(currentTable + 'excel filesss created');
        if (err)
          console.log(err);
     });
  }
}

getAllTables();
console.log("END");
