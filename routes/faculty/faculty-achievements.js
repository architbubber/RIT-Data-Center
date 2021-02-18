var express = require('express');
var router = express.Router();
var sqlExecute = require('../apis/mySqlCalls');
var utility = require('../utilities');

var facultyPermissions = require('./faculty-permissions.js');
router.get('/', function(req, res, next) {
	var facultyId;
	if(!utility.checkSesssion(req, res)) return;

	var facultyId;
	var auth = true;

	if(!utility.checkGetParam(req,res)){
		facultyId = req.session.facultyId;
	}
	else{
		auth = false;
		facultyId = req.query.fId;
	}

	if(facultyId === 'admin' || facultyId === 'hod' || facultyId === 'coordinator' || facultyId === 'principal'){
		if((typeof req.param("fId") === 'undefined')){
			res.redirect("/error/401");
			return;
		}
	}

	var callback = function(err, data){
		if(err)
			throw err;

		var facultyID = req.session.facultyId;
		//console.log("GetParam : " + req.query.fId);
		console.log("-----\n"+JSON.stringify(data)+"------\n");
		res.render('faculty/achievements', {title : "Faculty Achievement Details",type : "achievements", data:data,
		index : {
			url:"/faculty/achievements",
			faculty_workshop_fdp:
			   {
				facultyId : facultyID,
				type : "Type",
				title : "Title" ,
				sponsoredOrFunded : "Sponsored/Funded" ,
				date : "Date" ,
				place : "Place" ,
				duration : "Duration",
				role : "Role",
				nationalOrInternational : "National/International"
			   }
		   ,
		   faculty_conference_symposia:
			   {
				facultyId : facultyID,
				title : "Title",
				place : "Place" ,
				date : "Date" ,
				role : "Role" ,
				type : "Type"
			   }
		   ,
		   faculty_guest_lecture:
			   {
				facultyId:facultyID,
				organization : "Organization" ,
				title : "Title" ,
				date : "Date"
			   }
		   ,
		   book:
			   {
				facultyId:facultyID,
				bookTitle : "Title" ,
				bookAuthors : "Authors" ,
				bookPublisher : "Publisher" ,
				isbn : "ISBN",
				year : "Year"
			   }
		   ,
		   book_chapter:
			   {
				facultyId:facultyID,
				chapterName : "Chapter Name" ,
				bookName : "Book Name" ,
				chapterAuthors : "Authors" ,
				publisher : "Publisher" ,
				isbn : "ISBN",
				year : "Year"
			   }
		   ,
		   conference_paper:
			   {

				facultyId:facultyID,
				authors : "Authors" ,
				title : "Title" ,
				conferenceName : "Conference Name" ,
				conferenceType : "Conference Type" ,
				organizedBy : "Organized By" ,
				publisher : "Publisher",
				year : "Year",
				date : "Date"
			   }
		   ,
		   journal_paper:
			{
				facultyId:facultyID,
				authors : "Authors" ,
				title : "Title" ,
				issnPrint : "ISSN Print" ,
				issnOnline : "ISSN Online" ,
				journalName : "Journal Name" ,
				journalType : "Journal Type" ,
				volumeNumber : "Volume Number" ,
				pageNumbers: "Page Numbers" ,
				year : "Year" ,
				issueNumber : "Issue Number",
				impactFactor : "Impact Factor",
				citation : "Citation",
				doi : "Digital Object Identifier",
				sjrQuartile : "SJR Quartile",
				 // hIndex : "h-index",
				 // iIndex : "i-index",
				isbn : "ISBN",
				indexing : "Indexing",
				date : "Date"
			}

		},
		GetParam:req.query.fId,
		/* tableNames : ["faculty_workshop_fdp", "faculty_conference_symposia", "faculty_guest_lecture", "book", "book_chapter", "conference_paper", "journal_paper"],
		columnSchema : [
			{
				facultyId : facultyID,
				title : "Title" ,
				sponsoredOrFunded : "Sponsored/Funded" ,
				date : "Date" ,
				noOfParticipants : "No. of Participants" ,
				type : "Type"
			},
			{
				facultyId : facultyID,
				eventName : "Event Name" ,
				place : "Place" ,
				date : "Date" ,
				invitedOrDeputed : "Invited Or Deputed" ,
				noOfPapersPresented : "No. Of Papers Presented"
			}
		   ,
			{
				facultyId:facultyID,
				placeInvited : "Place Invited" ,
				title : "Title" ,
				date : "Date"
			}
		   ,
			{
				facultyId:facultyID,
				bookTitle : "Book Title" ,
				bookAuthors : "Book Author" ,
				bookPublisher : "Book Publisher" ,
				year : "Year"
			}
		   ,
			{
				facultyId:facultyID,
				chapterName : "Chapter Name" ,
				bookName : "Book Name" ,
				chapterAuthors : "Chapter Authors" ,
				publisher : "Publisher" ,
				year : "Year"
			}
		   ,
			{
				facultyId:facultyID,
				authors : "Authors" ,
				title : "Title" ,
				conferenceName : "Conference Name" ,
				conferenceType : "Conference Type" ,
				organizedBy : "Organized By" ,
				year : "Year"
			}
		   ,
			{
				facultyId:facultyID,
				authors : "Authors" ,
				title : "Title" ,
				issn : "ISSN" ,
				journalName : "Journal Name" ,
				journalType : "Journal Type" ,
				volumeNumber : "Volume Number" ,
				pageNumbers : "Page Numbbers" ,
				year : "Year" ,
				sjrQuartile : "SJR Quartile"
			}
		], */
		hiddenFields: {
			faculty_workshop_fdp:
			   {
				facultyId : { view: true, insert: true, update: true },
				type : { view: false, insert: false, update: false } ,
				title : { view: false, insert: false, update: false } ,
				sponsoredOrFunded : { view: false, insert: false, update: false } ,
				date : { view: false, insert: false, update: false } ,
				place : { view: false, insert: false, update: false } ,
				duration : { view: false, insert: false, update: false } ,
				role : { view: false, insert: false, update: false } ,
				nationalOrInternational : { view: false, insert: false, update: false } ,
				slNo: { view: true, insert: true, update: true }
			   }
		   ,
		   faculty_conference_symposia:
			   {
				facultyId : { view: true, insert: true, update: true },
				title : { view: false, insert: false, update: false } ,
				place : { view: false, insert: false, update: false } ,
				date : { view: false, insert: false, update: false } ,
				role : { view: false, insert: false, update: false } ,
				type : { view: false, insert: false, update: false } ,
				slNo: { view: true, insert: true, update: true }
			   }
		   ,
		   faculty_guest_lecture:
			   {
				facultyId:{ view: true, insert: true, update: true },
				organization : { view: false, insert: false, update: false } ,
				title : { view: false, insert: false, update: false } ,
				date : { view: false, insert: false, update: false },
				slNo: { view: true, insert: true, update: true }
			   }
		   ,
		   book:
			   {
				facultyId:{ view: true, insert: true, update: true },
				bookTitle : { view: false, insert: false, update: false } ,
				bookAuthors : { view: false, insert: false, update: false } ,
				bookPublisher : { view: false, insert: false, update: false } ,
				isbn:{ view: false, insert: false, update: false } ,
				year : { view: false, insert: false, update: false },
				slNo: { view: true, insert: true, update: true }
			   },
			   book_chapter:
			   {
				facultyId:{ view: true, insert: true, update: true } ,
				chapterName : { view: false, insert: false, update: false } ,
				bookName : { view: false, insert: false, update: false } ,
				chapterAuthors : { view: false, insert: false, update: false } ,
				publisher : { view: false, insert: false, update: false } ,
				isbn:{ view: false, insert: false, update: false } ,
				year : { view: false, insert: false, update: false },
				slNo: { view: true, insert: true, update: true }
			   }
		   ,
		   conference_paper:
			   {

				facultyId:{ view: true, insert: true, update: true } ,
				authors : { view: false, insert: false, update: false } ,
				title : { view: false, insert: false, update: false } ,
				conferenceName : { view: false, insert: false, update: false } ,
				conferenceType : { view: false, insert: false, update: false } ,
				organizedBy : { view: false, insert: false, update: false } ,
				publisher : { view: false, insert: false, update: false } ,
				year : { view: false, insert: false, update: false },
				date : { view: false, insert: false, update: false },
				slNo: { view: true, insert: true, update: true }
			   }
		   ,
		   journal_paper:
			{
				facultyId:{ view: true, insert: true, update: true } ,
				authors : { view: false, insert: false, update: false } ,
				title : { view: false, insert: false, update: false } ,
				journalName : { view: false, insert: false, update: false } ,
				journalType : { view: false, insert: false, update: false } ,
				volumeNumber : { view: false, insert: false, update: false } ,
				year : { view: false, insert: false, update: false } ,
				sjrQuartile : { view: false, insert: false, update: false },
				slNo: { view: false, insert: false, update: false } ,
				issnPrint: { view: false, insert: false, update: false } ,
				issnOnline :{ view: false, insert: false, update: false } ,
				pageNumbers :{ view: false, insert: false, update: false } ,
				issueNumber :{ view: false, insert: false, update: false } ,
				impactFactor :{ view: false, insert: false, update: false } ,
				citation :{ view: false, insert: false, update: false } ,
				doi : { view: false, insert: false, update: false } ,
				// hIndex :{ view: false, insert: false, update: false } ,
				// iIndex :{ view: false, insert: false, update: false } ,
				isbn :{ view: false, insert: false, update: false } ,
				indexing :{ view: false, insert: false, update: false } ,
				date :{ view: false, insert: false, update: false },
				slNo: { view: true, insert: true, update: true }
			}

		},
		authType:req.session.facultyId,
		departmentId:req.session.departmentId,
		insertPermission:facultyPermissions.insertPermission,
			updatePermission:facultyPermissions.updatePermission
	});
	}
	//TODO Change the Faculty Achievements Table
	sqlExecute.getFacultyAchievements(facultyId, callback);
});

module.exports=router;
