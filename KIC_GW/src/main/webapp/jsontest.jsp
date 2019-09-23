<%@page import="java.util.Date"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	JSONArray arrayObj = new JSONArray();
	JSONObject jsonObj = new JSONObject();

	for(int i=1; i<5; i++) {
		JSONObject resultObj = new JSONObject();
		
		resultObj.put("title", Integer.toString(i) );
		resultObj.put("start", "2019-09-0" + i);
		resultObj.put("end", "2019-09-0" + i);
		resultObj.put("className", "yellow");
		
		arrayObj.add(resultObj);
	}
	
	
	String json = arrayObj.toJSONString();
%>
<%= json%>