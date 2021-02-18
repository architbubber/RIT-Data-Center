var express = require('express');
var router = express.Router();
var sqlExecute = require('../apis/mySqlCalls');
var utility = require('../utilities');

router.get('/', function(req, res, next) {
	if(!utility.checkSesssion(req, res))
	return;

	var facultyId;
	var departmentId;
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


	if(req.query.departmentId){
	departmentId = req.query.departmentId;
	} else{
	departmentId = req.session.departmentId;
	}
	if(facultyId !== 'admin' && facultyId !== 'principal' && facultyId != 'hod' && facultyId != 'coordinator'){
		res.redirect("/error/401");
		return;
  	}
	// console.log("department-index facultyId " + facultyId + " departmentId " + departmentId);
	else if(facultyId === 'admin' || facultyId === 'principal'){
	//if it is an admin or the principal allow access.
	}
	else {
	//if it is a faculty or hod or coordinator they have only department level access.
	if(facultyId === 'hod' || facultyId === 'coordinator'){
	//this is hod or coordinator level logic.
	var mEmail = req.session.email;
	mEmail = mEmail.split("@")[0];
	if(mEmail.indexOf(departmentId) == -1){
		res.redirect("/error/401");
		return;
	}
	}
	else {
	//this is faculty level logic.
	if(facultyId.indexOf(departmentId) == -1){
		res.redirect("/error/401");
		return;
	}
	}
	}
	var branchs = []
	branchs.push(departmentId)
	res.render('department/add-faculty', {type : 'add-faculty', GetParam: req.query.fId, authType:req.session.facultyId, departmentId:departmentId, GetParam:"dummy", branch:branchs });
})

module.exports=router;
