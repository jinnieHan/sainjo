<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/login.css">
</head>
<body>
	<span>${r }</span>
	<div class="headerBox1">
		<form action="member.login" method="post" name="loginForm"
			onsubmit="return loginCheck();">
			<input class="loginBox" name="h_emailaddr" placeholder="email" maxlength="10" autocomplete="off"> 
			<input class="loginBox" name="h_password" placeholder="password" maxlength="10" type="password" autocomplete="off">
			<button class="headerBtn">로그인</button>
		</form>
	</div>
	<div class="headerBox2">
		<button class="headerBtn" onclick="joinGo();">회원가입</button>
	</div>


</body>
</html>