var express = require('express');
var router = express.Router();
var mySqlCalls = require('../apis/mySqlCalls');
var sqlApi = require('../../back-end/sqlAPI');
var generateexcel = require('../../back-end/excelGenerator');
var utility = require('../utilities');
var preProcessor = require('../apis/dataPreprocessor');


/* GET home page. */
router.get('/', function(req, res, next) {
	if(!utility.checkSesssion(req, res))
		return;

	var facultyId;
	var auth = true;

	if(!utility.checkGetParam(req,res)){
		facultyId = req.session.facultyId;
	}
	else{
		if(req.session.facultyId != "admin" && req.session.facultyId != "principal"){
			auth = false;
		}
		facultyId = req.query.fId;
	}

	// console.log("The facultyId is " + facultyId);
	if(facultyId !== 'admin' && facultyId !== 'principal'){
		res.redirect("/error/401");
		return;
	}
function callback(err,results){
  var facultyId = req.session.facultyId;
  // console.log("you just sent " + facultyId);
  res.render('admin/index', { title: 'Express', type:"index", data:results, authType:facultyId, departmentId:req.session.departmentId, GetParam:"dummy"  });
}
mySqlCalls.getDepartmentInfo(callback);
});

router.get('/login', function(req, res, next) {
  res.render('admin/login', { title: 'Express', type:"login", GetParam:"dummy" });
});

router.get('/getExcel', function(req, res, next){
	res.setHeader('Content-Type', 'application/json');

	utility.checkSesssion(req, res);
	  // console.log('here');
	    var query = req.cookies['query'];
			// console.log("Here is my query:" + query);

	    var callBack = function(result)
			{
	        generateexcel.getExcelSheet(preProcessor.removeHiddenFields(result), "Report.xls", res);
	    }
	    console.log(Array(req.body.whereOption));
	    mySqlCalls.executeDirectQuery(query, callBack);

	    //mySqlCalls.getJointFacultyInfo(callBack, req.params.tableName);*/

});
router.get('/getSummary/:tableName/:from/:to/:departmentId/:type', function(req, res, next){
	res.setHeader('Content-Type', 'application/json');
	utility.checkSesssion(req, res);
  // console.log('here');
  // console.log("years"+ req.params.from+" "+req.params.to);
  var tableName = req.params.tableName;


    var callBack = function(result)
		{
        generateexcel.getExcelSheet(result, "Report.xls", res);
    }
    mySqlCalls.executeSummaryQuery(tableName, req.params.from, req.params.to,req.params.departmentId, req.params.type, callBack);

	    //sqlExecute.getJointFacultyInfo(callBack, req.params.tableName);*/

});

//++++++++++++++++++++++++++++++++++++++++++++++++++++++
router.get('/getGraph/:tableName/:from/:to/:departmentId/:type', function(req, res, next){
	//res.setHeader('Content-Type', 'application/json');
	utility.checkSesssion(req, res);
  // console.log('here');
  // console.log("years"+ req.params.from+" "+req.params.to);
  var tableName = req.params.tableName;
    var callBack = function(result)
		{
				res.json(result);
    }
    mySqlCalls.executeGraphQuery(tableName, req.params.from, req.params.to,req.params.departmentId, req.params.type, callBack);

	    //sqlExecute.getJointFacultyInfo(callBack, req.params.tableName);*/

});
//---------------------------------------------------------





router.use('/admin-reports', require('./admin-reports'));

router.use('/add-faculty', require('./add-faculty'))

router.get('/generateexcel/:tableNo/:index/',function(req,res,next){
  if(!utility.checkSesssion(req, res)) return;
//   console.log("this is " + req.params.facultyTable);
  var map=[""];
  var index = req.params.index;
  var tableno = parseInt(req.params.tableNo)-1;

	var callback=function(err, result){
		if(index == 1){
			generateexcel.getExcelSheet(result,map[tableno] + ".xls",res);
		} else{
			generateexcel.getExcelSheet(result[map[tableno]],map[tableno]+ ".xls",res);
		}
		if(err || result.length==0){
			// console.log("It reached in error");
			//throw err;
		}
	}
  if(index == 1){
		mySqlCalls.getDepartmentInfo(callback);
		map[0]="department";
  }
});

module.exports = router;
