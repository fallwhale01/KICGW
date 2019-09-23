<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	Calendar cal = Calendar.getInstance();
	int year = cal.get(Calendar.YEAR);
	int month = (cal.get(Calendar.MONTH) + 1);
	
	Calendar sDay = Calendar.getInstance();
	Calendar eDay = Calendar.getInstance();
	
	sDay.set( year, month-1, 1 );
	eDay.set( year, month, 1-1 );
	
	int End_day = eDay.get(Calendar.DATE);
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimun-scale=1.0,maximun-scale=1.0">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/tree.css">

<title>근태관리 페이지</title>
<style type="text/css">
#mainleft {

}

.row {
	padding-left: 14px;
	padding-bottom: 30px;
	width: auto;
	height: auto;
}

.board-table {
	border: 3px solid #47c9af;
	width: 100%;
	height: 100%;
	
}

table{
	border-collapse: collapse;
  	width: 100%;
}

th {
	text-align: center;   
	border-right: 2px solid #47c9af;              
	padding: 8px;
	background-color: #47c9af;
	opacity: 0.5;
	color: black;
}
td {
	border-right: 2px solid #47c9af;
	text-align: center;
	padding: 8px;
}
tr:nth-child(even){background-color: #f2f2f2}
</style>

<script type="text/javascript" src="./resources/js/jquery-3.4.1.js"></script>
<script type="text/javascript" src="./resources/js/jquery.animateNumber.min.js"></script>
<script type="text/javascript">
	$(document).ready( function() {
		var manage = function( eno ) {
			$.ajax({
				url: './managelist.do',
				type: 'post',
				data: {
					eno: eno
				},
				dataType: 'JSON',
				success: function( json ) {
					results = json.results;
					$.each( results, function() {
						var mdate = this.mdate;
						var checkins = this.checkin;
						var checkouts = this.checkout;
						
						var checkin = checkins.split(' ');
						var checkout = '';
						if( checkouts == '' || checkouts != null ) {
							checkout = checkouts.split(' ');
							for ( var i =1; i<=31; i++ ) {
								var date = $('.date'+i).text();
								if( date == mdate ) {
									$( '.checkin'+i ).html(checkin[1].substring(0,8));
									$( '.checkout'+i ).html(checkout[1].substring(0,8));
								}
							}
						}else {
							for ( var i =1; i<=31; i++ ) {
								var date = $('.date'+i).text();
								if( date == mdate ) {
									$( '.checkin'+i ).html(checkin[1].substring(0,8));
									$( '.checkout'+i ).html('');
								}
							}
						}
						
						
						
					});
				}
			});
		} //end of manage
		
		manage("1");
	});
	// 페이지 새로고침
	 if (self.name != 'reload') {
        self.name = 'reload';
        self.location.reload(true);
    }
    else self.name = ''; 
</script>
</head>
<body>
	<div id="wrapper">
		<%@include file="./asdqwe.jsp"%>
		<div id="container">
		<div class="row">
		<div class="menubar col-sm-3">
		<%@include file="./menu.jsp" %>
		</div>
			<div id="mainleft" class="col-sm-8">
				<div class="board">
					<table class="board-table">
						<thead>
			<tr>
				<th scope="col" class="date">날짜</th>
				<th scope="col" class="in_time">출근 시간</th>
				<th scope="col" class="out_time">퇴근 시간</th>
				<th scope="col" class="total_time">근무 시간</th>
				<th scope="col" class="other">기타</th>
			</tr>
			
		</thead>
		<tbody>
		<%
			String months = "";
			if( month < 10 ) {
				months = "0" + month;
				System.out.println( months );
			}else {
				months = "" + month;
			}
			for( int i=1; i<=End_day; i++ ) {
				out.println("<tr>");
				if( i< 10 ) {
					out.println("<td class='date"+ i +"'>" + year + "-" + months + "-0" + i + "</td>");
				} else {
					out.println("<td class='date"+ i +"'>" + year + "-" + months + "-" + i + "</td>");
				}
				out.println("<td class='checkin"+ i +"'></td>");
				out.println("<td class='checkout"+ i +"'></td>");
				out.println("<td class='total"+ i +"'></td>");
				out.println("<td class='other"+ i +"'>-</td>");
				out.println("</tr>");
			}
		%>

		</tbody>
					</table>
				</div>

			</div>
			</div>
		</div>
		
	</div>
	<script src="./resources/js/bootstrap.bundle.min.js"></script>
</body>

</html>
