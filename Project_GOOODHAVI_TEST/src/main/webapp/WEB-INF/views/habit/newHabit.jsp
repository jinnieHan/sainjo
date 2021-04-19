<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GOOOD HAVI</title>
</head>
<body>
	<c:if test="${sessionScope.loginMember != null }">
	<div id="habitWelcomeTitle">${sessionScope.loginMember.h_nickname }님의 새로운 습관을 응원해요.</div>
		<form action="habit.reg"  method="post" name="habitForm" onsubmit="return habitCheck();">
			<div class="newHabitBox">
				<span class="newHabitBox_word">습관명 :</span>
				<input name="h_habit" autocomplete="off" autofocus="autofocus">
				<br><br>
				<span class="newHabitBox_word">키워드 :</span>
				<select name="h_keyword">
					<option value="운동">운동</option>
					<option value="독서">독서</option>
					<option value="생활습관">생활습관</option>
					<option value="학습">학습</option>
					<option value="취미">취미</option>
					<option value="돈관리">돈관리</option>
				</select>
				<br><br>
				<div class="newHabitBox_wrapper">
					<button>습관만들기</button>
				</div>
			</div>
		</form>
	</c:if>
</body>
</html>