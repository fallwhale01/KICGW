<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel='stylesheet' type='text/css' href='./resources/css/fullcalendar.css' />
<script type='text/javascript' src='./resources/js/jquery.js'></script>
<script type='text/javascript' src='./resources/js/jquery-ui-custom.js'></script>
<script type='text/javascript' src='./resources/js/fullcalendar.js'></script>
<script type='text/javascript'>
$(document).ready(function() {
	fn_get_events();
});

function fn_set_calendar(events){
	var calendar = $('#calendar').fullCalendar({
		header: {
			left: '',
			center: 'title',
			right: 'prev,next today'
		},
		selectable: true,
		selectHelper: true,
		select: function(start, end, allDay) {
			
			var title = prompt('일정을 입력하세요.');
			if (title) {
				calendar.fullCalendar('renderEvent',
					{
						title: title,
						start: start,
						end: end,
						allDay: allDay
					},
					true // make the event "stick"
				);
			}
			calendar.fullCalendar('unselect');
		},
		editable: true,
		events: events
	});
};
function fn_get_events()
{
	$.ajax({
		url: './jsontest.jsp', 
		type : "post",
		dataType: 'json',
		success: function(json) {
			fn_set_calendar(json);
		}
	}); 
}
</script>
<style type='text/css'>

body {
	margin-top: 40px;
	text-align: center;
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
</head>
<body>
<div id='calendar'></div>
</body>
</html>