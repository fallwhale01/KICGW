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
<title>프로젝트 메인</title>
<style type="text/css">
tr:nth-child(even){background-color: #f2f2f2}

th {
	background-color: #47c9af;
}

table.greenTable {
  font-family: Georgia, serif;
  border: 6px solid #47c9af;
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

#mainleft {
	border: 1px solid #000;
	padding: 15px;
}

form {
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	-khtml-border-radius: 5px;
	border-radius: 5px;
	counter-reset: fieldsets;
	padding: 20px;
	width: 1200px;	
}

		
form fieldset {
	border: none;
	margin-bottom: 10px;
}
		
form fieldset:last-of-type {
	margin-bottom: 0;
}
			
form legend {
	color: #384313;
	font-size: 16px;
	font-weight: bold;
	padding-bottom: 10px;
	text-shadow: 0 1px 1px #c0d576;
}
				
	
form fieldset fieldset legend {
	color: #111111;
	font-size: 13px;
	font-weight: normal;
	padding-bottom: 0;
}
			
form ol li {
	background: #47c9af;
	opacity:0.7;
	border-color: #e3ebc3;
	border-color: rgba(255,255,255,.6);
	border-style: solid;
	border-width: 2px;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	-khtml-border-radius: 5px;
	border-radius: 5px;
	line-height: 30px;
	width : 1300px;
	list-style: none;
	padding: 5px 10px;
	margin-bottom: 2px;
}
							
form ol ol li {
	background: none;
	border: none;
	float: left;
}
			
form label {
	float: left;
	font-size: 13px;
	width: 300px;
}

form select {
	width: 300px;
}								
					
form fieldset fieldset label:hover {
	cursor: pointer;
}
				
form input:not([type=radio]) {
	background: #ffffff;
	border: none;
	-moz-border-radius: 3px;
	-webkit-border-radius: 3px;
	-khtml-border-radius: 3px;
	border-radius: 3px;
	font: italic 13px 맑은고딕,굴림,돋움;
	outline: none;
	padding: 5px;

}

form input.content{
	width : 900px;
	height : 280px;
}
					
form input:not([type=submit]):focus, {
	background: #eaeaea;
}
					
				
form button {
	background: #384313;
	border: none;
	-moz-border-radius: 20px;
	-webkit-border-radius: 20px;
	-khtml-border-radius: 20px;
	border-radius: 20px;
	color: #ffffff;
	display: block;
	font: 16px 맑은고딕,굴림,돋움;
	letter-spacing: 1px;
	margin: auto;
	padding: 7px 25px;
	text-shadow: 0 1px 1px #000000;
	text-transform: uppercase;
}
					
form button:hover {
	background: #1e2506;
	cursor: pointer;
}

.graph{height: 40px; margin:0 0 15px; background:#ccc; border-radius:40px;}
.graph span {display:block; padding:0 10px; height:40px; line-height:40px;
			text-align: right;  border-radius:40px;
			box-sizing:border-box; color: #fff;}

.graph.stack1 span{background:#47c9af; animation:stack 2s 1;}
.graph.stack2 span{background:tomato; animation:stack2 2s 1;}
.graph.stack3 span{background:skyblue; animation:stack3 2s 1;}
			
@keyframes stack {
	0% {width:0; color: rgba(255,255,255,0);}
	50% {color: rgba(255,255,255,1);}
	100% {width:75%;}
}

@keyframes stack2 {
	0% {width:0; color: rgba(255,255,255,0);}
	50% {color: rgba(255,255,255,1);}
	100% {width:60%;}
}

@keyframes stack3 {
	0% {width:0; color: rgba(255,255,255,0);}
	50% {color: rgba(255,255,255,1);}
	100% {width:25%;}
}
	
</style>
<link rel="stylesheet" href="./resources/css/base/jquery-ui.css">
<script type="text/javascript" src="./resources/js/jquery-ui.js"></script>
<script type="text/javascript" src="./resources/js/jquery-3.4.1.js"></script>
<script type="text/javascript" src="./resources/js/jquery.animateNumber.min.js"></script>
<script type="text/javascript">

</script>
</head>
<body>

<div id="wrapper">
		<%@include file="./asdqwe.jsp"%>
	<div id="container">
		<div class="row">
			<%@include file="./menu.jsp" %>

			<div id="mainleft" class="col-sm-9">
			
			<%@include file="./project_main.jsp"%>
				
			</div>
		</div>
	</div>
	</div>
<script src="./resources/js/bootstrap.bundle.min.js"></script>
	
</body>
</html>
