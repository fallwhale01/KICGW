<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	Calendar cal = Calendar.getInstance();
	System.out.println( cal.get(Calendar.YEAR) );
	System.out.println( cal.get(Calendar.MONTH) + 1 );
	System.out.println( cal.get(Calendar.DATE) );
	
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
<title>전자결재 페이지</title>
<style type="text/css">
body {
	height:100%;
}
#mainleft {
	padding: 30px;
	
}

.row {
	padding-top: 30px;
	padding-left: 20px;
	width: 1300px;
	height: 500px;
}

.board-table {
	border: 3px solid #47c9af;
	width: 150%;
	height: 100%;
	
}

table{
	text-align: center; 
	height: 400px;
}

th {
	text-align: center;                 
	padding: 1em;
	background-color: #47c9af;
	opacity: 0.5;
	color: black;
}
</style>

<script type="text/javascript" src="./resources/js/jquery-3.4.1.js"></script>
<script type="text/javascript" src="./resources/js/jquery.animateNumber.min.js"></script>
</head>
<body>
	<div id="wrapper">
		<%@include file="./asdqwe.jsp"%>
		<div id="container">
		<div class="row">
			<%@include file="./menu.jsp" %>
			<div id="mainleft" class="col-sm-7">
				<!-- 전자결재 -->
				<div class="board">
					<table class="board-table">
						<thead>
			<tr>
				<th scope="col" class="date">날짜</th>
				<th scope="col" class="in_date">출근 시간</th>
				<th scope="col" class="out_date">퇴근 시간</th>
				<th scope="col" class="out_date">근무 시간</th>
				<th scope="col" class="out_date">기타</th>
			</tr>
			
		</thead>
		<tbody>
			<tr>
				<td class="date">2019-09-17</td>
				<td class="date">08:55:12</td>
				<td class="date">18:00:16</td>
				<td class="date">09:05:04</td>
				<td class="date">-</td>
			</tr>
			<tr>
				<td class="date">2019-09-17</td>
				<td class="date">08:55:12</td>
				<td class="date">18:00:16</td>
				<td class="date">09:05:04</td>
				<td class="date">-</td>
			</tr>
			<tr>
				<td class="date">2019-09-17</td>
				<td class="date">08:55:12</td>
				<td class="date">18:00:16</td>
				<td class="date">09:05:04</td>
				<td class="date">-</td>
			</tr>
			<tr>
				<td class="date">2019-09-17</td>
				<td class="date">08:55:12</td>
				<td class="date">18:00:16</td>
				<td class="date">09:05:04</td>
				<td class="date">-</td>
			</tr>
			<tr>
				<td class="date">2019-09-17</td>
				<td class="date">08:55:12</td>
				<td class="date">18:00:16</td>
				<td class="date">09:05:04</td>
				<td class="date">-</td>
			</tr>
			<tr>
				<td class="date">2019-09-17</td>
				<td class="date">08:55:12</td>
				<td class="date">18:00:16</td>
				<td class="date">09:05:04</td>
				<td class="date">-</td>
			</tr>
			<tr>
				<td class="date">2019-09-17</td>
				<td class="date">08:55:12</td>
				<td class="date">18:00:16</td>
				<td class="date">09:05:04</td>
				<td class="date">-</td>
			</tr>
			<tr>
				<td class="date">2019-09-17</td>
				<td class="date">08:55:12</td>
				<td class="date">18:00:16</td>
				<td class="date">09:05:04</td>
				<td class="date">-</td>
			</tr>
			<tr>
				<td class="date">2019-09-17</td>
				<td class="date">08:55:12</td>
				<td class="date">18:00:16</td>
				<td class="date">09:05:04</td>
				<td class="date">-</td>
			</tr>
			<tr>
				<td class="date">2019-09-17</td>
				<td class="date">08:55:12</td>
				<td class="date">18:00:16</td>
				<td class="date">09:05:04</td>
				<td class="date">-</td>
			</tr>
			<tr>
				<td class="date">2019-09-17</td>
				<td class="date">08:55:12</td>
				<td class="date">18:00:16</td>
				<td class="date">09:05:04</td>
				<td class="date">-</td>
			</tr>
			<tr>
				<td class="date">2019-09-17</td>
				<td class="date">08:55:12</td>
				<td class="date">18:00:16</td>
				<td class="date">09:05:04</td>
				<td class="date">-</td>
			</tr>
			<tr>
				<td class="date">2019-09-17</td>
				<td class="date">08:55:12</td>
				<td class="date">18:00:16</td>
				<td class="date">09:05:04</td>
				<td class="date">-</td>
			</tr>
			<tr>
				<td class="date">2019-09-17</td>
				<td class="date">08:55:12</td>
				<td class="date">18:00:16</td>
				<td class="date">09:05:04</td>
				<td class="date">-</td>
			</tr>
			<tr>
				<td class="date">2019-09-17</td>
				<td class="date">08:55:12</td>
				<td class="date">18:00:16</td>
				<td class="date">09:05:04</td>
				<td class="date">-</td>
			</tr>
			<tr>
				<td class="date">2019-09-17</td>
				<td class="date">08:55:12</td>
				<td class="date">18:00:16</td>
				<td class="date">09:05:04</td>
				<td class="date">-</td>
			</tr>
			<tr>
				<td class="date">2019-09-17</td>
				<td class="date">08:55:12</td>
				<td class="date">18:00:16</td>
				<td class="date">09:05:04</td>
				<td class="date">-</td>
			</tr>
			<tr>
				<td class="date">2019-09-17</td>
				<td class="date">08:55:12</td>
				<td class="date">18:00:16</td>
				<td class="date">09:05:04</td>
				<td class="date">-</td>
			</tr>
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
