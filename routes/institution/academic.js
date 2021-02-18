var express = require('express');
var router = express.Router();
var sqlExecute = require('../apis/mySqlCalls');
var utility = require('../utilities');
var institutionPermissions = require('./institution-permissions');
var generateexcel = require('../../back-end/excelGenerator');
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
	departmentId = "cse";

	var callback = function(err1, err2, data1, data2){
		if(err1)
			throw err1;
		if(err2)
			throw err2;
		//var departmentID = req.session.departmentId;
		//console.log("GetParam : " + req.session.departmentId);
		//console.log("department id : " + departmentID);
		var data = {
			academic_council: data1
		}

		var facultyID = req.session.facultyId;;

		// console.log(JSON.stringify(data));
		// console.log("Here is academics page of institution facultyId " + req.session.facultyID);
		res.render('institution/academic', {title : "Academic Council Details", 
		type:"academic", 
		
		data:data,

        GetParam: req.query.deptId,

		authType:req.session.facultyId,
		updatePermission:institutionPermissions.updatePermission, insertPermission:institutionPermissions.insertPermission,
		index : { 
			url:"/institution/academic",
			academic_council:
			{
				facultyId : "facultyId",
				slNo : "Sl. No", 
				name : "Name",
				category :  "Category",
				address :  "Address",
				status :  "Status",
				instituteName:'Institution Name'
			}
		},
		hiddenFields:{
			academic_council:
			{
					facultyId: {
						view: true,
						insert: true,
						update: true
					}, 
					slNo: {
						view: true,
						insert: true,
						update: true
					}, 
				name: { view: false, insert: false, update: false },
				category :  { view: false, insert: false, update: false },
				address :  { view: false, insert: false, update: false },
				status :  { view: false, insert: false, update: false },
				instituteName:{ view: true, insert: false, update: false }
			}
		},
		additional_data:{
			instituteName:data2
		}	
	});
		
	}
	sqlExecute.getAcademicCouncil(callback);
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

/*router.get('/generateexcel/:tableName',function(req,res,next){
{

}*/


module.exports=router;
