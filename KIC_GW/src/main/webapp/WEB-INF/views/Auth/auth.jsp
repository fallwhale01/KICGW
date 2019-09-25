<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimun-scale=1.0,maximun-scale=1.0">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/tree.css">
<link rel="stylesheet" href="./resources/styles.css">
<link rel="stylesheet" href="./resources/menu.css">
<title>전자결재 페이지</title>
<style type="text/css">
/* #aside {
	position: absolute;
	left: 0;
} */

.row {
	padding-top: 30px;
	padding-left: 20px;
	width: 1300px;
	height: 500px;
}

.checkin {
	/* 버튼 디자인  */
	
}

.checkout {
	/* 버튼 디자인  */
}

.board-table {
	border: 3px solid #47c9af;
	width: 150%;
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
	color: white;
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
tr:nth-child(even){background-color: #f2f2f2}


body {
	margin: 0;
	margin-left: 40px;
	margin-right: 40px;
	height:100%;
}

#header {
	height:70px;
}

#container {
	margin-right: 0px;
	padding-top: 20px;
}


li {
	width: 200px;
}
</style>

<script type="text/javascript" src="./resources/js/jquery-3.4.1.js"></script>
<script type="text/javascript" src="./resources/js/jquery.animateNumber.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
	
			$('#menu li.active').addClass('open').children('ul').show();
	   		$('#menu li.has-sub>a').on('click', function(){
	   			$(this).removeAttr('href');
	   			var element = $(this).parent('li');
	   			if (element.hasClass('open')) {
	   				element.removeClass('open');
	   				element.find('li').removeClass('open');
	   				element.find('ul').slideUp(200);
	   			}
	   			else {
	   				element.addClass('open');
	   				element.children('ul').slideDown(200);
	   				element.siblings('li').children('ul').slideUp(200);
	   				element.siblings('li').removeClass('open');
	   				element.siblings('li').find('li').removeClass('open');
	   				element.siblings('li').find('ul').slideUp(200);
	   			}
	   		});
	   		
	   

	});
	
</script>
</head>
<body>
		<div id="wrapper">
		<%@include file="../Menu/topmenu.jsp"%>
		<div id="container">
		<div class="row">
		<div class="menubar col-sm-3">
			<div id='menu'>
			<ul>
			   <li onclick="javascript: location.href='./auth.do'"><a>결재목록</a></li>
			   <li onclick="javascript: location.href='./vacation.do'"><a>휴가신청서</a></li>
			   <li onclick="javascript: location.href='./busitrip.do'"><a>출장신청서</a></li>
			   <li onclick="javascript: location.href='./auth4.do'"><a>교통비신청서</a></li>
			</ul>
			</div>
			</div>
			<div id="mainleft" class="col-sm-9">
				<!-- 전자결재 -->
				<table class="table table-hover">
					<thead>
						<tr>
							<th>no.</th>
							<th>결재명</th>
							<th>작성일</th>
							<th>결재종류</th>
							<th>신청자명</th>
							<th>결재상태</th>
						</tr>
					</thead>
					<tbody>
					<tr>
						<td>1</td>
						<td onClick="location.href='./auth5.do'">휴가에 대한 건</td>
						<td>2019.10.01</td>
						<td>휴가</td>
						<td>마승호</td>
						<td>결재대기중</td>
					</tr>
					
					<tr>
						<td>2</td>
						<td>교통비에 대한 건</td>
						<td>2019.10.01</td>
						<td>교통비</td>
						<td>홍길동</td>
						<td>결재완료</td>
					</tr>
					
					<tr>
						<td>3</td>
						<td>출장에 대한 건</td>
						<td>2019.10.01</td>
						<td>출장</td>
						<td>박문수</td>
						<td>결재대기중</td>
					</tr>
					</tbody>
				</table>

			</div>
			
			</div>
		</div>
	</div>
</body>
</html>
