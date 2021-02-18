var nodemailer = require('nodemailer');
var qs=require("querystring");
var sql = require("./mySqlCalls")

var mailer = function() {
  mailTo = "";
}

mailer.prototype.sendMail = function(mailTo, res)
{
  adminTableCallback = function(err, result)// check if exists in administrator_login table
  {
    if(result.length == 0)
    {
      res.redirect("/forgotPass?error="+qs.escape("Sorry, this e-mail id does not exist. Please enter a valid e-mail id."));

    }
    else
    {
      var transporter = nodemailer.createTransport({
        service: 'gmail',
        auth: {
          user: 'datacenterrit@gmail.com',
          pass: 'datacenter'
        }
      });

      var mailOptions = {
        from: 'datacenterrit@gmail.com',
        to: mailTo,
        subject: 'Password Recovery',
        text: 'Hello Sir/Madam,\n\nPassword for the user name '+ mailTo +' is ' + JSON.stringify(result[0].password) + '. Do not share this with anyone.\n\nWebsite link: 172.1.16.80:3000\nFor any queries, mail us to datacenterrit@gmail.com\n\nRegards,\nDr. S. Seema, Dr. K. Indira\nRIT Data Center.'
      };

      transporter.sendMail(mailOptions, function(error, info){
        if (error) {
          res.redirect("/forgotPass?error="+qs.escape(error));
        } else {
          res.redirect("/login?error="+qs.escape("We have mailed you the password."));
        }
      });
  }


  }
  callback = function(err, result)
  {
      // console.log("pass "+JSON.stringify(result))
      if(result.length == 0)// could not find the email in faculty table
      {
        sql.runRawQuery("select password from administrator_login where emailId = '" + mailTo + "'", adminTableCallback)

      }
      else
      {
        var transporter = nodemailer.createTransport({
          service: 'gmail',
          auth: {
            user: 'datacenterrit@gmail.com',
            pass: 'datacenter'
          }
        });

        var mailOptions = {
          from: 'datacenterrit@gmail.com',
          to: mailTo,
          subject: 'Password Recovery',
          text: 'Hello Sir/Madam,\n\nPassword for the user name '+ mailTo +' is ' + JSON.stringify(result[0].password) + '. Do not share this with anyone.\n\nWebsite link: 172.1.16.80:3000\nFor any queries, mail us to datacenterrit@gmail.com\n\nThank You,\nRIT Data Center.'
        };

        transporter.sendMail(mailOptions, function(error, info){
          if (error) {
            res.redirect("/forgotPass?error="+qs.escape(error));
          } else {
            res.redirect("/login?error="+qs.escape("We have mailed you the password."));
          }
        });
    }
  }
    sql.runRawQuery("select password from faculty where emailId = '" + mailTo + "'", callback)


}
var object = new mailer();

module.exports = object;
