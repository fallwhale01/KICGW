<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>

<HEAD>

<TITLE>footer 하단 고정</TITLE>

</HEAD>
<meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="./resources/styles.css">
   <script src="text/javascript">   </script>
<style tyle="text/css">

html,

body {

    margin: 0;
    
    margin-left: 20px;
    margin-right: 20px;

    padding:0;

    height:100%;

}

#wrapper {

	position:relative;

    min-height:100%;

}

#header {

	height:70px;

}

#aside {
	float: left;
	padding: 20px;
	background-color: pink;
}

#main {
	
}

#container {
	margin: 4px;
    padding:20px;

}

#footer {

    position:absolute;

    bottom:0;

    width:100%;

    height:70px;   

    background:#ccc;

}
.login-form {
		width: 500px;
    	margin: 50px auto;
    	border: 3px solid #47c9af;
	}
    .login-form form {
    	margin-bottom: 15px;
        background: white;
        padding: 30px;
    }
    .login-form h2 {
        margin: 0 0 15px;
    }
    .form-control {
        min-height: 38px;
        border-radius: 2px;
    }
    .button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
  cursor: pointer;
}

.button1 {
  background-color: white; 
  color: black; 
  border: 2px solid #4CAF50;
}

.button1:hover {
  background-color: #4CAF50;
  color: white;
}
</style>

<BODY>

<div id="wrapper">
    <div id="header"></div>
    <div id='cssmenu'>
	<ul>
   <li><a href='#'>Home</a></li>
   <li><a href='#'>Products</a></li>
   <li><a href='#'>Company</a></li>
   <li><a href='#'>Contact</a></li>
	</ul>
	</div>
	<div class="login-form">
	<div style="color: red; text-align: center">login</div>
    <form action="login_ok.do" method="post" name="frm">
        <h2 class="text-center" style="color: white">Log in</h2>       
        <div class="form-group">
            <input type="text" id="u_id" name="u_id" class="form-control" placeholder="UserID" required="required">
        </div>
        <div class="form-group">
            <input type="password" id="u_password" name="u_password" class="form-control" placeholder="Password" required="required">
        </div>
        <div class="form-group">
        <button class="button button1">Green</button>
            <!-- <button type="button" id="submit" class="btn btn-primary btn-block">Log in</button> -->
        </div>
        <div class="clearfix">
        	<div class="search_id" style="cursor: pointer; color: #368AFF; float: left; padding-left: 10px" data-toggle="modal" data-target="#id_find_modal">아이디 찾기</div>
        	<div class="search_id" style="cursor: pointer; color: #368AFF; float: left; padding-left: 20px" data-toggle="modal" data-target="#password_find_modal">비밀번호 찾기</div>
        	<div class="search_id" style="cursor: pointer; color: #368AFF; float: left; padding-left: 20px" onclick="location.href='add.do'">회원가입</div>
        </div>        
    </form>
</div>
    <div id="footer">footer</div>

</div>

</BODY>

</HTML>