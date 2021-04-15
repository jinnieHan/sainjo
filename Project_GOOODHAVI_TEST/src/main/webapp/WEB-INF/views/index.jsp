<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GOOOD HAVI</title>
<link rel="stylesheet" href="resources/css/index.css">
<link rel="stylesheet" href="resources/css/member.css">
<link rel="stylesheet" href="resources/css/board.css">
<link rel="stylesheet" href="resources/css/habit.css">
<link rel="stylesheet" href="resources/css/statistics.css">
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="resources/js/jQuery.js"></script>
<script type="text/javascript" src="resources/js/aqicn.js"></script>
<script type="text/javascript" src="resources/js/go.js"></script>
<script type="text/javascript" src="resources/js/validCheck.js"></script>
<script type="text/javascript" src="resources/js/dlbapmCheck.js"></script>
<script type="text/javascript" src="resources/js/dlbapm_jQuery.js"></script>
<script type="text/javascript" src="resources/js/gooodHabit_jQuery.js"></script>
<script type="text/javascript">

</script>
</head>
<body>
	<header id="fixedHeader">
		<a href="index.do" id="siteTitle">좋은습관만들기 v1.0 </a>
		<div id="siteLoginArea">
			<jsp:include page="${loginPage }"></jsp:include>
		</div>
	</header>
	<nav class="nav">
		<div class="naviBar">
			<a href="habit.go">나의 습관</a>
			<a href="sns.go">커뮤니티</a>
			<a href="statistics.go?h_nickname=${sessionScope.loginMember.h_nickname }">습관 통계</a>
		</div>
	</nav>
	<div id="siteContentArea">
		<jsp:include page="${contentPage }"></jsp:include>
	</div>
	
	
</body>
</html>