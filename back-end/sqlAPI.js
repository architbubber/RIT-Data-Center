//Import Modules
var mysql = require('mysql');
var dbConnection = require('../routes/apis/mySqlCalls');
var mappingUrl = require('./mappingUrlTable');

//Establish connection
var con = dbConnection.connection;

var sqlQueryHandler = module.exports = {};
var sqlResults={};
sqlQueryHandler.query = "";

sqlQueryHandler.fetchResults = function(columns, url, whereOptions, callBack)
{
  //whereOptions is an array of strings
  try
  {
    sqlQueryHandler.query = "SELECT " + columns + " FROM " + url + " WHERE 1=1";
    //console.log("whereOptions" + whereOptions);
    for(var i = 0; i < whereOptions.length; i++)
    {
      sqlQueryHandler.query += " AND " + whereOptions[i];
    }
    console.log("the query is " + sqlQueryHandler.query);
    con.query(sqlQueryHandler.query,
      function (err, result, fields)
      {
          if (err)
            throw err;
            //console.log(result);
          sqlResults = result;
          if(callBack != false)
            callBack(sqlResults);
      }
    );
  }

  catch(err)
  {
    console.log("SQL error for "+ query +"occured : " + err);
  }

}

sqlQueryHandler.updateResults = function(jsonObject, url, authority, callBack)
{
  //this function takes json object from rest api and then formulates a corresponding update query
  //and returns the results;
  //console.log(JSON.parse(jsonObject));
  jsonObject = JSON.parse(jsonObject);
  try
  {
    sqlQueryHandler.query = "UPDATE " + mappingUrl.mappingUrlTable[url] + " SET " + " ";
    var setString = "";
    for(var keys = Object.keys(jsonObject), i = 0, end = keys.length; i < end; i++)
    {
      var key = keys[i];
      var value = jsonObject[key];
      if(i === keys.length - 1){
        sqlQueryHandler.query += setString + " WHERE " + key + " = " + jsonObject[key] + ";";
      }
      else{
        var appendString = '';
        if(i != 0){
          appendString = ', ';
        }
        appendString += key + ' = "' + jsonObject[key] + '"';
        setString += appendString;
      }
      console.log(jsonObject[key]);
    }
    //console.log(setString);
    //console.log(sqlQueryHandler.query);
    con.query(sqlQueryHandler.query,
      function (err, result, fields)
      {
          if (err){
            throw err;
          }
          console.log(result);
          sqlResults = result;
          if(callBack != false){
            callBack(sqlResults);
          }

    }
    );
  }

  catch(err)
  {
    console.log("SQL error for "+ query +"occured : " + e);
  }

}



sqlQueryHandler.insertRow1 = function(columns, tableName, whereOptions, callBack)
{
  try
  {
    sqlQueryHandler.query = "SELECT " + columns + " FROM " + tableName + " WHERE 1=1";
    for(var i = 0; i < whereOptions.length; i++)
    {
      sqlQueryHandler.query += " AND " + whereOptions[i];
    }
    con.query(sqlQueryHandler.query,
      function (err, result, fields)
      {
          if (err)
            throw err;
            //console.log(result);
          sqlResults = result;
          if(callBack != false)
            callBack(sqlResults);
    }
    );
  }

  catch(err)
  {
    console.log("SQL error for "+ query +"occured : " + e);
  }

}

sqlQueryHandler.getDataBaseTables = function(dataBase, callBack)
{

  var query = "SELECT table_name FROM information_schema.tables where table_schema = '" + dataBase + "'";
  console.log(query);
  con.query(query, function (err, result, fields)
  {
    if (err)
      console.log(err);
    callBack(result);
  }
);

}

sqlQueryHandler.getTableAttributesInfo = function(tableName, callBack)
{

    var query = "SELECT column_name as 'columnName', data_type as 'dataType', character_maximum_length as 'maxLength' FROM information_schema.columns WHERE table_name = '"+tableName+"'" ;
    con.query(query, function (err, result, fields)
    {
      if (err)
        throw err;
      callBack(result);
    }
  );
}

sqlQueryHandler.getFormattedDate = function(date)
{
  var modDate = date.split("/");
  modDate = modDate.reverse();
  modDate = modDate.join("-");
  return modDate;
}

function adjustDataTypes(resultSet, values)
{
  for(var i = 0; i < values.length; i++)
  {
    for(var j = 0; j < resultSet.length; j++)
    {

      if(eval(JSON.stringify(resultSet[j].dataType) == JSON.stringify("int")) && parseInt(values[i][j]))
      {
        values[i][j] = parseInt(values[i][j]);
      }

      else if(eval(JSON.stringify(resultSet[j].dataType) == JSON.stringify("date")))
      {
        values[i][j] = sqlQueryHandler.getFormattedDate(values[i][j]);
      }
        console.log("value:"+values[i][j]+" "+i+" "+j);
    }
  }

  return values;

}

sqlQueryHandler.insertRow = function(tableName, values)
{
  var length =values.length;
  var modValues;
  console.log("values are "+values);

  try
  {


    sqlQueryHandler.getTableAttributesInfo(tableName, adjustingCallBack);

    function adjustingCallBack(resultSet)
    {
      console.log("Before: " + JSON.stringify(resultSet));
      modValues = adjustDataTypes(resultSet, values);
      console.log("modified values are:");
      console.log(modValues);
      sqlQueryHandler.query = "INSERT INTO " + tableName + " VALUES ?";
      console.log(sqlQueryHandler.query);
      con.query(sqlQueryHandler.query, [modValues],
        function (err, result)
        {
            if (err)
            {
              console.log("Tables:"+tableName);
              throw err;

            }
      }
      );
    }

  }



  catch(err)
  {
    console.log("SQL error for "+ query +"occured : " + e);
  }

}
