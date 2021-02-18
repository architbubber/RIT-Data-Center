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


    // console.log("this is from update api the get param" + req.body.getParam);
    var upd=[];
    // console.log("request body in apiUpdate : " + JSON.stringify(req.body));
    for(var t in req.body){
        if(t!="slNo" && t!="facultyId" && t!="url" && t!="getParam")
            upd.push(t+"='"+req.body[t]+"'");
    }
    if(req.body.slNo){
        var sql = "Update "+req.params.tableName+" SET ";   
        sql+=upd.join(" , ");
        sql+=" Where slNo='"+req.body.slNo + "'";
    }else if(req.body.facultyId){
        var sql = "Update "+req.params.tableName+" SET ";   
        sql+=upd.join(" , ");
        sql+=" Where facultyId='"+req.body.facultyId + "'";
    }
    else if(req.body.url.indexOf('department') != -1){
        //department page is accessed.
        if(req.params.tableName === 'admissions'){
            var sql = "Update "+req.params.tableName+" SET ";   
            sql+=upd.join(" , ");
            sql+=" Where year='"+req.body.year + "'";
        }
        else{
            var sql = "Update "+req.params.tableName+" SET ";   
            sql+=upd.join(" , ");
            sql+=" Where departmentId='"+req.body.getParam + "'";
        }
    }
    // for(var b in req.body){
    //     str=str+"\n"+b;
    // }

    console.log("the query is : " + sql);
    mysql.runRawQuery(sql, function(err, result){
        if(err){
            res.end("Error : "+err.message);
            return;
        }
        // console.log(req.body.url)
        if(req.body.getParam){
            //if department page is watched set departmentId
            if(req.body.url.indexOf('department') != -1){
                res.redirect(req.body.url + "?departmentId="+req.body.getParam);
            }
            else if(req.body.url.indexOf('faculty') != -1){
                if(!req.body.getParam || typeof(req.body.getParam) === "undefined" || req.body.getParam === "undefined"){
                    //this means faculty is viewing own page
                    res.redirect(req.body.url);
                }
                else{
                    res.redirect(req.body.url + "?fId="+req.body.getParam);
                }
            }
        }
        else
            res.redirect(req.body.url);
    });

});

module.exports = router;