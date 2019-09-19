<%@ page import="java.util.Calendar"%>
<%@ page import="com.kic.cal.MonthTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimun-scale=1.0,maximun-scale=1.0">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<title>개인 일정 관리</title>
<style type="text/css">
#mainleft {
	border: 1px solid #000;
	padding: 15px;
}

#cal {
	border: 1px solid #000;
	padding: 15px;
	text-align: center;
}

table { width: 800px; border-collapse: collapse;}
.timeInput {
	font-family: 나눔고딕, NanumGothic;
	font-size: 4em;
	border: 1 #fff;
	color: #684816;
	text-align: center;
	padding: 30px;
	border-radius: 5px;
	font-weight: bold;
}

.board-table {
	border: 3px solid #47c9af;
	width: 50%;
}

table.greenTable {
  font-family: Georgia, serif;
  border: 6px solid #24943A;
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
</style>
<link href="./resources/css/datepicker.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="./resources/js/jquery-3.4.1.js"></script>
<script type="text/javascript" src="./resources/js/jquery.animateNumber.min.js"></script>
<script src="./resources/js/bootstrap-datepicker.js"></script>
<script type="text/javascript">
window.onload = function() {
    $('#ssstartdate').datepicker().on('changeDate', function(ev) {
        if (ev.viewMode=="days"){
            $('#ssstartdate').datepicker('hide');
        }
    });
    $('#ssenddate').datepicker().on('changeDate', function(ev) {
        if (ev.viewMode=="days"){
            $('#ssenddate').datepicker('hide');
        }
    });
}
</script>
</head>
<body>
	<div id="wrapper">
		<%@include file="./asdqwe.jsp"%>
		<div id="container">
			<div class="row">
				<div id="mainleft" class="col-sm-2">
				</div>
				<form id="form1" class="col-sm-10" name="form1" role="form" action="schSave" method="post" >
					<div id="container" style="padding-top: 0">
						<div class="row">
							<div class="col-sm-2"></div>
							<div class="col-sm-8" class="panel panel-default">
								<div class="panel-body">
									<div class="row form-group" style="text-align: center;">
										<div class="col-lg-1"></div>
										<div class="col-lg-8">
				                            <h2>개인 일정</h2>
				                        </div>
				                        <div class="col-lg-2"></div>
			                        </div>
									<div class="row form-group">
			                            <label class="col-lg-2">일정명</label>
			                            <div class="col-lg-8">
			                            	<input type="text" class="form-control" id="sstitle" name="sstitle" maxlength="50" 
			                            	value="<c:out value="${schInfo.sstitle}"/>">
			                            </div>
			                        </div>
			                        <div class="row form-group">
			                            <label class="col-lg-2">구분</label>
			                            <div class="col-lg-2">
											<select id="ssendminute" name="ssendminute" class="form-control">
												<c:forTokens var="item" items="업무,회의,외근,출장,교육,휴가,기타" delims=",">
					                           		<option value="${item}" <c:if test='${item==schInfo.ssendminute}'>selected</c:if>>${item}</option>
											 	</c:forTokens>
											</select>	
			                            </div>
			                        </div>
									<div class="row form-group">
										<label class="col-lg-2">일시</label>
										<div class="col-lg-2">
										<input class="form-control" size="16" id="ssstartdate" name="ssstartdate" readonly>
										</div>
										<div class="col-sm-2"></div>
									</div>
									<div class="row form-group">
			                            <label class="col-lg-2">내용</label>
			                            <div class="col-lg-8">
			                            	<textarea class="form-control" id="sscontents" name="sscontents" style="resize: none; height: 150px"><c:out value="${schInfo.sscontents}"/></textarea>
			                            </div> 
			                        </div>
								</div>
							</div>
							<div class="col-sm-2"></div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script src="./resources/js/bootstrap.bundle.min.js"></script>
</body>
</html>
