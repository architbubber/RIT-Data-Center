var express = require('express');
var excelGenerator = require('../../back-end/excelGenerator.js');
var sqlAPI = require('../../back-end/sqlAPI');
var sqlExecute = require('./mySqlCalls');
var preProcessor = require('./dataPreprocessor');

var router = express.Router();

router.post('/:tableName/:callBackType', function(req, res, next){
    callBack = function(result){
          res.send(preProcessor.removeHiddenFields(result));
    }
    // console.log(Array(req.body.whereOption));
    sqlExecute.fetchResults(req.body.schema, req.params.tableName, req.body.whereOption, req.params.callBackType, req.session.facultyId, req.session.departmentId, req.body.indexer, callBack);

    //sqlExecute.getJointFacultyInfo(callBack, req.params.tableName);

});



router.get('/:tableName/', function(req, res, next){
    var callback = function(err, result){
      if(err)
        throw err;
      // console.log(result);
      res.setHeader('Content-Type', 'application/json');
      res.send(result);
    }
    sqlExecute.getWholeTable(callback, req.params.tableName);
});


module.exports = router;
