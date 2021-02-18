var columnsSelected = "";
var finalResultSet;
$("#getReport").click(function()
{
    window.location.href = "/faculty/generateexcelTest/" + JSON.stringify(finalResultSet);
});

$("#filters").change(function () {
columnsSelected = "";
performFilterOperations('table_changed');
});

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
  console.log(columnsSelected);
  performFilterOperations('checkbox_changed');
};


function performFilterOperations(flag)
{

var tableName = $('#exampleFormControlSelect0').val();
var facultyName = $('#exampleFormControlSelect1').val();
var year = $('#exampleFormControlSelect2').val();
var facultyFilter;

if(facultyName == "ALL")
{
  facultyFilter = [];
}
else
{
  facultyFilter = ["facultyName = '"+ facultyName +"'"];
}
if(year == "ALL")
{
  facultyFilter = facultyFilter;
}
else
{
  var yearFilter =  "year >= " + (new Date().getFullYear()- year).toString() + "";
  facultyFilter.push(yearFilter);
}
dataForSelect = {
    'schema': columnsSelected,
    'whereOption' : facultyFilter
};
$.ajax({
    type: 'POST',
    data: JSON.stringify(dataForSelect),
    contentType: 'application/json',
    url: 'http://localhost:3000/v1/apis/data/'+tableName+'/',
    success: function(dataRecieved) {
      finalResultSet = dataRecieved;
      if(flag == 'table_changed')
        buildColumnFilters(dataRecieved);
      buildTable(dataRecieved);

    }
  });

}


  function buildColumnFilters(json)
  {
    var columnsAttributes = Object.keys(json[0]);
    var tab= $('#columnFilter');
    var columnChecks = "";
    columnChecks += ("<table border = 1>");
    columnChecks += ("<tr>");

    for(var i = 0; i < columnsAttributes.length; i++)
    {

         columnChecks += ("<td><div class='checkbox'><label><input type='checkbox' id = 'column"+i+"'  value='"+ columnsAttributes[i] +"' onchange='checkboxClicked(this)'>"+columnsAttributes[i]+"</label></div></td>");
    }
    columnChecks += ("</tr>");

    columnChecks += ("</table>");

    tab.html(columnChecks);

  }

  function buildTable(json)
  {
    console.log(json);
     $("#tableR").empty();
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

        tr+=("<td>" + dataEntry + "</td>");

      }
      tr+="</tr>"

    }
    tr+=("</tbody>");
    tab.html(tr);

  }
