<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimun-scale=1.0,maximun-scale=1.0">
<link rel="stylesheet" href="./resources/tree.css">
<script type="text/javascript" src="./resources/js/jquery-3.4.1.js"></script>
<script type="text/javascript">
	$(document).ready( function() {
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
<div class="tree_box">
    <div class="con">
        <ul id="tree_menu" class="tree_menu">
            <li class="depth_1"><strong>대금수납</strong>
                <ul class="depth_2" >
                    <li>
                        <a href="#none"><em>폴더</em> 일반계좌수납</a>
                        <ul class="depth_3">
                            <li><a href="#none">최신정보가져오기</a></li>
                            <li><a href="#none">수납내역조회</a></li>
                            <li><a href="#none">사납내역거래처확인</a></li>
                            <li><a href="#none">수납내역 거래처확인결과</a></li>
                            <li><a href="#none">매출채권관리</a></li>
                        </ul>
                    </li>
                    <li class="last">
                        <a href="#none"><em>폴더</em> 일반계좌수납</a>
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
            <li class="depth_1"><strong>대금수납</strong>
                <ul class="depth_2">
                    <li>
                        <a href="#none"><em>폴더</em> 일반계좌수납</a>
                        <ul class="depth_3">
                            <li><a href="#none">최신정보가져오기</a></li>
                            <li><a href="#none">수납내역조회</a></li>
                            <li><a href="#none">사납내역거래처확인</a></li>
                            <li><a href="#none">수납내역 거래처확인결과</a></li>
                            <li><a href="#none">매출채권관리</a></li>
                        </ul>
                    </li>
                    <li class="last">
                        <a href="#none"><em>폴더</em> 일반계좌수납</a>
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