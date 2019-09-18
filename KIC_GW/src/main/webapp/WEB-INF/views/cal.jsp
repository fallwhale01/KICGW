<%@ page import="java.util.Calendar"%>
<%@ page import="com.kic.cal.MonthTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	Calendar today = Calendar.getInstance();

	int year = 0;
	int month = 0;

	if (request.getParameter("year")==null || "".equals(request.getParameter("year"))) {
		year = today.get(Calendar.YEAR);
		month = today.get(Calendar.MONTH)+1;
	} else {
		year = Integer.parseInt(request.getParameter("year"));
		month = Integer.parseInt(request.getParameter("month"))+1;
	}

	int START_DAY_OF_WEEK = 0;
	int END_DAY_OF_WEEK = 0;
	int END_DAY = 0;
	
	StringBuffer result = new StringBuffer();
	
	Calendar sDay = Calendar.getInstance();
	Calendar eDay = Calendar.getInstance();
	
	sDay.set( year, month-1, 1 );
	eDay.set( year, month, 1-1 );
	
	// 1일의 요일
	START_DAY_OF_WEEK = sDay.get( Calendar.DAY_OF_WEEK );
	
	// 마지막 날의 요일
	END_DAY_OF_WEEK = eDay.get( Calendar.DAY_OF_WEEK );
	
	// 마지막날
	END_DAY = eDay.get( Calendar.DATE );
	
	System.out.println( "      " + year + "년 " + month + "월" );
	System.out.println( " SU MO TU WE TH FR SA" );
	result.append("<table>");
	result.append("<tr>");
	result.append("<td style='background-color: tomato;'>일</td>");
	result.append("<td>월</td>");
	result.append("<td>화</td>");
	result.append("<td>수</td>");
	result.append("<td>목</td>");
	result.append("<td>금</td>");
	result.append("<td style='background-color: lightblue;'>토</td>");
	result.append("</tr>");
	result.append("<tr>");
	// 1일 이전의 공백(요일)
	for( int i=1 ; i<START_DAY_OF_WEEK ; i++ ) {
		System.out.print( "   " );
		result.append("<td></td>");
	}
	// 1일 부터 마지막 날까지 출력
	for( int i=1, n=START_DAY_OF_WEEK ; i<=END_DAY ; i++, n++ ) {
		System.out.print( ( i < 10 ) ? "  " + i : " " + i );
		if(n% 7 == 1){
			result.append("<td><a style='color: red;' href='#" + year + month + i + "'>" + i + "</a><br />");
		} else if(n% 7 == 0) {
			result.append("<td><a style='color: blue;' href='#" + year + month + i + "'>" + i + "</a><br />");
		} else {
			result.append("<td><a style='color: black;' href='#" + year + month + i + "'>" + i + "</a><br />");
		}
		result.append("회사일정<br />");
		result.append("부서별일정<br />");
		result.append("개인일정</td>");
		// 토요일 마다 엔터키
		if( n% 7 == 0 ) {
			System.out.println();
			result.append("</tr>");
			result.append("<tr>");
		}
	}
	
	// 마지막 날부터 공백
	for( int i=END_DAY_OF_WEEK ; i <=6 ; i++ ) {
		System.out.print( "   " );
		result.append("<td></td>");
	}
	result.append("</tr>");
	result.append("</table>");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimun-scale=1.0,maximun-scale=1.0">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<title>켈린더 페이지</title>
<script>
function fn_formSubmit(){
	document.form1.submit();
}
</script>
<style type="text/css">
#mainleft {
	border: 1px solid #000;
	padding: 15px;
}

#cal {
	border: 1px solid #000;
	padding: 15px;
	text-align: center;
}

table { width: 800px; border-collapse: collapse;}
table, td {border: 1px solid black; height: 50px; text-align: center;}

.timeInput {
	font-family: 나눔고딕, NanumGothic;
	font-size: 4em;
	border: 1 #fff;
	color: #684816;
	text-align: center;
	padding: 30px;
	border-radius: 5px;
	font-weight: bold
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
</style>
<script type="text/javascript" src="./resources/js/jquery-3.4.1.js"></script>
<script type="text/javascript" src="./resources/js/jquery.animateNumber.min.js"></script>
<script type="text/javascript">
	
</script>
</head>
<body>
	<div id="wrapper">
		<%@include file="../../asdqwe.jsp"%>
		<div id="container">
			<div class="row">
				<div id="mainleft" class="col-sm-2">
				</div>
	
				<div id="cal" class="col-sm-10">
					<div id="container" style="padding-top: 0">
					<div class="row">
						<div class="col-sm-2"></div>
						<div class="col-sm-8">
							<h2>캘린더</h2>
							<table>
							<tr>
								<td><a style='color: black;' href='./cal.do?year=<c:out value="${searchVO.year}"/>&month=<c:out value="${searchVO.month-1}"/>'>&lt;</a></td>
								<td style='background-color: #47c9af;'><c:out value="${searchVO.year}"/>년 <c:out value="${searchVO.month}"/>월</td>
								<td><a style='color: black;' href='./cal.do?year=<c:out value="${searchVO.year}"/>&month=<c:out value="${searchVO.month+1}"/>'>&gt;</a></td>
							</tr>
							</table>
							<%=result %>
						</div>
						<div class="col-sm-2"></div>
					</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="./resources/js/bootstrap.bundle.min.js"></script>
</body>
</html>
