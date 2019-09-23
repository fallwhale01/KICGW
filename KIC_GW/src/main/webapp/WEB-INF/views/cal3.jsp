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