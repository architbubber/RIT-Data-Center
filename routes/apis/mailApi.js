var express = require('express');
var router = express.Router();
var mailer = require("./mailer");
var nodemailer = require('nodemailer');
var qs=require("querystring");

router.post('/', function(req, res, next) {
    // console.log("It reached here");
    var email = req.body.email;
    var pass = req.body.pass;
    mailer.sendMail(email, res)

});

module.exports = router;
