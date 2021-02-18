var express = require('express');
var router = express.Router();
var mysql = require('./mySqlCalls');
var mailer = require("./mailer");

router.post('/', function(req, res, next){
    var facultyId = req.body.department;
    // console.log("coming here")
    // console.log(req.body);
    var sqlQuery = "SELECT COUNT(*) as noOfFaculty FROM faculty WHERE departmentId = \"" + req.body.department + "\"";
    // console.log(sqlQuery)
    mysql.runRawQuery(sqlQuery, function(err, result){
        if(err){
            res.end("Error : "+err.message);
            return;
        } else{
            var count = result[0].noOfFaculty + 1;
            if(count.toString().length == 1){
                // console.log("small")
                count = 0 + count.toString();
            }
            facultyId  = facultyId + count;
            var passChar = "abcdefghijklmnopqrstuvwxyz0123456789";
            var password = "";
            for(var i=0;i<6;i++) password += passChar.charAt(Math.floor(Math.random()*passChar.length));
            sqlQuery = "INSERT INTO faculty VALUES (\"" + facultyId+"\",\""+req.body.name+"\",\""+req.body.gender+"\",\""+"null"+"\",\""+"null"+"\",\""
            +"null"+"\",\""+"null"+"\",\""+"null"+"\",\""+req.body.natureOfAppointment+"\",\""+req.body.contactNumber+"\",\""+req.body.email+"\",\""+password+"\",\""
            +"null"+"\",\""+"null"+"\",\""+"null"+"\",\""+"null"+"\",\""+req.body.designation+"\",\""+"null"+"\",\""+"null"+"\",\""+"null"+"\",\""+"null"+"\",\""
            +"null"+"\",\""+"null"+"\",\""+"null"+"\",\""+"null"+"\",\""+req.body.department+"\")"            
            mysql.runRawQuery(sqlQuery, function(err, result){
                if(err){
                    res.end("Error : "+err.message);
                    return;
                } else{
                    mailer.sendMail(req.body.email, password);
                    res.redirect('back')
                }
            })
        }
        //console.log(result)
    })
});

module.exports = router;