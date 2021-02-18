var express = require('express');
var router = express.Router();
var sqlExecute = require('../apis/mySqlCalls');
var utility = require('../utilities');

router.get('/', function(req, res, next) {
  utility.checkSesssion(req, res);
  if(!utility.checkGetParam(req,res)){
		facultyId = req.session.facultyId;
	}
	else{
		facultyId = req.query.fId;
  }
  if(facultyId !== 'admin' && facultyId !== 'principal' && facultyId != 'hod' && facultyId != 'coordinator'){
		res.redirect("/error/401");
		return;
  }

  var callBack = function(result0, result1, result2, result3){
    //departmentId in the render is changed from req.session.departmentId to req.querry.departmentId to fix issue 165
    res.render('department/department-reports', {type : 'department-reports', selectList0 : result0, selectList1 : result1, selectList2 : result2, GetParam: req.query.fId, authType:req.session.facultyId, departmentId:req.query.departmentId, GetParam:req.query.departmentId });
  }

  sqlExecute.getTwoSelectList(callBack,'facultyName', 'faculty', req.query.departmentId);

});




module.exports=router;
