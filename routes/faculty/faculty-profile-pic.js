var express = require('express');
var router = express.Router();
var sqlExecute = require('../apis/mySqlCalls');
var utility = require('../utilities');
var multer = require('multer')
var path = require('path')


var storage = multer.diskStorage({
	destination: function(req, file, callback) {
		// console.log("hello, i am heere");
		callback(null, './public/assets/img/faces')
	},
	filename: function(req, file, callback) {
		// console.log("hello bor");
		// console.log(file)
		callback(null, req.session.facultyId + ".jpg")
	}
})

var upload = multer({
	storage: storage
})

router.post('/',upload.single('avatar') ,function(req, res, next) {
	// console.log(req.file);
	// console.log(req.body);
	res.redirect('/faculty')
});


module.exports=router;