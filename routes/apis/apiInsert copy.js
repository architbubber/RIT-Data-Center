var express = require('express');
var router = express.Router();
var mysql = require('./mySqlCalls');

router.post('/:tableName', function(req, res, next){
    // //here authority is the id of the person making the edit. This way we can figure out whether the right person
    // //is updating the database or not.
    // callback = function(result){
    //     res.setHeader('Content-Type', 'text/plain');
    //     res.send(result).end();;
    //     //res.send(sqlAPI.fetchResults(req.params.columnName, req.params.tableName));
    // }
    // console.log(req.body);
    // sqlAPI.updateResults(JSON.stringify(req.body), req.params.tableName, req.params.authority, callback);
    //var str="Apis need to integrated";
    var upd=[];
    var tableKey=[];
    // console.log("request body in apiInsert : " + JSON.stringify(req.body));
    for(var t in req.body){
        var newData = "";
        for(var j = 0; j< req.body[t].length; j++){
            if(req.body[t][j] != '"'){
                newData += req.body[t][j];
            }
        }
        if(t!="slNo" && t!="facultyId" && t!="url" && t!="getParam" && t != "departmentId"){
            upd.push("\""+newData+"\"");
            tableKey.push(t);
        }else if(t==="facultyId" || t==="departmentId"){
            // console.log("req.session.facultyId = " + req.session.facultyId);
            if(req.session.facultyId === 'admin'){
                if(req.body.url.indexOf('institution') != -1){
                    //if the institution page is accessed from admin level, dont include facultyId
                    continue;
                }
                else if(req.body.url.indexOf('department') != -1){
                    //if the institution page is accessed from admin level, dont include facultyId
                    upd.push("'"+req.body.getParam+"'");
                    tableKey.push("departmentId");
                }

                else if(req.body.url.indexOf('faculty') != -1){
                    //if the faculty page is accessed from admin level, include the facultyId
                    upd.push("'"+req.body.getParam+"'");
                    tableKey.push("facultyId");
                }
            }
            else if(req.session.facultyId === 'hod'){
                //this logic is for hod level
                if(req.body.url.indexOf('department') != -1){
                    //if the institution page is accessed from admin level, dont include facultyId
                    upd.push("'"+req.body.getParam+"'");
                    tableKey.push("departmentId");
                }
                else if(req.body.url.indexOf('faculty') != -1){
                    upd.push("'"+req.body.getParam+"'");
                    tableKey.push("facultyId");
                }
            }
            else {
                //this logic is for faculty level
                upd.push("'"+req.session.facultyId+"'");
                tableKey.push("facultyId");
            }
        }/* else if(t=="getParam" && !req.body.facultyId){
            
            upd.push("'"+req.body[t]+"'");
            tableKey.push("facultyId");
        } */
    }
    var sql = "INSERT INTO "+req.params.tableName+"("+tableKey.join(",")+") VALUES ("+upd.join(",")+")"
    
    // for(var b in req.body){
    //     str=str+"\n"+b;
    // }

    console.log("the query is : " + sql + " getParam" );
    mysql.runRawQuery(sql, function(err, result){
        if(err){
            res.end("Error : "+err.message);
            return;
        }
        if(!req.body.getParam || typeof(req.body.getParam) === "undefined" || req.body.getParam === "undefined"){
            res.redirect(req.body.url);
        }else{
            //if department page is watched set departmentId
            if(req.body.url.indexOf('department') != -1){
                res.redirect(req.body.url + "?departmentId="+req.body.getParam);
            }
            else if(req.body.url.indexOf('faculty') != -1){
                res.redirect(req.body.url + "?fId="+req.body.getParam);
            }
        }
    });

});


module.exports = router;
