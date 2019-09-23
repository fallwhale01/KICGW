<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimun-scale=1.0,maximun-scale=1.0">
  <link rel="stylesheet" href="./resources/menu.css">
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
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
   	
   	function changeView(value){
   		if(value=="0"){
   			location.href="project_main.jsp";	
   		}
   		else if(value=="1"){
   			location.href="project_create.jsp";
   		}
   		else if(value=="2"){
   			location.href="project_ing.jsp";
   		}
   		else if(value=="3"){
   			location.href="project_ed.jsp";
   		}
   	}
   </script>
<div id='menu'>
<ul>
   <li class='active has-sub'><a href='#'>Project</a>
      <ul>
         <li><a href='#' onclick="cahngeView(1)">Project 생성</a></li>
         <li><a href='#' onclick="cahngeView(2)">진행중 Project</a></li>
         <li><a href='#' onclick="cahngeView(3)">완성된 Project</a></li>
      </ul>
   </li>
   <li><a href='#'>About</a></li>
</ul>
</div>
