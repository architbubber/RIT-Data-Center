var express = require('express');
var router = express.Router();

router.get('/', function(req, res, next) {
  if(!req.query.error){
      res.render('forgotPass', { title: 'Express', type:"login" });
  }else{
      res.render('forgotPass', { title: 'Express', type:"loginError", message:req.query.error });
  }});

module.exports = router;
