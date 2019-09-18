<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Calendar today = Calendar.getInstance();
	int year = today.get(Calendar.YEAR);
	int month = today.get(Calendar.MONTH);;
	
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
	result.append("<table style='border: 1px solid #000; text-align: center;'>");
	result.append("<tr>");
	result.append("<td></td>");
	result.append("<td>" + year + "년 " + month + "월</td>");
	result.append("<td></td>");
	result.append("</tr>");
	result.append("</table>");
	result.append("<table style='border: 1px solid #000; text-align: center;'>");
	result.append("<tr>");
	result.append("<td>일</td>");
	result.append("<td>월</td>");
	result.append("<td>화</td>");
	result.append("<td>수</td>");
	result.append("<td>목</td>");
	result.append("<td>금</td>");
	result.append("<td>토</td>");
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
		if( i < 10 ) result.append("<td>  " + i + "</td>");
		else result.append("<td>" + i + "</td>");
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
<title>Insert title here</title>
</head>
<body>
<%=result %>
</body>
</html>