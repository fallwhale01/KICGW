<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel='stylesheet' type='text/css' href='./resources/css/fullcalendar.css' />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script type='text/javascript' src='./resources/js/jquery.js'></script>
<script type='text/javascript' src='./resources/js/jquery-ui-custom.js'></script>
<script type='text/javascript' src='./resources/js/fullcalendar.js'></script>
<title>켈린더 페이지</title>
<style type="text/css">
#mainleft {
	border: 1px solid #000;
	padding: 15px;
}

.timeInput {
	font-family: 나눔고딕, NanumGothic;
	font-size: 4em;
	border: 1 #fff;
	color: #684816;
	text-align: center;
	padding: 30px;
	border-radius: 5px;
	font-weight: bold;
}

.board-table {
	border: 3px solid #47c9af;
	width: 50%;
}

th {
	background-color: #47c9af;
}

table.greenTable {
  font-family: Georgia, serif;
  border: 6px solid #24943A;
  background-color: #D4EED1;
  text-align: center;
  width : 50%;
}
table.greenTable td, table.greenTable th {
  border: 1px solid #24943A;
  padding: 3px 2px;
}
table.greenTable tbody td {
  font-size: 13px;
}
table.greenTable thead {
  background: #24943A;
  background: -moz-linear-gradient(top, #5baf6b 0%, #3a9e4d 66%, #24943A 100%);
  background: -webkit-linear-gradient(top, #5baf6b 0%, #3a9e4d 66%, #24943A 100%);
  background: linear-gradient(to bottom, #5baf6b 0%, #3a9e4d 66%, #24943A 100%);
  border-bottom: 0px solid #444444;
}
table.greenTable thead th {
  font-size: 19px;
  font-weight: bold;
  color: #F0F0F0;
  text-align: left;
  border-left: 2px solid #24943A;
}
table.greenTable thead th:first-child {
  border-left: none;
}

table.greenTable tfoot {
  font-size: 13px;
  font-weight: bold;
  color: #F0F0F0;
  background: #24943A;
  background: -moz-linear-gradient(top, #5baf6b 0%, #3a9e4d 66%, #24943A 100%);
  background: -webkit-linear-gradient(top, #5baf6b 0%, #3a9e4d 66%, #24943A 100%);
  background: linear-gradient(to bottom, #5baf6b 0%, #3a9e4d 66%, #24943A 100%);
  border-top: 1px solid #24943A;
}
table.greenTable tfoot td {
  font-size: 13px;
}
table.greenTable tfoot .links {
  text-align: right;
}
table.greenTable tfoot .links a{
  display: inline-block;
  background: #FFFFFF;
  color: #24943A;
  padding: 2px 8px;
  border-radius: 5px;
}

body {
	margin-top: 40px;
	font-size: 14px;
	font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
}

#calendar {
	width: 900px;
	margin: 0 auto;
}

.green,
.green div,
.green span,
.green a {
    background-color: green; /* background color */
    border-color: green;     /* border color */
}
.brue,
.brue div,
.brue span,
.brue a {
    background-color: brue; /* background color */
    border-color: brue;     /* border color */
}
.yellow,
.yellow div,
.yellow span,
.yellow a {
    background-color: yellow; /* background color */
    border-color: yellow;     /* border color */
    color: black;
}
.red,
.red div,
.red span,
.red a {
    background-color: red; /* background color */
    border-color: red;     /* border color */
}
.orange,
.orange div,
.orange span,
.orange a {
    background-color: orange; /* background color */
    border-color: orange;     /* border color */
}
.purple,
.purple div,
.purple span,
.purple a {
    background-color: purple; /* background color */
    border-color: purple;     /* border color */
}
.maroon,
.maroon div,
.maroon span,
.maroon a {
    background-color: maroon; /* background color */
    border-color: maroon;     /* border color */
}
</style>
<script type='text/javascript'>
$(document).ready(function() {
	fn_get_events();
});
function date_to_str(format)
{
    var year = format.getFullYear();
    var month = format.getMonth() + 1;
    if(month<10) month = '0' + month;
    var date = format.getDate();
    if(date<10) date = '0' + date;
    return year + "-" + month + "-" + date;
}

function fn_set_calendar(events){
	var calendar = $('#calendar').fullCalendar({
		header: {
			left: '',
			center: 'title',
			right: 'prev,next today'
		},
		selectable: true,
		selectHelper: true,
		select: function(start, end) {
            window.location = "./calone.do?date=" + date_to_str(start);
		},
		editable: true,
		events: events
	});
};
function fn_get_events()
{
	$.ajax({
		url: './jsontest.do', 
		type : "post",
		dataType: 'json',
		success: function(json) {
			fn_set_calendar(json);
		}
	}); 
}
</script>
<script type="text/javascript" src="./resources/js/jquery.animateNumber.min.js"></script>
<script type="text/javascript">
	
</script>
</head>
<body>
	<div id="wrapper">
		<%@include file="./asdqwe.jsp"%>
		<div id="container">
			<div class="row">
				<div class="col-sm-2">
					<%@include file="../../calmenu.jsp"%>
				</div>
				<div id="cal" class="col-sm-10">
					<div id='calendar'></div>
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>