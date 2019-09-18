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
<title>메인페이지</title>
<style type="text/css">
/* #aside {
	position: absolute;
	left: 0;
} */


#mainleft {
	border: 1px solid #000;
	padding: 15px;
}

.timeInput {
	font-family: 나눔고딕, NanumGothic;
	font-size: 4em;
	border: 1 #fff;
	color: #684816;
	text-align: center;
	padding: 30px;
	border-radius: 5px;
	font-weight: bold
}

.clock-form {
	border-radius: 10px;
	border: 5px solid #353535;
	text-align: center;
	height: 200px;
}

.checkin {
	/* 버튼 디자인  */
	
}

.checkout {
	/* 버튼 디자인  */
}

#clock {
	padding-top: 15px;
	color: black;
	font-size: 35px;
}

.board-table {
	border: 3px solid #47c9af;
	width: 50%;
}

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
<script type="text/javascript" src="./resources/js/jquery-3.4.1.js"></script>
<script type="text/javascript" src="./resources/js/jquery.animateNumber.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		printClock();
		/* 출근하기 눌렀을때 초까지 저장??? */
		$('.checkin').on('click', function() {
			var str = printClock();
			console.log(str);
		});

		/* 퇴근하기 눌렀을 때 */
		$('.checkout').on('click', function() {
			var str = printClock();
			console.log(str);
		});
		
		$('.count').animateNumber({
			number: 8
		});
	});
	function printClock() {

		var week = [ '일', '월', '화', '수', '목', '금', '토' ];
		var clock = document.getElementById("clock"); // 출력할 장소 선택
		var currentDate = new Date(); // 현재시간
		var calendar = currentDate.getFullYear() + "-"
				+ (currentDate.getMonth() + 1) + "-" + currentDate.getDate() // 현재 날짜
		var currentHours = addZeros(currentDate.getHours(), 2);
		var currentMinute = addZeros(currentDate.getMinutes(), 2);
		var currentSecond = addZeros(currentDate.getSeconds(), 2);
		var currentSeconds = addZeros(currentDate.getSeconds(), 2);

		if (currentSeconds >= 0) {		// 50초 이상일 때 색을 변환해 준다.
			currentSeconds = '<span style="color:grey;">' + currentSeconds
					+ '</span>'
		}
		// 요일 출력 구문 
		var dayWeek = week[currentDate.getDay()];
		clock.innerHTML = "<span style='font-size: 30px'>" + calendar + ' (' +dayWeek + ') '
				+ "</span><br />" + currentHours + ":" + currentMinute + ":"
				+ currentSeconds; //날짜를 출력해 줌

		setTimeout("printClock()", 1000); // 1초마다 printClock() 함수 호출

		return currentHours + ":" + currentMinute + ":" + currentSecond;
	}

	function addZeros(num, digit) { // 자릿수 맞춰주기
		var zero = '';
		num = num.toString();
		if (num.length < digit) {
			for (i = 0; i < digit - num.length; i++) {
				zero += '0';
			}
		}
		return zero + num;
	}
</script>
</head>
<body>

	<div id="wrapper">
		<%@include file="./asdqwe.jsp"%>
	<div id="container">
		<div class="row">
			<div id="aside" class="col-sm-2">
				<!-- 출결 체크박스 -->
				<div class="clock-form">
					<div id="clock"></div><br />
					<button class="btn btn-outline-dark checkin">출근하기</button>&nbsp;&nbsp;&nbsp;
					<button class="btn btn-outline-dark checkout">퇴근하기</button>
				</div>
			</div>

			<div id="mainleft" class="col-sm-9">
			
			<table >
				<tr >
				total
				<div class='graph stack1'>
					<span style="width:75%";>75%</span>
				</div>
				</tr>
				<tr>
				ing
				<div class='graph stack2'>
					<span style="width:60%";>60%</span>
				</div>
				</tr>
				<tr>
				ed
				<div class='graph stack3'>
					<span style="width:25%";>25%</span>
				</div>
				</tr>
			</table>
			
			<div class="sign" style="padding-top: 100px;">
				<h3>전체 프로젝트</h3>
					<table class="greenTable">
						<thead>
							<tr>
								<th colspan="4">결재대기 문서</th>
								<th>작성일</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td colspan="5" class="count" style="color:tomato; font-size: 20px">0</td>
							</tr>
						</tbody>
					</table>
				</div>
				
					<div class="sign" style="padding-top: 50px;">
				<h3>완료 된 프로젝트</h3>
					<table class="greenTable">
						<thead>
							<tr>
								<th colspan="4">결재대기 문서</th>
								<th>작성일</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td colspan="5" class="count" style="color:tomato; font-size: 20px">0</td>
							</tr>
						</tbody>
					</table>
			</div>
				
			</div>
		</div>
	</div>
	<script src="./resources/js/bootstrap.bundle.min.js"></script>
	
		
</body>
</html>
