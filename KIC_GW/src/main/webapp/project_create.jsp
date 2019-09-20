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
	
			
form ol li {
	background: #47c9af;
	border-radius: 5px;
	line-height: 30px;
	list-style: none;
	padding: 5px 10px;
	margin-bottom: 2px;
	width:1200px;
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

<form>
<fieldset>
<h3>프로젝트 생성</h3>
<ol>
  <li>
    <label for="userid">프로젝트 이름</label>
    <input id="project_name" name="project_name" type="text">
  </li>
  <li>
    <label for="pwd1">프로젝트 담당자</label>
    <input id="pwd1" name="pwd1" type="password">
  </li>
  <li>
    <label pwd="pwd2">프로젝트 기간</label>
    <input id="start_date" name="start_date" type="text">~
    <input id="end_date" name="end_date" type="text">
  </li>  
  <li>
    <label pwd="level">프로젝트 구성원</label>
    <input id="project_emp" name="project_emp" type="text">
  </li>
   <li>
    <label pwd="level">프로젝트 내용</label>
    <input id="project_content" name="project_content" type="text">
  </li>
</ol>
</fieldset>

<fieldset>
<h3>프로젝트 상태(기획,계획,디자인,코딩)</h3>
<ol>
  <li>
    <input id="skill" name="skill" type="range" min="1" max="4" step="1">
  </li>  
</ol>
</fieldset>
<fieldset>
  <button type="submit"> 프로젝트 생성 </button> 
</fieldset>
</form>

<script src="./resources/js/bootstrap.bundle.min.js"></script>
</body>
</html>
