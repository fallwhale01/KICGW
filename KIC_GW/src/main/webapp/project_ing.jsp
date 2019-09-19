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

</style>
<link rel="stylesheet" href="./resources/css/base/jquery-ui.css">
<script type="text/javascript" src="./resources/js/jquery-3.4.1.js"></script>
<script type="text/javascript" src="./resources/js/jquery-ui.js"></script>


<script type="text/javascript">
$(document).ready(function() {
    $("#date1,#date2").datepicker();
});

</script>
</head>
<body>

	<div id="wrapper">
		<%@include file="./asdqwe.jsp"%>
	<div id="container">
		<div class="row">
			<%@include file="./menu.jsp" %>

			<div id="mainleft" class="col-sm-10">
			
				<form>
					<fieldset>
					<legend>Create Project</legend>
					<ol>
  					<li>
   						<label for="userid">Project Name</label>
   						| <input id="project_name" name="project_name" type="text">
  					</li>
  					<li>
   						<label for="pwd1">start ~ end</label>
  						| <input id="date1" name="start" type="text"  >
  						~
  						<input id="date2" name="end" type="text">
  					</li>
  					<li>
  						<label pwd="level">프로젝트 메니저</label>
  						| <input id="project_manager" name="project_manager" type="text">
  					</li>
  					<li>
  						<label pwd="level">프로젝트 부서</label>
  						| <input id="project_dept" name="project_dept" type="text" readonly>
  					</li>
  					<li>
  						<label pwd="fullname">프로젝트 참여자</label>
  						| <select name="project_emp">
   							 <option value="">참여자 선택</option>
    						 <option value="emp1">emp1</option>
    						 <option value="emp2">emp2</option>
   						     <option value="emp3">emp3</option>
						  </select>
  					</li>
  					<li>
  						<label pwd="fullname">프로젝트 내용</label>
  						| <input class="content" id="project_content" name="project_contetn" type="text" >
  					</li>
					</ol>
					</fieldset>

	
					<fieldset>
					<legend>프로젝트 단계(계획, 디자인, 코딩)</legend>
					<ol>
  					<li>
    					<input id="skill" name="skill" type="range" min="1" max="3" step="1">
  					</li>  
					</ol>
					</fieldset>

					<fieldset>
  					<button type="submit"> 생성 </button> 
					</fieldset>
				</form>
				
			</div>
		</div>
	</div>
	</div>
</body>
</html>
