var express = require('express');
var sqlAPI = require('../../back-end/sqlAPI');
var sqlExecute = require('./mySqlCalls');
var router = express.Router();

router.post('/:authority/:tableName/', function(req, res, next){
    //here authority is the id of the person making the edit. This way we can figure out whether the right person
    //is updating the database or not.
    callback = function(result){
        res.setHeader('Content-Type', 'text/plain');
        res.send(result).end();;
        //res.send(sqlAPI.fetchResults(req.params.columnName, req.params.tableName));
    }
    // console.log(req.body);
    sqlAPI.updateResults(JSON.stringify(req.body), req.params.tableName, req.params.authority, callback);
});

module.exports = router;