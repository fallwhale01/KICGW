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
.row {
	margin-top: 40px;
	margin-right: 10px;
	margin-bottom: 100px;
}
#mainleft {
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

table {
font-family: "Lato","sans-serif";
font-size: 18px;
width: 100% }       /* added custom font-family  */
 
table.one {                                  
margin-bottom: 3em; 
border-collapse:collapse;   }   
 
td {                            /* removed the border from the table data rows  */
text-align: center;     
width: 10em;                    
padding: 3px;       }       
 
th {
text-align: center;                 
padding: 1em;
background-color: #47c9af;
opacity: 0.5;
color: white;
}
 
tr {    
height:     }
 
table tr:nth-child(even) {            /* added all even rows a #eee color  */
    background-color: #eee;     }
 
table tr:nth-child(odd) {            /* added all odd rows a #fff color  */
background-color:#fff;      }
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

			<div id="mainleft" class="col-sm-3">
				<!-- 공지사항 -->
				<div class="board">
					<h3>공지사항</h3>
					<table class="board-table">
						<thead>
							<tr>
								<th scope="col" class="title">제목</th>
								<th scope="col" class="date">작성일</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="title"><a href="#">제목</a> 아이콘 + 조회수</td>
								<td class="date">작성일</td>
							</tr>
							<tr>
								<td class="title"><a href="#">제목</a> 아이콘 + 조회수</td>
								<td class="date">작성일</td>
							</tr>
							<tr>
								<td class="title"><a href="#">제목</a> 아이콘 + 조회수</td>
								<td class="date">작성일</td>
							</tr>
							<tr>
								<td class="title"><a href="#">제목</a> 아이콘 + 조회수</td>
								<td class="date">작성일</td>
							</tr>
							<tr>
								<td class="title"><a href="#">제목</a> 아이콘 + 조회수</td>
								<td class="date">작성일</td>
							</tr>
							<tr>
								<td class="title"><a href="#">제목</a> 아이콘 + 조회수</td>
								<td class="date">작성일</td>
							</tr>
						</tbody>
					</table>
					<a href="#" class="more"><img
						src="http://img.echosting.cafe24.com/skin/base_ko_KR/board/btn_board_more.gif" alt="더보기" /></a>
				</div>

				<div class="sign" style="padding-top: 60px;">
				
					<table class="greenTable">
						<thead>
							<tr>
								<th colspan="5">결재대기 문서</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td colspan="5" class="count" style="color:black; font-size: 40px; font-weight: bold;">0</td>
							</tr>
						</tbody>
					</table>
					<a href="#" class="more"><img
						src="http://img.echosting.cafe24.com/skin/base_ko_KR/board/btn_board_more.gif" alt="더보기" /></a>
				</div>
			</div>
			<div class="col-sm-5">
			<h3>캘린더</h3>
			</div>
			<div class="col-sm-2">
			<h3>채팅목록</h3>
			</div>
			</div>
		</div>
	</div>
	<script src="./resources/js/bootstrap.bundle.min.js"></script>
</body>
</html>
