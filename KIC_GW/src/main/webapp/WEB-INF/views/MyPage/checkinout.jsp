<%@page import="org.json.simple.JSONArray"%>
<%@page import="com.kic.groupware.model1.mypage.ManagementTO"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/plain; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ManagementTO to = (ManagementTO) request.getAttribute("to");

	String checkin = to.getCheckin();
	String checkout = to.getCheckout();

	JSONObject jsonObject = new JSONObject();
	JSONObject results = new JSONObject();
	JSONArray arr = new JSONArray();
	
	results.put("checkin", checkin);
	results.put("checkout", checkout);
	
	arr.add( results );
	jsonObject.put("results", arr );
	
	String json = jsonObject.toJSONString();
%>
<%= json %>