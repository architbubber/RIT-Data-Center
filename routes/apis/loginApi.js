var express = require('express');
var router = express.Router();
var mysql = require("./mySqlCalls");
var qs=require("querystring");

router.post('/', function(req, res, next) {
    // console.log("It reached here");
    var email = req.body.email;
    var pass = req.body.pass;

    var callback = function(err, result){
        if(err){
            console.log(err.message);
            res.redirect("/login?error="+qs.escape(err.message));
            //res.render('login', { title: 'Express', type:"loginError", message:"Something went wrong." });
        }
        if(result.length==0){
            // console.log("Cannot find user");
            res.redirect("/login?error="+qs.escape("Please check your username and password"));
            // res.render('login', { title: 'Express', type:"loginError", message:"Please check your username and password" });
        }else{
            var myDet=result[0];
            if(myDet["type"]){
                // console.log(myDet["type"]);
                // console.log("Session ID : "+myDet["emailId"]);
                req.session.email=myDet["emailId"];
                req.session.facultyId = myDet["type"];
                req.session.departmentId = myDet["departmentId"];
                // console.log("the facultyid is " + req.session.facultyId);
            if(req.session.facultyId === 'principle'){
                req.session.facultyId = 'principal';
            }
            // console.log("the facultyid is " + req.session.facultyId);
                if(myDet["departmentId"] == "college"){
                    res.redirect("/admin/");
                } else{
                    res.redirect("/department?departmentId=" + myDet["departmentId"]);
                }
            } else{
            //TODO Perform Search on my details and find of it is in which category
            // console.log("Session ID : "+myDet["emailId"]);
            req.session.email=myDet["emailId"];
            req.session.departmentId = myDet["departmentId"];
            req.session.facultyId=myDet["facultyId"];
            // console.log("the facultyid is " + req.session.facultyId);
            if(req.session.facultyId === 'principle'){
                req.session.facultyId = 'principal';
            }
            // console.log("the facultyid is " + req.session.facultyId);
            res.redirect("/faculty");
            }
            
        }
    }
    mysql.login(email, pass, callback);
});

module.exports = router;