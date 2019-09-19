<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimun-scale=1.0,maximun-scale=1.0">
  <link rel="stylesheet" href="./resources/menu.css">

   
<div id="wrapper">
		<%@include file="./asdqwe.jsp"%>
	<div id="container">
		<div class="row">
			<%@include file="./menu.jsp" %>

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
	</div>
<script src="./resources/js/bootstrap.bundle.min.js"></script>
	
		
