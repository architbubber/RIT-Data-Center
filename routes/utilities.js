var checkSesssion=function(req, res){
    if(!req.session.email){
        res.redirect("/login");
        return false;
    }
    return true;
}

var checkGetParam = function(req,res){
    if(req.query.fId){
        return true;
    }
    return false;
}

module.exports={
    checkSesssion: checkSesssion,
    checkGetParam: checkGetParam
    }