<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
  <link rel="stylesheet" href="./resources/menu.css">
   <script type="text/javascript">
   	$(document).ready( function() {
   		$('#menu li.active').addClass('open').children('ul').show();
   		$('#menu li.has-sub>a').on('click', function(){
   			$(this).removeAttr('href');
   			var element = $(this).parent('li');
   			if (element.hasClass('open')) {
   				element.removeClass('open');
   				element.find('li').removeClass('open');
   				element.find('ul').slideUp(200);
   			}
   			else {
   				element.addClass('open');
   				element.children('ul').slideDown(200);
   				element.siblings('li').children('ul').slideUp(200);
   				element.siblings('li').removeClass('open');
   				element.siblings('li').find('li').removeClass('open');
   				element.siblings('li').find('ul').slideUp(200);
   			}
   		});
   	});
   </script>
<div id='menu'>
<ul>
   <li class='active has-sub'><a href='#'>켈린더 관리</a>
      <ul>
         <li><a href='./calcompany.do'>회사 일정 관리</a></li>
         <li><a href='./caldepart.do'>부서별 일정 관리</a></li>
         <li><a href='./calone.do'>개인 일정 관리</a></li>
      </ul>
   </li>
   <li><a href='./cal.do'>전체 일정</a></li>
</ul>
</div>
