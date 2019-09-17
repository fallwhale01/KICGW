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
<link rel="stylesheet" href="./resources/tree.css">
<title>전자결재 페이지</title>
<style type="text/css">
/* #aside {
	position: absolute;
	left: 0;
} */

#mainleft {
	padding: 30px;
}

.row {
	padding-top: 30px;
	width: 1300px;
	height: 500px;
}

.checkin {
	/* 버튼 디자인  */
	
}

.checkout {
	/* 버튼 디자인  */
}

.board-table {
	border: 3px solid #47c9af;
	width: 150%;
}

table{
	text-align: center; 
	height: 400px;
}

th {
	text-align: center;                 
	padding: 1em;
	background-color: #47c9af;
	opacity: 0.5;
	color: white;
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

<script type="text/javascript" src="./resources/js/jquery-3.4.1.js"></script>
<script type="text/javascript" src="./resources/js/jquery.animateNumber.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		function tree_menu() {
			  // $('.depth_2');
			  $('ul.depth_2 >li > a').click(function(e) {

			    var temp_el = $(this).next('ul');
			    var depth_3 = $('.depth_3');

			    // 처음에 모두 슬라이드 업 시켜준다.
			    depth_3.slideUp(300);
			    // 클릭한 순간 모두 on(-)을 제거한다.// +가 나오도록
			    depth_3.parent().find('em').removeClass('on');

			    if (temp_el.is(':hidden')) {
			      temp_el.slideDown(300);
			      $(this).find('em').addClass('on').html('하위폴더 열림');
			    } else {
			      temp_el.slideUp(300);
			      $(this).find('em').removeClass('on').html('하위폴더 닫힘');
			    }

			    return false;

			  });
			}
			if ($('#tree_menu').is(':visible')) {
			  tree_menu();
			}
	});
	
</script>
</head>
<body>
	<div id="wrapper">
		<%@include file="./asdqwe.jsp"%>
		<div id="container">
		<div class="row">
			<div class="tree_box">
		    <div class="con">
		        <ul id="tree_menu" class="tree_menu">
		            <li class="depth_1"><strong>프로젝트 목록</strong>
		            </li>
		            <li class="depth_1"><strong>진행중인 프로젝트</strong>
		                <ul class="depth_2">
		                    <li>
		                        <a href="#none"><em>폴더</em> 프로젝트 1</a>
		                        <ul class="depth_3">
		                            <li><a href="#none">최신정보가져오기</a></li>
		                            <li><a href="#none">수납내역조회</a></li>
		                            <li><a href="#none">사납내역거래처확인</a></li>
		                            <li><a href="#none">수납내역 거래처확인결과</a></li>
		                            <li><a href="#none">매출채권관리</a></li>
		                        </ul>
		                    </li>
		                    <li class="last">
		                        <a href="#none"><em>폴더</em> 프로젝트 2</a>
		                        <ul class="depth_3">
		                            <li><a href="#none">최신정보가져오기</a></li>
		                            <li><a href="#none">수납내역조회</a></li>
		                            <li><a href="#none">사납내역거래처확인</a></li>
		                            <li><a href="#none">수납내역 거래처확인결과</a></li>
		                            <li class="end"><a href="#none">매출채권관리</a></li>
		                        </ul>
		                    </li>
		                </ul>
		            </li>
		            <li class="depth_1"><strong>완료된 프로젝트</strong>
		               <ul class="depth_2">
		                    <li>
		                        <a href="#none"><em>폴더</em> 프로젝트 1</a>
		                        <ul class="depth_3">
		                            <li><a href="#none">최신정보가져오기</a></li>
		                            <li><a href="#none">수납내역조회</a></li>
		                            <li><a href="#none">사납내역거래처확인</a></li>
		                            <li><a href="#none">수납내역 거래처확인결과</a></li>
		                            <li><a href="#none">매출채권관리</a></li>
		                        </ul>
		                    </li>
		                    <li class="last">
		                        <a href="#none"><em>폴더</em> 프로젝트 2</a>
		                        <ul class="depth_3">
		                            <li><a href="#none">최신정보가져오기</a></li>
		                            <li><a href="#none">수납내역조회</a></li>
		                            <li><a href="#none">사납내역거래처확인</a></li>
		                            <li><a href="#none">수납내역 거래처확인결과</a></li>
		                            <li class="end"><a href="#none">매출채권관리</a></li>
		                        </ul>
		                    </li>
		                </ul>
		            </li>
		        </ul>
		    </div>
			</div>

			<div id="mainleft" class="col-sm-7">
				<!-- 전자결재 -->
				<div class="board">
					<table class="board-table">
						<thead>
							<tr>
								<th scope="col" class="seq">번호</th>
								<th scope="col" class="title">제목</th>
								<th scope="col" class="date">작성일</th>
								<th scope="col" class="kind">결재종류</th>
								<th scope="col" class="state">결재상태</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="seq">1</td>
								<td class="title">제목</td>
								<td class="date">작성일</td>
								<td class="kind">결재종류</td>
								<td class="state">결재완료</td>
							</tr>
							<tr>
								<td class="seq">2</td>
								<td class="title">제목</td>
								<td class="date">작성일</td>
								<td class="kind">결재종류</td>
								<td class="state">결재완료</td>
							</tr>
							<tr>
								<td class="seq">3</td>
								<td class="title">제목</td>
								<td class="date">작성일</td>
								<td class="kind">결재종류</td>
								<td class="state">결재완료</td>
							</tr>
							<tr>
								<td class="seq">4</td>
								<td class="title">제목</td>
								<td class="date">작성일</td>
								<td class="kind">결재종류</td>
								<td class="state">결재완료</td>
							</tr>
							<tr>
								<td class="seq">5</td>
								<td class="title">제목</td>
								<td class="date">작성일</td>
								<td class="kind">결재종류</td>
								<td class="state">결재완료</td>
							</tr>
							<tr>
								<td class="seq">6</td>
								<td class="title">제목</td>
								<td class="date">작성일</td>
								<td class="kind">결재종류</td>
								<td class="state">결재완료</td>
							</tr>
							<tr>
								<td class="seq">7</td>
								<td class="title">제목</td>
								<td class="date">작성일</td>
								<td class="kind">결재종류</td>
								<td class="state">결재완료</td>
							</tr>
						</tbody>
					</table>
				</div>

			</div>
			</div>
		</div>
	</div>
	<script src="./resources/js/bootstrap.bundle.min.js"></script>
</body>
</html>
