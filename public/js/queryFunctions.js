var columnsSelected = "";
var tableLock = 0;
var graph = false;
initializeQueryPage();

$("#getReportDepartment").click(function()
{
  performFilterOperations('report', reportCallBack);
  function reportCallBack(finalQuery)
  {
    document.cookie="query = " + finalQuery;
    var x = document.cookie;
    window.location.href = "/department/getExcel/";
  }
});
$("#getReportAdmin").click(function()
{
  performFilterOperations('report', reportCallBack);
  function reportCallBack(finalQuery)
  {
    document.cookie="query = " + finalQuery;
    var x = document.cookie;
    window.location.href = "/admin/getExcel/";
  }
});

$("#getSummaryAdmin").click(function(){
    graph = false;
    filteredSummaryReport("admin");
});

$('#getSummaryGraphAdmin').click(function(){
    graph = true;
    filteredSummaryReport("admin");
   // var canvas = $('#myCanvas');
});

$("#getSummaryDepartment").click(function(){
    filteredSummaryReport("department");
});


function initializeQueryPage()
{
  document.getElementById("type").value = "ALL";
  document.getElementById("type").disabled = true;
  document.getElementById("extint").value = "ALL";
  document.getElementById("extint").disabled = true;
  document.getElementById("indexing").value = "ALL";
  document.getElementById("indexing").disabled = true;

}

function setFacultyNamesFilter(tableName)
{
  if(facultyLevelTables.indexOf(tableName) == -1)
  {
    document.getElementById("facultyList").value = "ALL";
    document.getElementById("facultyList").disabled = true;

    // console.log("after disabling" +$('#facultyList').val());
  }
  else
  {
    document.getElementById("facultyList").disabled = false;
  }

}

function getFormatedDate(subYear)
{
  var today = new Date();
  today.setYear(today.getFullYear() - subYear);
  var dd = today.getDate();
  var mm = today.getMonth()+1; //January is 0!

  var yyyy = today.getFullYear();
  if(dd<10){
      dd='0'+dd;
  }
  if(mm<10){
      mm='0'+mm;
  }
  var reqYear = yyyy+'-'+mm+'-'+dd;
  return reqYear;

}


function filteredSummaryReport(type)
{

  var tableName = $('#tableList').val();
  var department = $('#department').val();
  var year = $('#yearList').val();
  var from = $('#from').val();
  var fromYear = from.split("-")[0];
  var to = $('#to').val();
  var toYear = to.split("-")[0];
  var resFromYear="-1";
  var resToYear="-1";

  checkSummaryEligibility(tableName);
  if(from != "" || to != "")
    document.getElementById("yearList").disabled=true;
  else
    document.getElementById("yearList").disabled=false;




  var queryFilter;


  if($('#yearList').is(':enabled'))
  {
    if(year == "ALL")
    {
      resFromYear = "-1";
      resToYear = "-1";
    }
    else
    {
      resFromYear  =  ""+ converterApi.yearTranslator(tableName)+" >= '" + (getFormatedDate(year)).toString() + "'";
    }
  }
  else
  {
      if(from != "" && to != "")
      {
        //resFromYear =  ""+ converterApi.yearTranslator(tableName)+" >= "  + fromYear.toString() + "";
        //resToYear =  ""+ converterApi.yearTranslator(tableName)+" <= "  + toYear.toString() + "";
        resFromYear =  ""+ converterApi.yearTranslator(tableName)+" >= '"  + from.toString() + "'";
        resToYear =  ""+ converterApi.yearTranslator(tableName)+" <= '"  + to.toString() + "'";
      }

  }

  console.log("summary of" + tableName);
  if(type == "admin"){
    if((tableName === "conference_paper" || tableName === "journal_paper" || tableName === "placement_details_pg" || tableName === "placement_details_ug" || tableName === "student_journal_publications_pg" || tableName === "student_journal_publications") && graph == true )
    {
      // window.location.href = "/admin/getGraph/"+tableName+"/"+resFromYear+"/"+resToYear+"/"+department+"/"+type+"/";
        var request = new XMLHttpRequest();
        request.open("GET", "/admin/getGraph/"+tableName+"/"+resFromYear+"/"+resToYear+"/"+department+"/"+type+"/", true);
        request.onload = function() {
            // console.log(this.response);
            if (request.readyState == 4 && request.status == 200) {
              drawGraph(this.response, tableName);
            }
        };
        request.send();
      }
    else
    window.location.href = "/admin/getSummary/"+tableName+"/"+resFromYear+"/"+resToYear+"/"+department+"/"+type+"/";
  }
  else
    window.location.href = "/department/getSummary/"+tableName+"/"+resFromYear+"/"+resToYear+"/"+department+"/"+type+"/";

}


$("#tableList").change(function () {
  document.getElementById("title").innerHTML = $('#tableList').val();
  document.getElementById("titleDesc").innerHTML = "information about " + $('#tableList').val();
  columnsSelected = "";
  performFilterOperations('table_changed');
  tableLock =1;
});

$("#filters").change(function () {
  performFilterOperations('checkbox_changed');
});

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
function drawGraph(result, tableName){
  console.log(result);
  var jso = JSON.parse(result);
  var graph = document.getElementById('canvasDiv');
  graph.style.display = "block";
  var canvas = document.getElementById('myCanvas');
  canvas.style.height = "300px"
  if(tableName === "student_journal_publications_pg" || tableName === "student_journal_publications" || tableName === "conference_paper" || tableName === "journal_paper"){
    var inter = [], nat = [], label = [];
    for(var i=0;i < jso.length;i++){
      label.push(jso[i]["year"]);
      inter.push(jso[i]["international"]);
      nat.push(jso[i]["national"]);
    }

    var myChart = new Chart(canvas.getContext('2d'), {
      type: 'bar',
      data: {
          labels: label,
          datasets: [{
              label: 'Number of international publication',
              data: inter,
              fill: false,
              backgroundColor: 'rgba(75, 192, 192, 1)'
          },
          {label: 'Number of national publication',
          data: nat,
          fill: false,
          backgroundColor: 'rgba(255, 206, 86, 1)',
      }  ]
      },
      options: {
          scales: {
              yAxes: [{
                  ticks: {
                      beginAtZero: true
                  }
              }]
          }
      }
    });
  }
  if(tableName == "placement_details_pg"|| tableName == "placement_details_ug"){
    var placement = [], label = [];
    for(var i=0;i < jso.length;i++){
      label.push(jso[i]["year"]);
      placement.push(jso[i]["placement"]);
    }

    var myChart = new Chart(canvas.getContext('2d'), {
      type: 'line',
      data: {
          labels: label,
          datasets: [{
              label: 'Number of placement',
              data: placement,
              fill: false,
              borderColor: 'rgba(75, 192, 192, 1)'
          }]
      },
      options: {
          scales: {
              yAxes: [{
                  ticks: {
                      beginAtZero: true
                  }
              }]
          }
      }
    });
  }
}
//------------------------------------------------------------------------------


function checkPublicationTypeEnabled(table)
{
  console.log("inside checkPublicationTypeEnabled");
  var publicationType = $('#type').val();
  if(enablePublicTypeTable.indexOf(table) == -1)
  {
      document.getElementById("type").value = "ALL";
      document.getElementById("type").disabled = true;
  }
  else
  {
      document.getElementById("type").disabled = false;
  }

}


function checkExtInt(table)
{
  console.log("inside checkExtIntTypeEnabled");
  var publicationType = $('#extint').val();
  if(enableExtInt.indexOf(table) == -1)
  {
      document.getElementById("extint").value = "ALL";
      document.getElementById("extint").disabled = true;
  }
  else
  {
      document.getElementById("extint").disabled = false;
  }

}

function checkIndexing(table)
{
  console.log("inside checkIndexingEnabled");
  var indexing_ = $('#indexing').val();
  if(enableIndexing.indexOf(table) == -1)
  {
      document.getElementById("indexing").value = "ALL";
      document.getElementById("indexing").disabled = true;
  }
  else
  {
      document.getElementById("indexing").disabled = false;
  }

}

function checkboxClicked(element)
{
  if(columnsSelected == "")
    columnsSelected += element.value;
  else if(columnsSelected.split(',').indexOf(element.value) == -1)
    columnsSelected += "," + element.value;
  else {
    var tempColArray = columnsSelected.split(',');
    var duplicateIndex = tempColArray.indexOf(element.value);
    tempColArray.splice(duplicateIndex, 1);
    columnsSelected = tempColArray.toString();
  }
  performFilterOperations('checkbox_changed');
};

function checkSummaryEligibility(tableName)
{
  try
  {
    if(tableName == "journal_paper" || tableName == "conference_paper" || tableName == "student_journal_publications_pg" || tableName == "student_journal_publications" || tableName == "placement_details_pg"||tableName == "placement_details_ug")
    {
      document.getElementById("getSummaryAdmin").disabled = false;
      document.getElementById("getSummaryGraphAdmin").disabled = false;
    }
    else
    {
      document.getElementById("getSummaryAdmin").disabled = true;
      document.getElementById("getSummaryGraphAdmin").disabled = true;
    }
  }
  catch(err)
  {
    console.log("ignoring error" + err);
  }

  try
  {
    if(tableName == "journal_paper" || tableName == "conference_paper")
    {
      document.getElementById("getSummaryDepartment").disabled = false;
    }
    else
    {
      document.getElementById("getSummaryDepartment").disabled = true;
    }
  }
  catch(err)
  {
    console.log("ignoring error" + err);
  }
}
function performFilterOperations(flag, reportCallBack)
{
  // console.log("querty till here");
  if(tableLock == 1)
  {
    tableLock = 0;
    return;
  }
  // console.log("querty till here !!!");


  var tableName = $('#tableList').val();
  setFacultyNamesFilter(tableName);
  checkPublicationTypeEnabled(tableName);
  checkExtInt(tableName);
  checkIndexing(tableName);
  var department = $('#department').val();
  var facultyName = $('#facultyList').val();
  var publicationType = $('#type').val();
  var extint = $('#extint').val();
  var indexing = $('#indexing').val();
  var year = $('#yearList').val();
  var from = $('#from').val();
  var fromYear = from.split("-")[0];
  var to = $('#to').val();
  var toYear = to.split("-")[0];

  checkSummaryEligibility(tableName);
  if(from != "" || to != "")
    document.getElementById("yearList").disabled=true;
  else
    document.getElementById("yearList").disabled=false;


  var queryFilter;

  if(department == "ALL")
  {
    queryFilter = [];
  }
  else
  {
    queryFilter = ["departmentId = '"+ department +"'"];
  }


  if(facultyName == "ALL")
  {
    queryFilter = queryFilter;
  }
  else
  {
    facultyFilter = ["facultyName = '"+ facultyName +"'"];
    queryFilter.push(facultyFilter);
  }

  if(publicationType == "ALL")
  {
      queryFilter = queryFilter;
  }
  else
  {
      var publicationFilter = "" + converterApi.publicationTranslator(tableName) + " = '" + publicationType + "'";
      queryFilter.push(publicationFilter);
  }
  if(extint == "ALL")
  {
    queryFilter = queryFilter;
  }
  else
  {
    var extIntFilter = "" + converterApi.extIntTranslator(tableName) + " = '" + extint + "'";
    queryFilter.push(extIntFilter);
  }

  if(indexing == "ALL")
  {
    queryFilter = queryFilter;
  }
  else
  {
    var indexingFilter = "" + converterApi.indexingTranslator(tableName) + " = '" + indexing + "'";
    queryFilter.push(indexingFilter);
  }
  
  if($('#yearList').is(':enabled'))
  {
    if(year == "ALL")
    {
      queryFilter = queryFilter;
    }
    else
    {
      var yearFilter =  "" + converterApi.yearTranslator(tableName)+" >= '" + (getFormatedDate(year)).toString() + "'";
      queryFilter.push(yearFilter);
    }
  }
  else
  {
      if(from != "" && to != "")
      {
        //var fromYearFilter =  ""+ converterApi.yearTranslator(tableName)+" >= "  + fromYear.toString() + "";
        //var toYearFilter =  ""+ converterApi.yearTranslator(tableName)+" <= "  + toYear.toString() + "";
        var fromYearFilter =  ""+ converterApi.yearTranslator(tableName)+" >= '"  + from.toString() + "'";
        var toYearFilter =  ""+ converterApi.yearTranslator(tableName)+" <= '"  + to.toString() + "'";
        queryFilter.push(fromYearFilter);
        queryFilter.push(toYearFilter);
      }

  }
  dataForSelect = {
      'schema': columnsSelected,
      'whereOption' : queryFilter,
      'indexer' : converterApi.yearTranslator(tableName)
  };
  var url;
  if(flag == 'report')
  {
    url = '/v1/apis/data/'+tableName+'/report/';
  }
  else
  {
    url = '/v1/apis/data/'+tableName+'/getData/';
  }
  $.ajax({
      type: 'POST',
      data: JSON.stringify(dataForSelect),
      contentType: 'application/json',
      //url: 'http://localhost:3000/v1/apis/data/'+tableName+'/',
      url: url,
      success: function(dataRecieved) {
        if(flag == 'report')
        {
            reportCallBack(dataRecieved);
        }
        else
        {
          //dataRecieved = preProcessApi.removeHiddenFields(dataRecieved);
          finalResultSet = dataRecieved;
          if(document.getElementById("canvasDiv").style.display == "block")
            document.getElementById("canvasDiv").style.display = "none";
          if(flag == 'table_changed')
            buildColumnFilters(dataRecieved);
          buildTable(dataRecieved);
        }
      }
    });
}


function buildColumnFilters(json)
{
  if(json == "")
    return;
  var columnsAttributes = Object.keys(json[0]);
  var tab= $('#columnFilter');
  var columnChecks = "";
  columnChecks += ("<table border = 1>");
  columnChecks += ("<tr>");

  for(var i = 0; i < columnsAttributes.length; i++)
  {

       columnChecks += ("<td class='col-md-1'><div class='checkbox'><label><input type='checkbox' id = 'column"+i+"'  value='"+ columnsAttributes[i] +"' onchange='checkboxClicked(this)'>"+columnsAttributes[i]+"</label></div></td>");
  }
  columnChecks += ("</tr>");

  columnChecks += ("</table>");

  tab.html(columnChecks);

}

function buildTable(json)
{
   $("#tableR").empty();
  if(json == "")
    return;
  var columnsAttributes = Object.keys(json[0]);
  var tab= $('#tableR');
  var tr;
  tr = "";

tr+=("<thead class='text-primary'>")
  for(var j = 0; j < columnsAttributes.length; j++)
  {
    dataEntry = columnsAttributes[j];

    tr+=("<th>" + dataEntry + "</th>");

  }
tr+=("</thead><tbody>")


  for (var i = 0; i < json.length; i++)
  {
    tr+="<tr>"

    for(var j = 0; j < columnsAttributes.length; j++)
    {
      dataEntry = eval("json[i]."+columnsAttributes[j]);

      tr+=("<td class = 'longText'>" + dataEntry + "</td>");

    }
    tr+="</tr>"

  }
  tr+=("</tbody>");
  tab.html(tr);

}
