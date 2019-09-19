<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>jQuery UI Datepicker - Default functionality</title>
<link rel="stylesheet" href="./resources/css/base/jquery-ui.css">
<script type="text/javascript" src="./resources/js/jquery-3.4.1.js"></script>
<script type="text/javascript" src="./resources/js/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  </script>
</head>
<body>
 
<p>Date: <input type="text" id="datepicker"></p>
 
 
</body>
</html>