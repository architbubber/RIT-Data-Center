var converter = function()
{

  this.yearDictionary = {"faculty_qualification" : "passYear", "book" : "year", "book_chapter" : "year", "conference_paper" : "year",
  "consultancy" : "sanctionedDate", "faculty" : "dob", "faculty_conference_symposia" : "date",
  "faculty_guest_lecture" : "date", "faculty_patent" : "publicationDate", "faculty_research" : "registrationYear", "faculty_workshop_fdp" : "date",
  "funded_projects" : "dateSanctioned", "department_industrial_collaboration_mou" : "mouSigningDate", "journal_paper" : "date", "phd_scholar" : "registrationYear",
  "projects_handled" : "batch", "admissions" : "year", "department" : "yearOfEstablishment", "guest_lectures_invited" : "date", "industrial_visit" : "dateOfVisit",
  "non_teaching_staff" : "dob", "professional_activities" : "year", "professional_body_membership" : "subscriptionYear",
  "software" : "dateOfProcurement", "staff_achievement" : "date", "student_achievement" : "date", "student_activities" : "date", "stduent_publication" : "date",
  "institution" : "yearOfEstablishment", "student_conference_publications":"year", "student_journal_publications":"date", "higher_studies":"yearOfPassing",
  "competative_exam_details":"yearOfPassing", "placement_details_ug":"yearOfPassing", "hardware":"dateOfProcurement", "faculty_guest_lecture":"date",
  "events_organized":"startDate"
};

  this.publicationDictionary = {"conference_paper" : "conferenceType", "journal_paper" : "journalType"};

  this.extIntDictionary = {"professional_activities" : "externalOrInternal"};
  this.indexingDictionary = {"journal_paper": "indexing", "student_journal_publications": "indexing", "student_journal_publications_pg": "indexing"}
}
converter.prototype.yearTranslator = function(tableName)
{

  return this.yearDictionary[tableName];
}
converter.prototype.publicationTranslator = function(tableName)
{

  return this.publicationDictionary[tableName];
}
converter.prototype.extIntTranslator = function(tableName)
{
  return this.extIntDictionary[tableName];
}
converter.prototype.indexingTranslator = function(tableName)
{
  return this.indexingDictionary[tableName];
}

var converterApi = new converter();
