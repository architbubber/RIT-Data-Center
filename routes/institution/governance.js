var express = require('express');
var router = express.Router();
var sqlExecute = require('../apis/mySqlCalls');
var utility = require('../utilities');
var generateexcel = require('../../back-end/excelGenerator');
var institutionPermissions = require('./institution-permissions');

router.get('/', function(req, res, next) {
	if(!utility.checkSesssion(req, res)) return;

	//var departmentId;
	var auth = true;

	// if(!utility.checkGetParam(req,res)){
	// 	departmentId = req.session.departmentId;
	// }
	// else{
	// 	auth = false;
	// 	departmentId = req.query.fId;
	// }
	// to remove when department session is used
	departmentId = req.session.departmentId;

	var callback = function(err1, err2, data1, data2){
		if(err1)
			throw err1;
		if(err2)
			throw err2;
			//var departmentID = req.session.departmentId;
		//console.log("GetParam : " + req.session.departmentId);
		//console.log("department id : " + departmentID);
		//console.log(JSON.stringify(data));
		var data1 = {
			governing_body: data1
		}
		var authType = req.session.facultyId;
		// console.log("in governance page of institution facultyID " + req.session.facultyId + " " + authType);
		// console.log(JSON.stringify(data2) + "instituteNames");
		var facultyID = req.session.facultyId;;

		res.render('institution/governance', {title : "Governing Body Details", type:"governance", data:data1,
        
        GetParam: req.query.deptId,
		index : { 
			url:"/institution/governance",
			governing_body:
			{
				facultyId : facultyID,
				slNo : "Sl. No", 
				name : "Name",
				category :  "Category",
				address :  "Address",
				status :  "Status",
				instituteName:'Institution Name'
			}
		},
		hiddenFields:{
			governing_body:
			{
				facultyId : { view: true, insert: true, update: true },
				slNo : { view: true, insert: true, update: true }, 
				name :  { view: false, insert: false, update: false },
				category :   { view: false, insert: false, update: false },
				address :   { view: false, insert: false, update: false },
				status :   { view: false, insert: false, update: false },
				instituteName: { view: true, insert: false, update: false }
			}
		},

		authType:authType,
		updatePermission:institutionPermissions.updatePermission, insertPermission:institutionPermissions.insertPermission,
		additional_data:{
			instituteName:data2
		}
		});
	}
	sqlExecute.getGoverningBody(callback);
});

router.get('/generateexcel/:tableName',function(req,res,next)
{
  var callBack = function(result)
  {
      generateexcel.getExcelSheet(result, "Report.xls", res);
  }
//   console.log(Array(req.body.whereOption));
  sqlExecute.executeDirectQuery("select * from " + req.params.tableName, callBack);
});



module.exports=router;
