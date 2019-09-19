<%@page import="org.json.simple.JSONObject"%>

<%@ page language="java" contentType="text/plain; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int flag = (Integer) request.getAttribute("flag");

	JSONObject jsonObject = new JSONObject();
	JSONObject results = new JSONObject();
	
	results.put("flag", flag);
	jsonObject.put("results", results );
	
	String json = jsonObject.toJSONString();
%>
<%= json %>