var express = require('express');
var router = express.Router();
var sqlExecute = require('../apis/mySqlCalls');
var utility = require('../utilities');


var facultyPermissions = require('./faculty-permissions.js');
router.get('/', function(req, res, next) {
	if(!utility.checkSesssion(req, res)) return;

	var facultyId;
	var auth = true;

	if(!utility.checkGetParam(req,res)){
		facultyId = req.session.facultyId;
	}
	else{
		auth = false;
		facultyId = req.query.fId;
	}

	if(facultyId === 'admin' || facultyId === 'hod' || facultyId === 'coordinator' || facultyId === 'principal'){
		if((typeof req.param("fId") === 'undefined')){
			res.redirect("/error/401");
			return;
		}
	}

	var callback = function(err, result){
		if(err)
			throw err;
		// console.log(result);
		var arr = [];
		var facultyID = req.session.facultyId;
		for(var i in result){
			//console.log(i);
			var temp={
				slNo:result[i]["slNo"],
				facultyId:result[i]["facultyId"],
				designation:result[i]["designation"],
				//qualification:result[i]["qualification"],
				fromDate:result[i]["fromDate"],
				//yearsOfExperience:result[i]["yearsOfExperience"],
				toDate:result[i]["toDate"],
				//payScale:result[i]["payScale"]
			};
			// console.log("Date type " + temp.promotionDate.toJSON().substr(0,10));
			arr.push(temp);
		}
		// reportData[0] = result;
		// res.render('faculty/service-details', {type:"service-details", resultSet:result});
		res.render('faculty/service-details', {title : "Faculty Service Details",
					type : "service-details",
					data : {
						faculty_service:arr
					},
					index : {
						url:"/faculty/service-details",
						faculty_service:
							{
							 slNo: "Sl. No",
							 facultyId : facultyID,
							 designation : "Designation" ,
							 //qualification : "Qualification" ,
							 fromDate : "From" ,
							 //yearsOfExperience : "Years Of Exp." ,
							 toDate : "To" ,
							 //payScale : "Payscale"
							}

					 },
					 hiddenFields:
					 {
						faculty_service:
						{
						 facultyId : { view: true, insert: true, update: true } ,
						 designation: { view: false, insert: false, update: false },
						 //qualification: { view: false, insert: false, update: false },
						 fromDate: { view: false, insert: false, update: false },
						 //yearsOfExperience: { view: false, insert: false, update: false },
						 toDate: { view: false, insert: false, update: false },
						 //payScale: { view: false, insert: false, update: false } ,
						 slNo: { view: true, insert: true, update: true }
						}
					 },
				GetParam: req.query.fId,
				/* tableNames : ["faculty_service"],
				columnSchema:[
					{
						facultyId : facultyID,
						designation : "Designation" ,
						qualification : "Qualification" ,
						joiningDate : "Joining Date" ,
						yearsOfExperience : "Years Of Exp." ,
						promotionDate : "Promotion Date" ,
						payScale : "Payscale"
					}
				], */
				authType:req.session.facultyId,
				departmentId:req.session.departmentId,
				insertPermission:facultyPermissions.insertPermission,
			updatePermission:facultyPermissions.updatePermission
				});

	}
	sqlExecute.getFacultyService(facultyId, callback);
});



module.exports=router;
