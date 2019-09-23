<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
    String contentPage=request.getParameter("contentPage");
    if(contentPage==null)
        contentPage="project_main.jsp";
    else
    	contentPage="project_create.jsp";
%>

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
			<div class="menubar col-sm-3">
			<%@include file="./project_menu.jsp" %>
			</div>
			<div id="mainleft" class="col-sm-8">
			
			<jsp:include page="<%=contentPage%>" />
							
			</div>
		</div>
	</div>
</div>
<script src="./resources/js/bootstrap.bundle.min.js"></script>
	
</body>
</html>
