<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="./resources/styles.css">
<script src="text/javascript">
</script>
<style type="text/css">

html,

body {
	margin: 0;
	margin-left: 20px;
	margin-right: 20px;
	padding:10;
	height:100%;
}

#wrapper {
	position:relative;
}

#header {
	height:70px;
}

#aside {
	position: absolute;
	left: 0%;
}

#main {
	position: absolute;
	left: 20%;
}

#container {
	margin: 4px;
	padding:20px;

}

#footer {
	position:fixed;
	bottom:0;
	width:100%;
	height:70px;   
	background:#ccc;
}
</style>

    <div id="header"></div>
    <div id='cssmenu'>
	<ul>
   <li><a href='#'>Home</a></li>
   <li><a href='./main.jsp'>메뉴</a></li>
   <li><a href='#'>Company</a></li>
   <li><a href='#'>Contact</a></li>
	</ul>
	</div>
	
    <div id="footer">footer</div>

