var naturalJoinApi = function()
{
  this.tablesDictionary = {"faculty_qualification" : "faculty NATURAL JOIN ", "book" : "faculty NATURAL JOIN ", "book_chapter" : "faculty NATURAL JOIN ", "conference_paper" : "faculty NATURAL JOIN ",
"consultancy" : "faculty NATURAL JOIN ", "courses_handled" : "faculty NATURAL JOIN ", "faculty" : "department NATURAL JOIN ", "faculty_conference_symposia" : "faculty NATURAL JOIN ",
"faculty_guest_lecture" : "faculty NATURAL JOIN ", "faculty_patent" : "faculty NATURAL JOIN ", "faculty_research" : "faculty NATURAL JOIN ", "faculty_workshop_fdp" : "faculty NATURAL JOIN ",
"funded_projects" : "faculty NATURAL JOIN ", "department_industrial_collaboration_mou" : "department NATURAL JOIN ", "journal_paper" : "faculty NATURAL JOIN ", "phd_scholar" : "faculty NATURAL JOIN ",
"projects_handled" : "faculty NATURAL JOIN ", "admissions" : "", "department" : "", "guest_lectures_invited" : "department NATURAL JOIN ", "industrial_visit" : "department NATURAL JOIN ",
"non_teaching_staff" : "department NATURAL JOIN ", "other_membership" : "department NATURAL JOIN ", "professional_activities" : "faculty NATURAL JOIN ", "professional_body_membership" : "faculty NATURAL JOIN ",
"software" : "department NATURAL JOIN ", "staff_achievement" : "non_teaching_staff NATURAL JOIN ", "student_achievement" : "department NATURAL JOIN ", "student_activities" : "department NATURAL JOIN ", "stduent_publication" : "department NATURAL JOIN ",
"institution" : "","hardware" : "department NATURAL JOIN ", "faculty_service" : "faculty NATURAL JOIN ", "staff_service" : "non_teaching_staff NATURAL JOIN ", "events_organized" : "department NATURAL JOIN ", "scholarship":"", "governing_body":"", "administrator_login":"",
"academic_council" : "", "finance":"", "student_publication": "department NATURAL JOIN ", "faculty" : "", "events_organized":"department NATURAL JOIN ", "student_conference_publications":"department NATURAL JOIN ", "student_journal_publications":"department NATURAL JOIN ",
"higher_studies":"department NATURAL JOIN ", "competative_exam_details":"department NATURAL JOIN ", "placement_details_ug":"department NATURAL JOIN ", "bos_membership":"department NATURAL JOIN ", "boe_membership":"department NATURAL JOIN ", "placement_details_pg":"department NATURAL JOIN ",
"internship_pg":"department NATURAL JOIN ", "project_details_pg":"department NATURAL JOIN ", "student_achievement_pg":"department NATURAL JOIN ", "student_activities_pg":"department NATURAL JOIN ", "student_conference_publications_pg":"department NATURAL JOIN ",
"student_journal_publications_pg":"department NATURAL JOIN ", "dept_consultancy": "department NATURAL JOIN ", "funded_projects_dept":"department NATURAL JOIN ", "industrial_collaboration_mou":"department NATURAL JOIN ","internship_ug":"department NATURAL JOIN ",
"project_details_ug":"department NATURAL JOIN ","research_other": "department NATURAL JOIN ","research_rit": "department NATURAL JOIN ", "student_funded_projects_dept": "department NATURAL JOIN "
};

}
naturalJoinApi.prototype.getJoinTable = function(tableName)
{

  return this.tablesDictionary[tableName];
}

var naturalJoinHelper = new naturalJoinApi();
module.exports = naturalJoinHelper;
