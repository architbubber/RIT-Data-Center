var express = require('express');
var router = express.Router();

router.get('/', function(req, res, next) {
    console.log("Session : "+req.session.email);
    if(req.session.email){
        if(req.session.facultyId === 'hod' || req.session.facultyId === 'coordinator')
            res.redirect("/department")
        if(req.session.facultyId === 'admin' || req.session.facultyId === 'principal')
            res.redirect("/admin")
        res.redirect("/faculty");
        // console.log(req.session)
    }else{
        if(!req.query.error){
            res.render('login', { title: 'Express', type:"login" });
        }else{
            res.render('login', { title: 'Express', type:"loginError", message:req.query.error });
        }
    }
});

module.exports = router;
