<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="resources/css/login.css">
</head>
<body>
	<div class="headerBox3">
		<img class="loginMemberImg" src="resources/img/${sessionScope.loginMember.h_pic }">
		${sessionScope.loginMember.h_nickname }님 환영합니다!	
		<button class="headerBtn" onclick="memberInfoGo();">회원정보</button>
		<button class="headerBtn" onclick="logout();">로그아웃</button>
	</div>
</body>
</html>