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
		if(req.session.facultyId != "admin" && req.session.facultyId != "principal"){
			auth = false;
		}
		facultyId = req.query.fId;
  }
  if(facultyId !== 'admin' && facultyId !== 'principal'){
		res.redirect("/error/401");
		return;
	}
  var callBack = function(result0, result1, result2, result3){

    var res1 = []

    for(var i=2;i<result1.length; i++){
      console.log(result1[i]);
      res1.push(result1[i]);
    }
    res1.push(result1[0]);

    // console.log("result of tables ::");
    // console.log(res1);
    res.render('admin/admin-reports', {type : 'admin-reports', selectList0 : result0, selectList1 : res1, selectList2 : result2, GetParam: req.query.fId, authType:req.session.facultyId, departmentId:req.session.departmentId, GetParam:"dummy" });
  }
  sqlExecute.getTwoSelectList(callBack,'facultyName', 'faculty', 'none');

});


module.exports=router;
