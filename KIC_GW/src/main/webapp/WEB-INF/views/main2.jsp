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
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&amp;subset=korean" rel="stylesheet">
<title>메인페이지</title>
<style type="text/css">
/* #aside {
	position: absolute;
	left: 0;
} */
.checkin-time {
	margin-top: 10px;
}
.checkout-time {
	
}
.checkin-time, .checkout-time {
	font-family: "Nanum Gothic", sans-serif;
}
.checkin {
	margin-left: 25px;
}
.checkin, .checkout {
	margin-top: 10px;
	text-align: center;
}

.row {

	margin-top: 40px;
	margin-right: 10px;
	margin-bottom: 100px;
}
#mainleft {
	padding: 15px;
}

.clock-form {
	padding-top: 5px;
	border-radius: 10px;
	border: 5px solid #353535;
	text-align: center;
	height: 130px;
}

#clock {
	color: black;
	font-family: "Lato", "sans-serif";
	font-size: 50px;
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

.checkbox {
	margin-bottom: 10px;
}
.calday {
	margin-bottom:0;
}
</style>
<script type="text/javascript" src="./resources/js/jquery-3.4.1.js"></script>
<script type="text/javascript" src="./resources/js/jquery.animateNumber.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		// 현재 시각 출력 함수호출
		printClock();
		
		var check = 0;
		
		var checkinout = function( eno ) {
			$.ajax({
				url: './checkinout.do',
				type: 'get',
				data: {
					eno: eno
				},
				dataType: 'JSON',
				success: function( json ) {
					results = json.results;
					$.each( results, function() {
						var checkin = this.checkin;
						var checkout = this.checkout;
						
						if( checkin == '' || checkin == null ) {
							$('.checkin').prop( 'disabled', false );
						}else {
							var intime = checkin.split(' ');
							$( '.checkin-time').html( '출근시간 : ' + intime[1] );
							$('.checkin').val('출근완료').prop( 'disabled', true );
						}
						
						if( checkout == '' || checkout == null ) {
							$('.checkout').prop( 'disabled', false );
						}else {
							var outtime = checkout.split(' ');
							$( '.checkout-time').html( '퇴근시간 : ' + outtime[1] );
							$('.checkout').val('퇴근완료').prop( 'disabled', true );
						}
						
						
					});
				}
			});
		} // end of checkinout
		
		// 출근, 퇴근 시간 출력
		
		
		var checkin = function( indate ) {
			$.ajax({
				url: './checkin.do',
				type: 'get',
				data: {
					date: indate
				},
				dataType: 'JSON',
				success: function( json ) {
					results = json.results;
					$( results ).each( function() {
						var flag = this.flag;
						if( flag == 0 ) {
							alert('출근되었습니다.');
							var intime = indate.split(' ');
							$( '.checkin-time').html( '출근시간 : ' + intime[1] );
							$('.checkin').val('출근완료').prop( 'disabled', true );
						}else {
							alert('출근하기에 실패하였습니다.');
						}
					});
				},
				error: function( xhr, status, error ) {
					alert( '에러 : ' + status + '\n\n' + error );
				}
			});
		} // end of checkin
		var checkout = function( outdate ) {
			
			$.ajax({
				url: './checkout.do',
				type: 'get',
				data: {
					date: outdate
				},
				dataType: 'JSON',
				success: function( json ) {
					results = json.results;
					$( results ).each( function() {
						var flag = this.flag;
						if( flag == 0 ) {
							alert('퇴근되었습니다.');
							var outtime = outdate.split(' ');
							$( '.checkout-time').html( '퇴근시간 : ' + outtime[1] );
							$('.checkout').val('퇴근완료').prop( 'disabled', true );
						}else {
							alert('퇴근하기에 실패하였습니다.');
						}
					});
				},
				error: function( xhr, status, error ) {
					alert( '에러 : ' + status + '\n\n' + error );
				}
			});
		} // end of checkout
		var indate = '';
		/* 출근하기 눌렀을때 초까지 저장 */
		$('.checkin').on('click', function() {
			// 출근 시간
			indate = printClock();
			console.log( indate );
			checkin( indate );
			
		});
		var outdate = '';
		/* 퇴근하기 눌렀을 때 */
		$('.checkout').on('click', function() {
				outdate = printClock();
				checkout( outdate );
		});
		
		
		$('.count').animateNumber({
			number: 8
		});
		
		checkinout("1");
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
		clock.innerHTML = "<div class='calday' style='font-size: 20px'>" + calendar + ' (' +dayWeek + ') '
				+ "</div>" + currentHours + ":" + currentMinute + ":"
				+ currentSeconds; //날짜를 출력해 줌

		setTimeout("printClock()", 1000); // 1초마다 printClock() 함수 호출

		return calendar + " " + currentHours + ":" + currentMinute + ":" + currentSecond;
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
	
	// 페이지 새로고침
	 if (self.name != 'reload') {
         self.name = 'reload';
         self.location.reload(true);
     }
     else self.name = ''; 
	
</script>
</head>
<body>
	<div id="wrapper">
		<%@include file="./asdqwe.jsp"%>
		<div id="container">
		<div class="row">
			<div id="aside" class="col-sm-2">
				<!-- 출결 체크박스 -->
				<div class="checkbox"><img alt="check" src="./resources/img/check.png" width="20" /> 근태관리</div>
				<div class="clock-form">
					<div id="clock"></div>
				</div>
				<div>
					<div class="checkin-time">출근시간 : 미확인</div>
					<div class="checkout-time">퇴근시간 : 미확인</div>
					<button class="btn btn-outline-dark checkin">출근하기</button>&nbsp;&nbsp;
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
			<div class="col-sm-4">
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
