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
<title>프로젝트 생성</title>
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

.graph{height: 40px; margin:0 0 15px; background:#ccc; border-radius:40px;}
.graph span {display:block; padding:0 10px; height:40px; line-height:40px;
			text-align: right;  border-radius:40px;
			box-sizing:border-box; color: #fff;}
.graph.stack1 span{background:#47c9af; animation:stack 2s 1;}
.graph.stack2 span{background:tomato; animation:stack2 2s 1;}
.graph.stack3 span{background:skyblue; animation:stack3 2s 1;}
		
a {
  color: #4f4f4f;
}
.button {
  display: inline-block;
  padding: 12px 24px;
  border: 1px solid #4f4f4f;
  border-radius: 4px;
  transition: all 0.2s ease-in;
  position: relative;
  overflow: hidden;
  margin: auto;
}
.button:before {
  content: "";
  position: absolute;
  left: 50%;
  transform: translateX(-50%) scaleY(1) scaleX(1.25);
  top: 100%;
  width: 140%;
  height: 180%;
  background-color: rgba(0, 0, 0, 0.05);
  border-radius: 50%;
  display: block;
  transition: all 0.5s 0.1s cubic-bezier(0.55, 0, 0.1, 1);
  z-index: -1;
}
.button:after {
  content: "";
  position: absolute;
  left: 55%;
  transform: translateX(-50%) scaleY(1) scaleX(1.45);
  top: 180%;
  width: 160%;
  height: 190%;
  background-color: #39bda7;
  border-radius: 50%;
  display: block;
  transition: all 0.5s 0.1s cubic-bezier(0.55, 0, 0.1, 1);
  z-index: -1;
}
.button:hover {
  color: #ffffff;
  border: 1px solid #39bda7;
}
.button:hover:before {
  top: -35%;
  background-color: #39bda7;
  transform: translateX(-50%) scaleY(1.3) scaleX(0.8);
}
.button:hover:after {
  top: -45%;
  background-color: #39bda7;
  transform: translateX(-50%) scaleY(1.3) scaleX(0.8);
}
	
		
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
form ol li {
	background: #47c9af;
	border-radius: 5px;
	line-height: 30px;
	list-style: none;
	padding: 5px 10px;
	margin-bottom: 2px;
	width:1400px;
}
							
			
form label {
	float: left;
	font-size: 13px;
	width: 110px;
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
	width: 200px;
}
form select{
	background: #ffffff;
	border: none;
	-moz-border-radius: 3px;
	-webkit-border-radius: 3px;
	-khtml-border-radius: 3px;
	border-radius: 3px;
	font: italic 13px 맑은고딕,굴림,돋움;
	outline: none;
	padding: 5px;
	width: 200px;
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
.project_content{
	width:500px;
}
</style>
<link rel="stylesheet" href="./resources/css/base/jquery-ui.css">
<script type="text/javascript" src="./resources/js/jquery-3.4.1.js"></script>
<script type="text/javascript" src="./resources/js/jquery-ui.js"></script>


<script type="text/javascript">
$(function() {
    $("#start_date, #end_date").datepicker({
        dateFormat: 'yy.mm.dd'
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
			<%@include file="./project_menu.jsp" %>
			</div>
			<div id="mainleft" class="col-sm-8">
			
			<form>
<fieldset>
<h3>프로젝트 생성</h3>
<ol>
  <li>
    <label >프로젝트 이름</label>
    <input id="project_name" name="project_name" type="text">
  </li>
  <li>
    <label >프로젝트 담당자</label>
    <input id="project_pm" name="project_pm" type="text">
  </li>
  <li>
    <label >프로젝트 기간</label>
    <input id="start_date" name="start_date" type="text">~
    <input id="end_date" name="end_date" type="text">
  </li>  
  <li> 
  	<label >프로젝트 기간</label> 
	<select name="project_emp">
    	<option value="">Project 구성원</option>
    	<option value="">디디</option>
    	<option value="">지지</option>
    	<option value="">가가</option>
    	<option value="">나나</option>
	</select>
  </li>
   <li>
    <label>프로젝트 내용</label>
    <input id="project_content" name="project_content" type="text" style="text-align:left; width:1200px; height:300px;">
  </li>
</ol>
</fieldset>

<fieldset>
<h3>프로젝트 상태(기획,계획,디자인,코딩)</h3>
<ol>
  <li>
    <input id="project_state" name="project_state" type="range" min="1" max="4" step="1">
  </li>  
</ol>
</fieldset>

 <center><a href="#" class="button" style="text-decoration:none">등록</a></center>
</form>
							
			</div>
		</div>
	</div>
</div>


<script src="./resources/js/bootstrap.bundle.min.js"></script>
</body>
</html>