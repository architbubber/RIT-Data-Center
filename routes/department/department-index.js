var express = require('express');
var sqlApi = require('../../back-end/sqlAPI');
var router = express.Router();
var sqlExecute = require('../apis/mySqlCalls');
var generateexcel = require('../../back-end/excelGenerator');
var utility = require('../utilities');
var preProcessor = require('../apis/dataPreprocessor');

var departmentPermissions = require('./department-permissions');

/* GET home page. */

router.use('/department-reports', require('./department-reports'));

router.get('/student-info', function(req, res, next) {
  if(req.query.departmentId){
    departmentId = req.query.departmentId;
  } else{
    departmentId = req.session.departmentId;
  }
  var facultyId = req.session.facultyId;
  if(facultyId === 'admin' || facultyId === 'principal'){
    //if it is an admin or the principal allow access.
  }
  else {
    //if it is a faculty or hod or coordinator they have only department level access.
    if(facultyId === 'hod' || facultyId === 'coordinator'){
      //this is hod or coordinator level logic.
      var mEmail = req.session.email;
      mEmail = mEmail.split("@")[0];
      if(mEmail.indexOf(departmentId) == -1){
        res.redirect("/error/401");
        return;
      }
    }
    else {
      //this is faculty level logic.
      if(facultyId.indexOf(departmentId) == -1){
        res.redirect("/error/401");
        return;
      }
    }
  }
  var callback = function(err, result){
    if(err)
      throw err;
      var studentAchievement = [];
      var studentAchieve = result.student_achievement;
      for(var i=0; i<studentAchieve.length; i++){
        var individualEntry = {
          studentName: studentAchieve[i].studentName,
          eventName: studentAchieve[i].eventName,
          date: studentAchieve[i].date,
          place: studentAchieve[i].place,
          award: studentAchieve[i].award,
          category: studentAchieve[i].category,
          type: studentAchieve[i].type,
          slNo: studentAchieve[i].slNo
        };
        studentAchievement.push(individualEntry);
      }
// for pg student achievements
      var studentAchievementPG = [];
      var studentAchievePG = result.student_achievement_pg;
      for(var i=0; i<studentAchievePG.length; i++){
        var individualEntry = {
          studentName: studentAchievePG[i].studentName,
          eventName: studentAchievePG[i].eventName,
          date: studentAchievePG[i].date,
          place: studentAchievePG[i].place,
          award: studentAchievePG[i].award,
          category: studentAchievePG[i].category,
          type: studentAchievePG[i].type,
          slNo: studentAchievePG[i].slNo
        };
        studentAchievementPG.push(individualEntry);
      }


      var studentActivites = [];
      var studentActivity = result.student_activities;
      for(var i=0; i<studentActivity.length; i++){
        var individualEntry = {
          studentName: studentActivity[i].studentName,
          eventName: studentActivity[i].eventName,
          date: studentActivity[i].date,
          industryOrOrganization: studentActivity[i].industryOrOrganization,
          category: studentActivity[i].category,
          type: studentActivity[i].type,
          slNo: studentActivity[i].slNo
         };
         studentActivites.push(individualEntry);
      }
//for pg student activities
      var studentActivites_pg = [];
      var studentActivity_pg = result.student_activities_pg;
      for(var i=0; i<studentActivity_pg.length; i++){
        var individualEntry = {
          usn: studentActivity_pg[i].usn,
          studentName: studentActivity_pg[i].studentName,
          programName: studentActivity_pg[i].programName,
          eventName: studentActivity_pg[i].eventName,
          date: studentActivity_pg[i].date,
          industryOrOrganization: studentActivity_pg[i].industryOrOrganization,
          category: studentActivity_pg[i].category,
          type: studentActivity_pg[i].type,
          slNo: studentActivity_pg[i].slNo
         };
         studentActivites_pg.push(individualEntry);
      }


      var studentPublication = [];
      var studentpublic = result.student_publication;
      for(var i=0; i<studentpublic.length; i++){
        var individualEntry = {
          authors: studentpublic[i].authors,
          title: studentpublic[i].title,
          date: studentpublic[i].date,
          conferenceOrJournal: studentpublic[i].conferenceOrJournal,
          place: studentpublic[i].place,
          slNo: studentpublic[i].slNo
        };
        studentPublication.push(individualEntry);
      }
      // console.log(studentAchievement);
      // console.log(studentPublication);
      // console.log(studentActivites);

      //table change 1
      var studentConferencePublications = [];
      var studentConfPublic = result.student_conference_publications;
      for(var i=0; i<studentConfPublic.length; i++){
        var individualEntry = {
          authors: studentConfPublic[i].authors,
          title: studentConfPublic[i].title,
          conferenceType: studentConfPublic[i].conferenceType,
          organizedBy: studentConfPublic[i].organizedBy,
          publisher: studentConfPublic[i].publisher,
          year: studentConfPublic[i].year,
          slNo: studentConfPublic[i].slNo
        };

        studentConferencePublications.push(individualEntry);
      }

      var studentConferencePublicationsPg = [];
      var studentConfPublicPg = result.student_conference_publications_pg;
      for(var i=0; i<studentConfPublicPg.length; i++){
        var individualEntry = {
          author: studentConfPublicPg[i].author,
          coauthor:studentConfPublicPg[i].coauthor,
          title: studentConfPublicPg[i].title,
          conferenceType: studentConfPublicPg[i].conferenceType,
          organizedBy: studentConfPublicPg[i].organizedBy,
          publisher: studentConfPublicPg[i].publisher,
          year: studentConfPublicPg[i].year,
          slNo: studentConfPublicPg[i].slNo
        };

        studentConferencePublicationsPg.push(individualEntry);
      }

      var studentJournalPublications = [];
      var studentJournPublic = result.student_journal_publications;
      for(var i=0; i<studentJournPublic.length; i++){
        var individualEntry = {
          slNo: studentJournPublic[i].slNo,
          authors: studentJournPublic[i].authors,
          title: studentJournPublic[i].title,
          issnPrint: studentJournPublic[i].issnPrint,
          issnOnline: studentJournPublic[i].issnOnline,
          journalName: studentJournPublic[i].journalName,
          journalType: studentJournPublic[i].journalType,
          volumeNumber: studentJournPublic[i].volumeNumber,
          pageNumbers: studentJournPublic[i].pageNumbers,
          year: studentJournPublic[i].year,
          issueNumber: studentJournPublic[i].issueNumber,
          impactFactor: studentJournPublic[i].impactFactor,
          citation: studentJournPublic[i].citation,
          doi: studentJournPublic[i].doi,
          sjrQuartile: studentJournPublic[i].sjrQuartile,
          // hIndex: studentJournPublic[i].hIndex,
          // iIndex: studentJournPublic[i].iIndex,
          isbn: studentJournPublic[i].isbn,
          indexing: studentJournPublic[i].indexing,
          date: studentJournPublic[i].date,
          departmentId: studentJournPublic[i].departmentId,

        };

        studentJournalPublications.push(individualEntry);
      }

      var studentJournalPublicationsPg = [];
      var studentJournPublicPg = result.student_journal_publications_pg;
      for(var i=0; i<studentJournPublicPg.length; i++){
        var individualEntry = {
          slNo: studentJournPublicPg[i].slNo,
          author: studentJournPublicPg[i].author,
          coauthor: studentJournPublicPg[i].coauthor,
          title: studentJournPublicPg[i].title,
          issnPrint: studentJournPublicPg[i].issnPrint,
          issnOnline: studentJournPublicPg[i].issnOnline,
          journalName: studentJournPublicPg[i].journalName,
          journalType: studentJournPublicPg[i].journalType,
          volumeNumber: studentJournPublicPg[i].volumeNumber,
          pageNumbers: studentJournPublicPg[i].pageNumbers,
          year: studentJournPublicPg[i].year,
          issueNumber: studentJournPublicPg[i].issueNumber,
          impactFactor: studentJournPublicPg[i].impactFactor,
          citation: studentJournPublicPg[i].citation,
          doi: studentJournPublicPg[i].doi,
          sjrQuartile: studentJournPublicPg[i].sjrQuartile,
          // hIndex: studentJournPublicPg[i].hIndex,
          // iIndex: studentJournPublicPg[i].iIndex,
          isbn: studentJournPublicPg[i].isbn,
          indexing: studentJournPublicPg[i].indexing,
          date: studentJournPublicPg[i].date,
          departmentId: studentJournPublicPg[i].departmentId,

        };

        studentJournalPublicationsPg.push(individualEntry);
      }

      var higherStudies = [];
      var higherStud = result.higher_studies;
      for(var i=0; i<higherStud.length; i++){
        var individualEntry = {
          slNo: higherStud[i].slNo,
          studentName: higherStud[i].studentName,
          usn: higherStud[i].usn,
          yearOfPassing: higherStud[i].yearOfPassing,
          program: higherStud[i].program,
          course: higherStud[i].course,
          university: higherStud[i].university,
          country: higherStud[i].country,
          yearOfJoining: higherStud[i].yearOfJoining,
          departmentId: higherStud[i].departmentId,

        };

        higherStudies.push(individualEntry);
      }

      var competativeExam = [];
      var compExam = result.competative_exam_details;
      for(var i=0; i<compExam.length; i++){
        var individualEntry = {
          slNo: compExam[i].slNo,
          studentName: compExam[i].studentName,
          usn: compExam[i].usn,
          yearOfPassing: compExam[i].yearOfPassing,
          qualifyingExam: compExam[i].qualifyingExam,
          examScore: compExam[i].examScore,
          yearOfExam: compExam[i].yearOfExam,
          status: compExam[i].status,

          departmentId: compExam[i].departmentId,

        };

        competativeExam.push(individualEntry);
      }
      var placementDetails = [];
      var placeDetails = result.placement_details_ug;
      for(var i=0; i<placeDetails.length; i++){
        var individualEntry = {
          slNo : placeDetails[i].slNo,
          studentName: placeDetails[i].studentName,
          usn: placeDetails[i].usn,
          yearOfPassing: placeDetails[i].yearOfPassing,
          companyName: placeDetails[i].companyName,
          package: placeDetails[i].package,
          departmentId: placeDetails[i].departmentId,

        };

        placementDetails.push(individualEntry);
      }


      var placementDetailsPg = [];
      var placeDetails = result.placement_details_pg;
      for(var i=0; i<placeDetails.length; i++){
        var individualEntry = {
          slNo : placeDetails[i].slNo,
          studentName: placeDetails[i].studentName,
          usn: placeDetails[i].usn,
          discipline: placeDetails[i].discipline,
          yearOfPassing: placeDetails[i].yearOfPassing,
          on_off_Campus: placeDetails[i].on_off_Campus,
          companyName: placeDetails[i].companyName,
          appRefNo: placeDetails[i].appRefNo,
          appDate: placeDetails[i].appDate,
          departmentId: placeDetails[i].departmentId,

        };

        placementDetailsPg.push(individualEntry);
      }

      var projectDetailsUg = [];
      var projectDetails_ug = result.project_details_ug;
      for(var i=0; i<projectDetails_ug.length; i++){
        var individualEntry = {
          usn: projectDetails_ug[i].usn,
          studentName: projectDetails_ug[i].studentName,
          programName: projectDetails_ug[i].programName,
          title: projectDetails_ug[i].title,
          guideName_internal: projectDetails_ug[i].guideName_internal,
          guideName_external: projectDetails_ug[i].guideName_external,
          pow: projectDetails_ug[i].pow,
          slNo: projectDetails_ug[i].slNo
         };
         projectDetailsUg.push(individualEntry);
      }

      var projectDetailsPg = [];
      var projectDetails_pg = result.project_details_pg;
      for(var i=0; i<projectDetails_pg.length; i++){
        var individualEntry = {
          usn: projectDetails_pg[i].usn,
          studentName: projectDetails_pg[i].studentName,
          programName: projectDetails_pg[i].programName,
          title: projectDetails_pg[i].title,
          guideName_internal: projectDetails_pg[i].guideName_internal,
          guideName_external: projectDetails_pg[i].guideName_external,
          pow: projectDetails_pg[i].pow,
          slNo: projectDetails_pg[i].slNo
         };
         projectDetailsPg.push(individualEntry);
      }

      var internshipUg = [];
      var internship_ug = result.internship_ug;
      for(var i=0; i<internship_ug.length; i++){
        var individualEntry = {
          usn: internship_ug[i].usn,
          studentName: internship_ug[i].studentName,
          companyName: internship_ug[i].companyName,
          startDate: internship_ug[i].startDate,
          endDate: internship_ug[i].endDate,
          mentor: internship_ug[i].mentor,
          slNo: internship_ug[i].slNo
         };
         internshipUg.push(individualEntry);
      }


      var internshipPg = [];
      var internship_pg = result.internship_pg;
      for(var i=0; i<internship_pg.length; i++){
        var individualEntry = {
          usn: internship_pg[i].usn,
          studentName: internship_pg[i].studentName,
          programName: internship_pg[i].programName,
          companyName: internship_pg[i].companyName,
          startDate: internship_pg[i].startDate,
          endDate: internship_pg[i].endDate,
          mentor: internship_pg[i].mentor,
          slNo: internship_pg[i].slNo
         };
         internshipPg.push(individualEntry);
      }


      var data = {

      }
      res.render('department/student-info', { departmentId: departmentId, type:"student-info",
      //table change 5
       data:{student_activities:studentActivites,student_activities_pg:studentActivites_pg,student_achievement_pg:studentAchievementPG,student_achievement:studentAchievement,student_publication:studentPublication, student_conference_publications:studentConferencePublications,student_conference_publications_pg:studentConferencePublicationsPg, student_journal_publications:studentJournalPublications,student_journal_publications_pg:studentJournalPublicationsPg, higher_studies : higherStudies, competative_exam_details : competativeExam, placement_details_ug:placementDetails,placement_details_pg:placementDetailsPg, project_details_ug:projectDetailsUg, project_details_pg:projectDetailsPg,internship_ug:internshipUg, internship_pg:internshipPg },
       authType:req.session.facultyId, GetParam:req.query.departmentId,
       index: {
         url: "/department/student-info",
         student_activities: {
           slNo: "slNo",
           studentName: "Student Name",
           eventName: "Event Name",
           date: "Date",
           industryOrOrganization: "Industry/Organization",
           category: "Category",
           type: "Type",
           departmentId: "departmentId"
         },
         student_activities_pg: {
           slNo: "slNo",
           usn: "USN",
           studentName: "Student Name",
           programName: "Program Name",
           eventName: "Event Name",
           date: "Date",
           industryOrOrganization: "Industry/Organization",
           category: "Category",
           type: "Type",
           departmentId: "departmentId"
         },
         student_achievement: {
           slNo: "slNo",
           studentName: "Student Name",
           eventName: "Event Name",
           date: "Date",
           place: "Place",
           award: "Award",
           category: "Category",
           type: "Type",
           departmentId: "departmentID"
         },
         student_achievement_pg: {
           slNo: "slNo",
           studentName: "Student Name",
           eventName: "Event Name",
           date: "Date",
           place: "Place",
           award: "Award",
           category: "Category",
           type: "Type",
           departmentId: "departmentID"
         },
         student_publication: {
          slNo: "Sl. No",
          authors: "Authors",
          title: "Title",
          date: "Date",
          conferenceOrJournal: "Conference/Journal",
          place: "Place",
          departmentId: "departmentId"
        },
        //table change 2
        student_conference_publications: {
          authors: "Authors",
          title: "Title",
          conferenceType: "Conference Type",
          organizedBy: "Organized By",
          publisher: "Publisher",
          year: "Year",
          slNo: "Sl No",
          departmentId: "departmentId"

       },

       student_conference_publications_pg: {
         author: "Author",
         coauthor: "Co-Author",
         title: "Title",
         conferenceType: "Conference Type",
         organizedBy: "Organized By",
         publisher: "Publisher",
         year: "Year",
         slNo: "Sl No",
         departmentId: "departmentId"

      },
       student_journal_publications: {
         slNo: "Sl No",
         authors: "Authors",
         title: "Title",
         issnPrint: "Issn Print",
         issnOnline: "Issn Online",
         journalName: "Journal Name",
         journalType: "Journal Type",
         volumeNumber: "Volume Number",
         pageNumbers: "Page Numbers",
         year: "Year",
         issueNumber: "Issue Number",
         impactFactor: "Impact Factor",
         citation: "Citation",
         doi: "DOI",
         sjrQuartile: "SJR Quartile",
         // hIndex: "h-index",
         // iIndex: "i-index",
         isbn: "ISBN",
         indexing: "indexing",
         date: "Date",
         departmentId: "departmentID",

      },

      student_journal_publications_pg: {
        slNo: "Sl No",
        author: "Author",
        coauthor: "Co-Author",
        title: "Title",
        issnPrint: "Issn Print",
        issnOnline: "Issn Online",
        journalName: "Journal Name",
        journalType: "Journal Type",
        volumeNumber: "Volume Number",
        pageNumbers: "Page Numbers",
        year: "Year",
        issueNumber: "Issue Number",
        impactFactor: "Impact Factor",
        citation: "Citation",
        doi: "DOI",
        sjrQuartile: "SJR Quartile",
        // hIndex: "h-index",
        // iIndex: "i-index",
        isbn: "ISBN",
        indexing: "indexing",
        date: "Date",
        departmentId: "departmentID",

     },

      higher_studies: {
        slNo : "Sl No",
        studentName: "Student Name",
        usn: "USN",
        yearOfPassing: "Year Of Passing",
        program: "Program",
        course: "Course",
        university: "University",
        country: "Country",
        yearOfJoining: "Year Of Joining",
        departmentId: "departmentId"
     },
     competative_exam_details: {
       slNo : "Sl No",
       studentName: "Student Name",
       usn: "USN",
       yearOfPassing: "Year Of Passing",
       qualifyingExam: "Qualifying Exam",
       examScore: "Exam Score",
       yearOfExam:"Year of Exam",
       status: "Status",
       departmentId: "departmentId"
    },
    placement_details_pg: {
      slNo:"Sl No",
      studentName: "Student Name",
      usn: "USN",
      discipline: "Discipline",
      yearOfPassing: "Year Of Passing",
      on_off_Campus: "On/Off Campus",
      companyName: "Company Name",
      appRefNo: "Application Letter (ref. no.)",
      appDate: "Application Letter Date",
      departmentId: "departmentId"
   },
   project_details_ug: {
     slNo: "slNo",
     usn: "USN",
     studentName: "Student Name",
     programName: "Program Name",
     title: "Title",
     guideName_internal: "Guide (Internal)",
     guideName_external: "Guide (External)",
     pow: "Place of Work",
     departmentId: "departmentId"
   },
   project_details_pg: {
     slNo: "slNo",
     usn: "USN",
     studentName: "Student Name",
     programName: "Program Name",
     title: "Title",
     guideName_internal: "Guide (Internal)",
     guideName_external: "Guide (External)",
     pow: "Place of Work",
     departmentId: "departmentId"
   },
   internship_ug: {
     slNo: "slNo",
     usn: "USN",
     studentName: "Student Name",
     companyName: "Company Name",
     startDate: "Start Date",
     endDate: "End Date",
     mentor: "Mentor",
     departmentId: "departmentId"
   },
   internship_pg: {
     slNo: "slNo",
     usn: "USN",
     studentName: "Student Name",
     programName: "Program Name",
     companyName: "Company Name",
     startDate: "Start Date",
     endDate: "End Date",
     mentor: "Mentor",
     departmentId: "departmentId"
   }
       },

       hiddenFields:{
        student_activities: {
          slNo: { view: true, insert: true, update: true } ,
          studentName: { view: false, insert: false, update: false },
          eventName: { view: false, insert: false, update: false },
          date: { view: false, insert: false, update: false },
          industryOrOrganization: { view: false, insert: false, update: false },
          category: { view: false, insert: false, update: false },
          type: { view: false, insert: false, update: false},
          departmentId: { view: true, insert: true, update: true }
        },
        student_activities_pg: {
          slNo: { view: true, insert: true, update: true } ,
          usn: { view: false, insert: false, update: false },
          studentName: { view: false, insert: false, update: false },
          programName: {view: false, insert: false, update: false },
          eventName: { view: false, insert: false, update: false },
          date: { view: false, insert: false, update: false },
          industryOrOrganization: { view: false, insert: false, update: false },
          category: { view: false, insert: false, update: false },
          type: { view: false, insert: false, update: false},
          departmentId: { view: true, insert: true, update: true }
        },
        student_achievement: {
          slNo: { view: true, insert: true, update: true } ,
          studentName: { view: false, insert: false, update: false },
          eventName: { view: false, insert: false, update: false },
          date: { view: false, insert: false, update: false },
          place: { view: false, insert: false, update: false},
          award: { view: false, insert: false, update: false },
          category: { view: false, insert: false, update: false },
          type: { view: false, insert: false, update: false},
          departmentId: { view: true, insert: true, update: true }
        },
        student_achievement_pg: {
          slNo: { view: true, insert: true, update: true } ,
          studentName: { view: false, insert: false, update: false },
          eventName: { view: false, insert: false, update: false },
          date: { view: false, insert: false, update: false },
          place: { view: false, insert: false, update: false},
          award: { view: false, insert: false, update: false },
          category: { view: false, insert: false, update: false },
          type: { view: false, insert: false, update: false},
          departmentId: { view: true, insert: true, update: true }
        },
        student_publication: {
          slNo: { view: true, insert: true, update: true } ,
          authors: { view: false, insert: false, update: false },
          title: { view: false, insert: false, update: false },
          date: { view: false, insert: false, update: false },
          conferenceOrJournal: { view: false, insert: false, update: false },
          place: { view: false, insert: false, update: false },
          departmentId: { view: true, insert: true, update: true }
        },
        //table change 3
        student_conference_publications: {

          slNo: { view: true, insert: true, update: true } ,
          authors: { view: false, insert: false, update: false },
          title: { view: false, insert: false, update: false },
          conferenceType: { view: false, insert: false, update: false },
          organizedBy: { view: false, insert: false, update: false },
          publisher: { view: false, insert: false, update: false },
          year: { view: false, insert: false, update: false },
          departmentId: { view: true, insert: true, update: true }
        },

        student_conference_publications_pg: {

          slNo: { view: true, insert: true, update: true } ,
          author: { view: false, insert: false, update: false },
          coauthor: { view: false, insert: false, update: false },
          title: { view: false, insert: false, update: false },
          conferenceType: { view: false, insert: false, update: false },
          organizedBy: { view: false, insert: false, update: false },
          publisher: { view: false, insert: false, update: false },
          year: { view: false, insert: false, update: false },
          departmentId: { view: true, insert: true, update: true }
        },

        student_journal_publications: {

          slNo: { view: true, insert: true, update: true } ,
          authors: { view: false, insert: false, update: false },
          title: { view: false, insert: false, update: false },
          issnPrint: { view: false, insert: false, update: false },
          issnOnline:{ view: false, insert: false, update: false },
          journalName: { view: false, insert: false, update: false },
          journalType:{ view: false, insert: false, update: false },
          volumeNumber:{ view: false, insert: false, update: false },
          pageNumbers:{ view: false, insert: false, update: false },
          year: { view: false, insert: false, update: false },
          issueNumber:{ view: false, insert: false, update: false },
          impactFactor: { view: false, insert: false, update: false },
          citation: { view: false, insert: false, update: false },
          doi: { view: false, insert: false, update: false },
          sjrQuartile:{ view: false, insert: false, update: false },
          // hIndex:{ view: false, insert: false, update: false },
          // iIndex:{ view: false, insert: false, update: false },
          isbn:{ view: false, insert: false, update: false },
          indexing: { view: false, insert: false, update: false },
          date: { view: false, insert: false, update: false },
           departmentId: { view: true, insert: true, update: true }
        },
        student_journal_publications_pg: {

          slNo: { view: true, insert: true, update: true } ,
          author: { view: false, insert: false, update: false },
          coauthor: { view: false, insert: false, update: false },
          title: { view: false, insert: false, update: false },
          issnPrint: { view: false, insert: false, update: false },
          issnOnline:{ view: false, insert: false, update: false },
          journalName: { view: false, insert: false, update: false },
          journalType:{ view: false, insert: false, update: false },
          volumeNumber:{ view: false, insert: false, update: false },
          pageNumbers:{ view: false, insert: false, update: false },
          year: { view: false, insert: false, update: false },
          issueNumber:{ view: false, insert: false, update: false },
          impactFactor: { view: false, insert: false, update: false },
          citation: { view: false, insert: false, update: false },
          doi: { view: false, insert: false, update: false },
          sjrQuartile:{ view: false, insert: false, update: false },
          // hIndex:{ view: false, insert: false, update: false },
          // iIndex:{ view: false, insert: false, update: false },
          isbn:{ view: false, insert: false, update: false },
          indexing: { view: false, insert: false, update: false },
          date: { view: false, insert: false, update: false },
           departmentId: { view: true, insert: true, update: true }
        },
        higher_studies: {
          slNo: { view: true, insert: true, update: true } ,
          studentName: { view: false, insert: false, update: false },
          usn: { view: false, insert: false, update: false },
          yearOfPassing: { view: false, insert: false, update: false },
          program: { view: false, insert: false, update: false },
          course: { view: false, insert: false, update: false },
          university: { view: false, insert: false, update: false },
          country: { view: false, insert: false, update: false },
          yearOfJoining: { view: false, insert: false, update: false },
          departmentId: { view: true, insert: true, update: true }
        },
        competative_exam_details: {
          slNo: { view: true, insert: true, update: true } ,
          studentName: { view: false, insert: false, update: false },
          usn: { view: false, insert: false, update: false },
          yearOfPassing: { view: false, insert: false, update: false },
          qualifyingExam: { view: false, insert: false, update: false },
          examScore: { view: false, insert: false, update: false },
          yearOfExam: { view: false, insert: false, update: false },
          status: { view: false, insert: false, update: false },
          departmentId: { view: true, insert: true, update: true }
        },
        placement_details_pg: {
          slNo: { view: true, insert: true, update: true },
          studentName: { view: false, insert: false, update: false },
          usn: { view: false, insert: false, update: false },
          discipline: { view: false, insert: false, update: false },
          yearOfPassing: { view: false, insert: false, update: false },
          on_off_Campus: { view: false, insert: false, update: false },
          companyName: { view: false, insert: false, update: false },
          appRefNo: { view: false, insert: false, update: false },
          appDate: { view: false, insert: false, update: false },
          departmentId: { view: true, insert: true, update: true }
        },
        project_details_ug: {
          slNo: { view: true, insert: true, update: true },
          usn: { view: false, insert: false, update: false },
          studentName: { view: false, insert: false, update: false },
          programName: { view: false, insert: false, update: false },
          title: { view: false, insert: false, update: false },
          guideName_internal: { view: false, insert: false, update: false },
          guideName_external: { view: false, insert: false, update: false },
          pow: { view: false, insert: false, update: false },
          departmentId: { view: true, insert: true, update: true }
        },
        project_details_pg: {
          slNo: { view: true, insert: true, update: true },
          usn: { view: false, insert: false, update: false },
          studentName: { view: false, insert: false, update: false },
          programName: { view: false, insert: false, update: false },
          title: { view: false, insert: false, update: false },
          guideName_internal: { view: false, insert: false, update: false },
          guideName_external: { view: false, insert: false, update: false },
          pow: { view: false, insert: false, update: false },
          departmentId: { view: true, insert: true, update: true }
        },
        internship_ug: {
          slNo: { view: true, insert: true, update: true },
          usn: { view: false, insert: false, update: false },
          studentName: { view: false, insert: false, update: false },
          companyName: { view: false, insert: false, update: false },
          startDate: { view: false, insert: false, update: false },
          endDate: { view: false, insert: false, update: false },
          mentor: { view: false, insert: false, update: false },
          departmentId: { view: true, insert: true, update: true }
        },
        internship_pg: {
          slNo: { view: true, insert: true, update: true },
          usn: { view: false, insert: false, update: false },
          studentName: { view: false, insert: false, update: false },
          programName: { view: false, insert: false, update: false },
          companyName: { view: false, insert: false, update: false },
          startDate: { view: false, insert: false, update: false },
          endDate: { view: false, insert: false, update: false },
          mentor: { view: false, insert: false, update: false },
          departmentId: { view: true, insert: true, update: true }
        }

       },
        insertPermission:departmentPermissions.insertPermission,
        updatePermission:departmentPermissions.updatePermission
      });
  }
  sqlExecute.getStudentInformation(callback, departmentId);
});

router.get('/infrastructure-details', function(req, res, next) {
  if(req.query.departmentId){
    departmentId = req.query.departmentId;
  } else{
    departmentId = req.session.departmentId;
  }
  var facultyId = req.session.facultyId;
  if(facultyId === 'admin' || facultyId === 'principal'){
    //if it is an admin or the principal allow access.
  }
  else {
    //if it is a faculty or hod or coordinator they have only department level access.
    if(facultyId === 'hod' || facultyId === 'coordinator'){
      //this is hod or coordinator level logic.
      var mEmail = req.session.email;
      mEmail = mEmail.split("@")[0];
      if(mEmail.indexOf(departmentId) == -1){
        res.redirect("/error/401");
        return;
      }
    }
    else {
      //this is faculty level logic.
      if(facultyId.indexOf(departmentId) == -1){
        res.redirect("/error/401");
        return;
      }
    }
  }

  var callback = function(err, result){
    if(err)
      throw err;

      var hardware = [];
      var hardwareTemp = result.hardware;
      for(var i=0; i<hardwareTemp.length; i++){
        var entry = {
          slNo: hardwareTemp[i].slNo,
          labName: hardwareTemp[i].labName,
          carpetArea: hardwareTemp[i].carpetArea,
          equipments: hardwareTemp[i].equipments,
          dateOfProcurement: hardwareTemp[i].dateOfProcurement,
          modeOfProcurement: hardwareTemp[i].modeOfProcurement,
          description: hardwareTemp[i].description,
          quantity: hardwareTemp[i].quantity,
          amountPerUnit: hardwareTemp[i].amountPerUnit,
          totalInvestment: hardwareTemp[i].totalInvestment
          }
        hardware.push(entry);
      }

      var software = [];
      var softwareTemp = result.software;
      for(var i=0; i<softwareTemp.length; i++){
        var entry = {
          slNo: softwareTemp[i].slNo,
          softwareName: softwareTemp[i].softwareName,
          licenseNumber: softwareTemp[i].licenseNumber,
          typeOfLicence: softwareTemp[i].typeOfLicence,
          noOfUsers: softwareTemp[i].noOfUsers,
          dateOfProcurement: softwareTemp[i].dateOfProcurement,
          modeOfProcurement: softwareTemp[i].modeOfProcurement,
          expiryDate: softwareTemp[i].expiryDate,
          vendorName: softwareTemp[i].vendorName,
          costOfSoftware: softwareTemp[i].costOfSoftware
        }
        software.push(entry);
      }

      // console.log(result);
      res.render('department/infrastructure-details', { departmentId: departmentId, type:"infrastructure-details",
      data:{hardware:hardware,software:software}, authType:req.session.facultyId, GetParam:req.query.departmentId,
      index: {
        url: '/department/infrastructure-details',
        hardware:
        {
          slNo: "slNo",
          labName: "Name Of the Lab",
          carpetArea: "Carpet Area",
          totalInvestment: "Total Investment",
          departmentId: "departmentId",
          equipments: "Equipment",
          dateOfProcurement: "Date of Procurement",
          modeOfProcurement: "Mode of procurement",
          description: "Description",
          quantity: "Quantity",
          amountPerUnit: "Amount Per Unit",
        },
        software:
        {
          slNo: "Sl No",
          softwareName: "Software Name",
          licenseNumber: "License Number",
          typeOfLicence: "License Type",
          noOfUsers: "No of Users",
          dateOfProcurement: "Date of Procurement",
          modeOfProcurement: "Mode of Procurement",
          expiryDate: "Expiry Date",
          vendorName: "Vendor Name",
          costOfSoftware: "Cost of Software (in Rs)",
          departmentId: "departmentId"
        }
      },
      hiddenFields:{
        hardware:
        {
          slNo: { view: true, insert: true, update: true } ,
          labName: { view: false, insert: false, update: true },
          carpetArea: { view: false, insert: false, update: true },
          totalInvestment: { view: false, insert: false, update: false },
          departmentId: { view: true, insert: true, update: true },
          equipments: { view: false, insert: false, update: false },
          dateOfProcurement: { view: false, insert: false, update: false },
          modeOfProcurement: { view: false, insert: false, update: false },
          description: { view: false, insert: false, update: false },
          quantity: { view: false, insert: false, update: false },
          amountPerUnit: { view: false, insert: false, update: false }
        },
        software:
        {
          slNo: { view: true, insert: true, update: true } ,
          softwareName: { view: false, insert: false, update: false },
          licenseNumber: { view: false, insert: false, update: false },
          typeOfLicence: { view: false, insert: false, update: false },
          noOfUsers: { view: false, insert: false, update: false },
          dateOfProcurement: { view: false, insert: false, update: false },
          modeOfProcurement: { view: false, insert: false, update: false },
          expiryDate: { view: false, insert: false, update: false },
          vendorName: { view: false, insert: false, update: false },
          costOfSoftware: { view: false, insert: false, update: false },
          departmentId: { view: true, insert: true, update: true }
        }
      },

      insertPermission:departmentPermissions.insertPermission,
      updatePermission:departmentPermissions.updatePermission });
   }
  sqlExecute.getInfrastructureDetails(callback, departmentId);
});

router.get('/activities', function(req, res, next) {
  if(req.query.departmentId){
    departmentId = req.query.departmentId;
  } else{
    departmentId = req.session.departmentId;
  }
  var facultyId = req.session.facultyId;
  if(facultyId === 'admin' || facultyId === 'principal'){
    //if it is an admin or the principal allow access.
  }
  else {
    //if it is a faculty or hod or coordinator they have only department level access.
    if(facultyId === 'hod' || facultyId === 'coordinator'){
      //this is hod or coordinator level logic.
      var mEmail = req.session.email;
      mEmail = mEmail.split("@")[0];
      if(mEmail.indexOf(departmentId) == -1){
        res.redirect("/error/401");
        return;
      }
    }
    else {
      //this is faculty level logic.
      if(facultyId.indexOf(departmentId) == -1){
        res.redirect("/error/401");
        return;
      }
    }
  }
  var callback = function(error, result){
    // console.log(result);

    var industrialVisit = [];
    var industrial = result.industrial_visit;
    for(var i=0;i<industrial.length;i++){
      var singleEntry = {
       industryName: industrial[i].industryName,
       dateOfVisit: industrial[i].dateOfVisit,
       place: industrial[i].place,
       semester: industrial[i].semester,
       noOfStudents: industrial[i].noOfStudents,
       departmentId: industrial[i].departmentId,
       slNo: industrial[i].slNo
      }
      industrialVisit.push(singleEntry);
    }

    var invitedGuestLectures = [];
    var invited = result.guest_lectures_invited;
    for(var i=0;i<invited.length;i++){
      var singleEntry = {
        guestName: invited[i].guestName,
        designation: invited[i].designation,
        affiliation: invited[i].affiliation,
        title: invited[i].title,
        areaOfSpecialization: invited[i].areaOfSpecialization,
        date: invited[i].date,
        departmentId: invited[i].departmentId,
        slNo: invited[i].slNo
      }
      invitedGuestLectures.push(singleEntry);
    }

    var events_organized = [];
    var events = result.events_organized;
    for(var i=0;i<events.length;i++){
      var singleEntry = {
        event: events[i].event,
        title: events[i].title,
        startDate: events[i].startDate,
        endDate: events[i].endDate,
        noOfParticipants: events[i].noOfParticipants,
        sponsors: events[i].sponsors,
        coordinators: events[i].coordinators,
        collaborators: events[i].collaborators,
        slNo: events[i].slNo,
        departmentId: events[i].departmentId
      }
      events_organized.push(singleEntry);
    }
    // console.log("accessing the activites page query deptID = " + req.query.departmentId + " session deptId" + req.session.departmentId );

    var industrial_collaboration_mou = [];
    var mou = result.department_industrial_collaboration_mou;
    for(var i=0;i<mou.length;i++){
      var singleEntry = {
        coordinators: mou[i].coordinators,
        mouTitle: mou[i].mouTitle,
        mouSignedWith: mou[i].mouSignedWith,
        typeOfMou: mou[i].typeOfMou,
        nationalOrInternational: mou[i].nationalOrInternational,
        mouSigningDate: mou[i].mouSigningDate,
        validTill: mou[i].validTill,
        slNo: mou[i].slNo,
        departmentId: mou[i].departmentId
      }
      industrial_collaboration_mou.push(singleEntry);
    }

    var fundedProjectDept = [];
    var funded_projects_dept = result.funded_projects_dept;
    for(var i=0;i<funded_projects_dept.length;i++){
      var singleEntry = {
        facultyName: funded_projects_dept[i].facultyName,
        projectTitle: funded_projects_dept[i].projectTitle,
        projectType: funded_projects_dept[i].projectType,
        fundingAgency: funded_projects_dept[i].fundingAgency,
        amount: funded_projects_dept[i].amount,
        duration: funded_projects_dept[i].amount,
        slNo: funded_projects_dept[i].slNo,
        departmentId: funded_projects_dept[i].departmentID
      }
      fundedProjectDept.push(singleEntry);
    }

    var fundedProjectDept_stu = [];
    var funded_projects_dept_stu = result.student_funded_projects_dept;
    for(var i=0;i<funded_projects_dept_stu.length;i++){
      var singleEntry = {
        studentName: funded_projects_dept_stu[i].studentName,
        projectTitle: funded_projects_dept_stu[i].projectTitle,
        projectType: funded_projects_dept_stu[i].projectType,
        fundingAgency: funded_projects_dept_stu[i].fundingAgency,
        amount: funded_projects_dept_stu[i].amount,
        duration: funded_projects_dept_stu[i].amount,
        slNo: funded_projects_dept_stu[i].slNo,
        departmentId: funded_projects_dept_stu[i].departmentID
      }
      fundedProjectDept_stu.push(singleEntry);
    }

    var consultancy = [];
    var consultancy_ = result.dept_consultancy;
    for(var i=0;i<consultancy_.length;i++){
      var singleEntry = {
        facultyName: consultancy_[i].facultyName,
        projectTitle: consultancy_[i].projectTitle,
        projectType: consultancy_[i].projectType,
        fundingAgency: consultancy_[i].fundingAgency,
        amount: consultancy_[i].amount,
        approvalDate: consultancy_[i].approvalDate,
        duration: consultancy_[i].amount,
        slNo: consultancy_[i].slNo,
        departmentId: consultancy_[i].departmentID
      }
      consultancy.push(singleEntry);
    }

      res.render('department/activities', { departmentId: departmentId, type: 'activities',
      data:{industrial_visit:industrialVisit, guest_lectures_invited:invitedGuestLectures, events_organized:events_organized, department_industrial_collaboration_mou:industrial_collaboration_mou, funded_projects_dept:fundedProjectDept,student_funded_projects_dept:fundedProjectDept_stu, consultancy:consultancy},
      authType:req.session.facultyId, GetParam:req.query.departmentId,
      index: {
        url: '/department/activities',
        industrial_visit:
        {
          industryName: "Industry/Organization",
          dateOfVisit: "Date of Visit",
          place: "Place",
          semester: "Semester",
          noOfStudents: "No of Students",
          departmentId: "departmentId",
          slNo: "slNo"
        },
        guest_lectures_invited: {
          slNo: "Sl. No",
          guestName: "Guest Lecturer Name",
          designation: "Designation",
          affiliation: "Affiliation",
          title: "Title",
          areaOfSpecialization: "Area Of Specialization",
          date: "Date",
          departmentId: "DepartmentId"
        },
        events_organized: {
          slNo: "Sl. No",
          event: "Event",
          title: "Title",
          startDate: "Start Date",
          endDate: "End Date",
          noOfParticipants: "No. of Participants",
          sponsors: "Sponsors",
          coordinators: "Coordinator(s)",
          collaborators: "Collaborator(s) if any",
          departmentId: "Department Id"
        },
        department_industrial_collaboration_mou: {
          slNo: "Sl. No",
          coordinators: "Coordinator(s)",
          mouTitle: "MOU Title",
          mouSignedWith: "MOU Signed With Industry/Organization",
          typeOfMou: "Type of MOU",
          nationalOrInternational: "National / International",
          mouSigningDate: "Date of signing",
          validTill: "Valid Till",
          departmentId: "Department Id"
        },
        funded_projects_dept: {
          slNo: "Sl. No",
          facultyName: "Name of the Faculty",
          projectTitle: "Project Title",
          projectType: "Project Type",
          fundingAgency: "Funding Agency",
          amount: "Amount (in Lakhs)",
          duration: "Duration",
          departmentId: "Department ID"
        },
        student_funded_projects_dept: {
          slNo: "Sl. No",
          studentName: "Name of the Student",
          projectTitle: "Project Title",
          projectType: "Project Type",
          fundingAgency: "Funding Agency",
          amount: "Amount (in Lakhs)",
          duration: "Duration",
          departmentId: "Department ID"
        },
        consultancy: {
          slNo: "Sl. No",
          facultyName: "Name of the Faculty",
          projectTitle: "Project Title",
          fundingAgency: "Funding Agency",
          amount: "Amount (in Lakhs)",
          approvalDate: "Approval Date",
          duration: "Duration",
          departmentId: "Department ID"
        }
      },
      hiddenFields:{
        industrial_visit:
        {
          industryName: { view: false, insert: false, update: false },
          dateOfVisit: { view: false, insert: false, update: false },
          place: { view: false, insert: false, update: false },
          semester: { view: false, insert: false, update: false },
          noOfStudents: { view: false, insert: false, update: false },
          departmentId: { view: true, insert: true, update: true },
          slNo: { view: true, insert: true, update: true }
        },
        guest_lectures_invited: {
          slNo: { view: true, insert: true, update: true },
          guestName: { view: false, insert: false, update: false },
          designation: { view: false, insert: false, update: false },
          affiliation: { view: false, insert: false, update: false },
          title: { view: false, insert: false, update: false },
          areaOfSpecialization: { view: false, insert: false, update: false },
          date: { view: false, insert: false, update: false },
          departmentId: { view: true, insert: true, update: true }
        },
        events_organized: {
          slNo: { view: true, insert: true, update: true },
          event: { view: false, insert: false, update: false },
          title: { view: false, insert: false, update: false },
          startDate: { view: false, insert: false, update: false },
          endDate: { view: false, insert: false, update: false },
          noOfParticipants: { view: false, insert: false, update: false },
          sponsors: { view: false, insert: false, update: false },
          coordinators: { view: false, insert: false, update: false },
          collaborators: { view: false, insert: false, update: false },
          departmentId: { view: true, insert: true, update: true }
        },
        department_industrial_collaboration_mou: {
          slNo: { view: true, insert: true, update: true },
          coordinators: { view: false, insert: false, update: false },
          mouTitle: { view: false, insert: false, update: false },
          mouSignedWith: { view: false, insert: false, update: false },
          typeOfMou: { view: false, insert: false, update: false },
          nationalOrInternational: { view: false, insert: false, update: false },
          mouSigningDate: { view: false, insert: false, update: false },
          validTill: { view: false, insert: false, update: false },
          departmentId: { view: true, insert: true, update: true }
        },
        funded_projects_dept: {
          slNo: { view: true, insert: true, update: true },
          facultyName: { view: false, insert: false, update: false },
          projectTitle: { view: false, insert: false, update: false },
          projectType: { view: false, insert: false, update: false },
          fundingAgency: { view: false, insert: false, update: false },
          amount: { view: false, insert: false, update: false },
          duration: { view: false, insert: false, update: false },
          departmentId: { view: true, insert: true, update: true }
        },
        student_funded_projects_dept: {
          slNo: { view: true, insert: true, update: true },
          studentName: { view: false, insert: false, update: false },
          projectTitle: { view: false, insert: false, update: false },
          projectType: { view: false, insert: false, update: false },
          fundingAgency: { view: false, insert: false, update: false },
          amount: { view: false, insert: false, update: false },
          duration: { view: false, insert: false, update: false },
          departmentId: { view: true, insert: true, update: true }
        },
        consultancy: {
          slNo: { view: true, insert: true, update: true },
          facultyName: { view: false, insert: false, update: false },
          projectTitle: { view: false, insert: false, update: false },
          fundingAgency: { view: false, insert: false, update: false },
          amount: { view: false, insert: false, update: false },
          approvalDate: { view: false, insert: false, update: false },
          duration: { view: false, insert: false, update: false },
          departmentId: { view: true, insert: true, update: true }
        }
      },

      insertPermission:departmentPermissions.insertPermission,
      updatePermission:departmentPermissions.updatePermission
  });
  }
  sqlExecute.getDepartmentActivities(callback, departmentId);
});


router.get('/admission-details', function(req, res, next) {
  if(req.query.departmentId){
    departmentId = req.query.departmentId;
  } else{
    departmentId = req.session.departmentId;
  }

  var facultyId = req.session.facultyId;
  if(facultyId === 'admin' || facultyId === 'principal'){
    //if it is an admin or the principal allow access.
  }
  else {
    //if it is a faculty or hod or coordinator they have only department level access.
    if(facultyId === 'hod' || facultyId === 'coordinator'){
      //this is hod or coordinator level logic.
      var mEmail = req.session.email;
      mEmail = mEmail.split("@")[0];
      if(mEmail.indexOf(departmentId) == -1){
        res.redirect("/error/401");
        return;
      }
    }
    else {
      //this is faculty level logic.
      if(facultyId.indexOf(departmentId) == -1){
        res.redirect("/error/401");
        return;
      }
    }
  }

  var callback = function(error, result){
    // console.log(result);
    var admission = []
    var admissionSpcific = result.admissions;
    for(var i=0; i<admissionSpcific.length; i++){
      var singleEntry = {
        departmentId: admissionSpcific[i].departmentId,
        year: admissionSpcific[i].year,
        noOfUgStudents: admissionSpcific[i].noOfUgStudents,
        noOfPgStudents: admissionSpcific[i].noOfPgStudents,
        noOfPgStudentsWithGateScore: admissionSpcific[i].noOfPgStudentsWithGateScore,
        ugCet: admissionSpcific[i].ugCet,
        ugComedK: admissionSpcific[i].ugComedK,
        pgCet: admissionSpcific[i].pgCet,
        pgComedK: admissionSpcific[i].pgComedK,
        lateralEntry: admissionSpcific[i].lateralEntry,
        fullTimePhd: admissionSpcific[i].fullTimePhd,
        partTimePhd: admissionSpcific[i].partTimePhd,
        mscByResearch: admissionSpcific[i].mscByResearch
       }
       admission.push(singleEntry);
    }
    res.render('department/admission-details', { departmentId: departmentId, type: 'admission-details',
      data:{admissions: admission},
      authType:req.session.facultyId, GetParam:req.query.departmentId,
      index: {
        url: "/department/admission-details",
        admissions:{
          year: "Year",
          noOfUgStudents: "No of UG students admitted	",
          noOfPgStudents: "No of PG students admitted	",
          noOfPgStudentsWithGateScore: "No of PG students with GATE score	",
          ugCet: "CET",
          ugComedK: "COMEDK",
          pgCet: "CET",
          pgComedK: "COMEDK",
          lateralEntry: "Admitted Through Lateral Entry	",
          fullTimePhd: "Full Time	",
          partTimePhd: "Part Time ",
          mscByResearch: "MSc by research",
          departmentId: "departmentId"
        }
      },
      hiddenFields: {
        admissions:{
          year: { view: false, insert: false, update: true },
          noOfUgStudents: { view: false, insert: false, update: false },
          noOfPgStudents: { view: false, insert: false, update: false },
          noOfPgStudentsWithGateScore: { view: false, insert: false, update: false },
          ugCet: { view: false, insert: false, update: false },
          ugComedK: { view: false, insert: false, update: false },
          pgCet: { view: false, insert: false, update: false },
          pgComedK: { view: false, insert: false, update: false },
          lateralEntry: { view: false, insert: false, update: false },
          fullTimePhd: { view: false, insert: false, update: false },
          partTimePhd: { view: false, insert: false, update: false },
          mscByResearch: { view: false, insert: false, update: false },
          departmentId: { view: true, insert: true, update: true }
        }
      },

      insertPermission:departmentPermissions.insertPermission,
      updatePermission:departmentPermissions.updatePermission  });
    }

  sqlExecute.getAdmissionDetails(callback, departmentId);
});

router.get('/bosboe', function(req, res, next) {
  if(req.query.departmentId){
    departmentId = req.query.departmentId;
  } else{
    departmentId = req.session.departmentId;
  }
  var facultyId = req.session.facultyId;
  if(facultyId === 'admin' || facultyId === 'principal'){
    //if it is an admin or the principal allow access.
  }
  else {
    //if it is a faculty or hod or coordinator they have only department level access.
    if(facultyId === 'hod' || facultyId === 'coordinator'){
      //this is hod or coordinator level logic.
      var mEmail = req.session.email;
      mEmail = mEmail.split("@")[0];
      if(mEmail.indexOf(departmentId) == -1){
        res.redirect("/error/401");
        return;
      }
    }
    else {
      //this is faculty level logic.
      if(facultyId.indexOf(departmentId) == -1){
        res.redirect("/error/401");
        return;
      }
    }
  }

  // res.render('department/bosboe', { departmentId: departmentId, type:'bosboe', authType:req.session.facultyId , GetParam:req.query.departmentId || req.session.departmentId})

  var callback = function(error, result){
    // console.log(result);
    // var professionalActivities = [];
    // var professional = result.professional_activities;
    // for(var i=0;i<professional.length;i++){
    //   var singleEntry = {
    //     facultyName: professional[i].facultyName,
    //     board: professional[i].board,
    //     college: professional[i].college,
    //     externalOrInternal: professional[i].externalOrInternal,
    //     year: professional[i].year,
    //     slNo: professional[i].slNo
    //   }
    //   professionalActivities.push(singleEntry);
    // }

    var bosMember = [];
    var other = result.bos_membership;
    for(var i=0;i<other.length;i++){
      var singleEntry = {
        memberName: other[i].memberName,
        designation: other[i].designation,
        organization: other[i].organization,
        course: other[i].course,
        year: other[i].year,
        slNo: other[i].slNo
      }
      bosMember.push(singleEntry);
    }


    var boeMember = [];
    var other = result.boe_membership;
    for(var i=0;i<other.length;i++){
      var singleEntry = {
        memberName: other[i].memberName,
        designation: other[i].designation,
        organization: other[i].organization,
        course: other[i].course,
        year: other[i].year,
        slNo: other[i].slNo
      }
      boeMember.push(singleEntry);
    }


    res.render('department/bosboe', { departmentId: departmentId, type:'bosboe',
    data:{bos_membership: bosMember,boe_membership:boeMember},
    authType:req.session.facultyId , GetParam:req.query.departmentId || req.session.departmentId,
    index:{
      url: '/department/bosboe',
      bos_membership:{
        slNo: "Sl. No",
        memberName: "Name of the Member",
        designation: "Designation",
        year: "Year",
        organization: "Organization",
        course: "Course",
        departmentId: "departmentId"
      },
      boe_membership:{
        slNo: "Sl. No",
        memberName: "Name of the Member",
        designation: "Designation",
        year: "Year",
        organization: "Organization",
        course: "Course",
        departmentId: "departmentId"
      }
    },
    hiddenFields:{
      bos_membership:{
        slNo: { view: true, insert: true, update: true } ,
        memberName: { view: false, insert: false, update: false },
        designation: { view: false, insert: false, update: false },
        year: { view: false, insert: false, update: false },
        organization: { view: false, insert: false, update: false },
        course: { view: false, insert: false, update: false },
        departmentId: { view: true, insert: true, update: true }
      },
      boe_membership:{
        slNo: { view: true, insert: true, update: true } ,
        memberName: { view: false, insert: false, update: false },
        designation: { view: false, insert: false, update: false },
        year: { view: false, insert: false, update: false },
        organization: { view: false, insert: false, update: false },
        course: { view: false, insert: false, update: false },
        departmentId: { view: true, insert: true, update: true }
      }
    },
    insertPermission:departmentPermissions.insertPermission,
    updatePermission:departmentPermissions.updatePermission });
  }

   sqlExecute.getBosBoeDetails(callback, departmentId);
});

router.get('/r&d', function(req, res, next){
  if(req.query.departmentId){
    departmentId = req.query.departmentId;
  } else{
    departmentId = req.session.departmentId;
  }
  var facultyId = req.session.facultyId;
  if(facultyId === 'admin' || facultyId === 'principal'){
    //if it is an admin or the principal allow access.
  }
  else {
    //if it is a faculty or hod or coordinator they have only department level access.
    if(facultyId === 'hod' || facultyId === 'coordinator'){
      //this is hod or coordinator level logic.
      var mEmail = req.session.email;
      mEmail = mEmail.split("@")[0];
      if(mEmail.indexOf(departmentId) == -1){
        res.redirect("/error/401");
        return;
      }
    }
    else {
      //this is faculty level logic.
      if(facultyId.indexOf(departmentId) == -1){
        res.redirect("/error/401");
        return;
      }
    }
  }
  var callback = function(error, result){

    var researchOther = [];
    var researchO = result.research_other;
    for(var i=0;i<researchO.length;i++){
      var singleEntry = {
        scholarName: researchO[i].scholarName,
        usn: researchO[i].usn,
        title: researchO[i].title,
        supervisorName: researchO[i].supervisorName,
        researchCenter: researchO[i].researchCenter,
        year: researchO[i].year,
        status: researchO[i].status,
        slNo: researchO[i].slNo
      }
      researchOther.push(singleEntry);
    }


    var researchRit = [];
    var researchR = result.research_rit;
    for(var i=0;i<researchR.length;i++){
      var singleEntry = {
        scholarName: researchR[i].scholarName,
        usn: researchR[i].usn,
        title: researchR[i].title,
        supervisorName: researchR[i].supervisorName,
        programName: researchR[i].programName,
        affiliation: researchR[i].affiliation,
        year: researchR[i].year,
        status: researchR[i].status,
        slNo: researchR[i].slNo
      }
      researchRit.push(singleEntry);
    }


    res.render('department/r&d', { departmentId: departmentId, type:'r&d',
    data:{research_other: researchOther,research_rit:researchRit},
    authType:req.session.facultyId , GetParam:req.query.departmentId || req.session.departmentId,
    index:{
      url: '/department/r&d',
      research_other:{
        slNo: "Sl. No",
        scholarName: "Name of the Research Scholar",
        usn: "USN",
        title: "Title",
        supervisorName: "Research Supervisor",
        researchCenter: "University or R&D Center",
        year: "Registration Year",
        status: "Status of Completion",
        departmentId: "departmentId"
      },
      research_rit:{
        slNo: "Sl. No",
        scholarName: "Name of the Research Scholar",
        usn: "USN",
        title: "Title",
        supervisorName: "Research Supervisor",
        programName: "Program",
        affiliation: "Affiliation of Research Scholar",
        year: "Registration Year",
        status: "Status of Completion",
        departmentId: "departmentId"
      }
    },
    hiddenFields:{
      research_other:{
        slNo: { view: true, insert: true, update: true } ,
        scholarName: { view: false, insert: false, update: false },
        usn: { view: false, insert: false, update: false },
        title: { view: false, insert: false, update: false },
        supervisorName: { view: false, insert: false, update: false },
        researchCenter: { view: false, insert: false, update: false },
        year: { view: false, insert: false, update: false },
        status: { view: false, insert: false, update: false },
        departmentId: { view: true, insert: true, update: true }
      },
      research_rit:{
        slNo: { view: true, insert: true, update: true } ,
        scholarName: { view: false, insert: false, update: false },
        usn: { view: false, insert: false, update: false },
        title: { view: false, insert: false, update: false },
        supervisorName: { view: false, insert: false, update: false },
        programName: { view: false, insert: false, update: false },
        affiliation: { view: false, insert: false, update: false },
        year: { view: false, insert: false, update: false },
        status: { view: false, insert: false, update: false },
        departmentId: { view: true, insert: true, update: true }
      }
    },
    insertPermission:departmentPermissions.insertPermission,
    updatePermission:departmentPermissions.updatePermission });
  }

   sqlExecute.getRnDDetails(callback, departmentId);
});

router.get('/getExcel', function(req, res, next){
	res.setHeader('Content-Type', 'application/json');

  utility.checkSesssion(req, res);



	  // console.log('here');
	    var query = req.cookies['query'];
			// console.log("Here is my query:" + query);

	    var callBack = function(result)
			{
	        generateexcel.getExcelSheet(preProcessor.removeHiddenFields(result), "Report.xls", res);
	    }
	    // console.log(Array(req.body.whereOption));
	    sqlExecute.executeDirectQuery(query, callBack);

	    //sqlExecute.getJointFacultyInfo(callBack, req.params.tableName);*/

});

router.get('/getSummary/:tableName/:from/:to/:departmentId/:type', function(req, res, next){
	res.setHeader('Content-Type', 'application/json');
	utility.checkSesssion(req, res);
  // console.log('here');
  // console.log("years"+ req.params.from+" "+req.params.to);
  var tableName = req.params.tableName;


    var callBack = function(result)
		{
        generateexcel.getExcelSheet(result, "Report.xls", res);
    }
    sqlExecute.executeSummaryQuery(tableName, req.params.from, req.params.to,req.params.departmentId, req.params.type, callBack);

	    //sqlExecute.getJointFacultyInfo(callBack, req.params.tableName);*/

});



router.get('/', function(req, res, next) {

  if(!utility.checkSesssion(req, res))
		return;

	var facultyId;
	var auth = true;

	if(!utility.checkGetParam(req,res)){
		facultyId = req.session.facultyId;
	}
	else{
		if(req.session.facultyId != "admin" && req.session.facultyId != "principal"){
			auth = false;
		}
		facultyId = req.query.fId;
	}


  if(req.query.departmentId){
    var departmentId = req.query.departmentId;
  } else{
    var departmentId = req.session.departmentId;
  }
  // console.log("department-index facultyId " + facultyId + " departmentId " + departmentId);
  if(facultyId === 'admin' || facultyId === 'principal'){
    //if it is an admin or the principal allow access.
  }
  else {
    //if it is a faculty or hod or coordinator they have only department level access.
    if(facultyId === 'hod' || facultyId === 'coordinator'){
      //this is hod or coordinator level logic.
      var mEmail = req.session.email;
      mEmail = mEmail.split("@")[0];
      if(mEmail.indexOf(departmentId) == -1){
        res.redirect("/error/401");
        return;
      }
    }
    else {
      //this is faculty level logic.
      if(facultyId.indexOf(departmentId) == -1){
        res.redirect("/error/401");
        return;
      }
    }
  }
  var callback = function(err,result){
    if(err){
      throw err;
    }
    var data=[];
		for(var i=0;i<result.length;i++){
			var myR={};
      tresult=result[i];
      myR["Fid"] = tresult["facultyId"];
			myR["Name"]=tresult["facultyName"];
			myR["Gender"]=tresult["gender"];
			myR["Designation"]=tresult["designation"];
			myR["Nature of Appointment"]=tresult["natureOfAppointment"];
			myR["Contact No."]=tresult["contactNumber"];
			myR["Email Id"]=tresult["emailId"];
			data.push(myR);
    }
    var newResult = {'faculty' : data};
    res.render('department/index', {departmentId: departmentId, type:'index', data:{departmentGeneralInfo:newResult['faculty']},
    index:{
      url:"/faculty/",
      departmentGeneralInfo:{
        facultyName:"Faculty Name",
        gender:"Gender",
        designation:"Designation",
        atureOfAppointment:"Nature Of Appointment",
        contactNumber:"Contact No.",
        emailId:"Email Id"
      }
    },
    authType:req.session.facultyId, GetParam:req.query.departmentId,
    insertPermission:departmentPermissions.insertPermission,
    updatePermission:departmentPermissions.updatePermission
  });
  }
  sqlExecute.getDepartmentFacultyInfo(callback,departmentId);
});

router.get('/generateexcel/:tableNo/:index/',function(req,res,next){
  if(!utility.checkSesssion(req, res)) return;

  var facultyId = req.session.facultyId;
  if(facultyId === 'admin' || facultyId === 'principal'){
    //if it is an admin or the principal allow access.
  }
  else {
    //if it is a faculty or hod or coordinator they have only department level access.
    if(facultyId === 'hod' || facultyId === 'coordinator'){
      //this is hod or coordinator level logic.
      var mEmail = req.session.email;
      mEmail = mEmail.split("@")[0];
      if(mEmail.indexOf(departmentId) == -1){
        res.redirect("/error/401");
        return;
      }
    }
    else {
      //this is faculty level logic.
      if(facultyId.indexOf(departmentId) == -1){
        res.redirect("/error/401");
        return;
      }
    }
  }
  // console.log("this is " + req.params.facultyTable);
  var map=["", "", "", "", "", "",""];
  var index = req.params.index;
  if(req.query.departmentId){
	  var dId = req.query.departmentId;
  } else{
	  var dId = req.session.departmentId;
  }

  var tableno = parseInt(req.params.tableNo)-1;
  var callback=function(err, result){
	if(index == 1){
		generateexcel.getExcelSheet(result,map[tableno] + ".xls",res);
	} else{
		generateexcel.getExcelSheet(result[map[tableno]],map[tableno]+ ".xls",res);
	}
	if(err || result.length==0){
		// console.log("It reached in error");
		res.send("error");
	}
	}

  if(index == 1){
	sqlExecute.getDepartmentFacultyInfo(callback,dId);
	map[0]="department_faculty_details";
  }
  if(index == 2){
	sqlExecute.getStudentInformation(callback,dId);
  map[0]="student_achievement";
  map[1]= "student_activities";
  map[2]= "student_publication";
  map[3] = "student_conference_publications";
  map[4] = "student_journal_publications";
  map[5] = "higher_studies";
  map[6] = "competative_exam_details";
  map[7] = "placement_details_ug";
  map[8] = "student_achievement_pg";
  map[9] = "student_activities_pg";
  map[10] = "student_conference_publications_pg";
  map[11] = "student_journal_publications_pg";
  map[12] = "project_details_pg";
  map[13] = "internship_ug";
  map[14] = "internship_pg";
  map[15] = "project_details_ug"

}
  if(index == 3){
    map[0] = "hardware";
    map[1] = "software";
	  sqlExecute.getInfrastructureDetails(callback,dId);
  }
  if(index == 4){
	  map[0] = "admissions";
	  sqlExecute.getAdmissionDetails(callback,dId);
  }
  if(index == 5){
	map[0] = "industrial_visit";
	map[1] = "guest_lectures_invited";
  map[2] = "events_organized";
  map[3] = "department_industrial_collaboration_mou";
  map[4] = "funded_projects_dept";
  map[5] = "student_funded_projects_dept";
  map[6] = "consultancy";
 	  sqlExecute.getDepartmentActivities(callback, dId);
  }
  if(index == 6){
	// map[0] = "professional_activities";
	// map[1] = "professional_body_membership";
	map[2] = "bos_membership";
  map[3] = "boe_membership";
	  sqlExecute.getBosBoeDetails(callback, dId);
  }
  if(index == 7){
    map[0] = "research_other";
    map[1] = "research_rit";
      sqlExecute.getRnDDetails(callback, dId);
  }
});

router.use('/add-faculty', require('./add-faculty'))


module.exports = router;
