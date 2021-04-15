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
<div class="margin"></div>
	<c:if test="${sessionScope.loginMember != null }">
	<h1>${sessionScope.loginMember.h_nickname }님의 새로운 습관을 응원해요.</h1>
	<hr>
		<form action="habit.reg"  method="post" name="habitForm" onsubmit="return habitCheck();">
			<table border="1">
				<tr>
					<td colspan="2">
						<input name="h_nickname" value="${sessionScope.loginMember.h_nickname }" 
						readonly="readonly" type="hidden">
					</td>
				</tr>
				<tr>
					<td>습관명 :</td>
					<td><input name="h_habit" autocomplete="off" autofocus="autofocus"></td>
				</tr>
				<tr>
					<td>키워드 :</td>
					<td>
						<select name="h_keyword">
							<option value="운동">운동</option>
							<option value="독서">독서</option>
							<option value="생활습관">생활습관</option>
							<option value="학습">학습</option>
							<option value="취미">취미</option>
							<option value="돈관리">돈관리</option>
						</select>
					</td>
				</tr>
				<tr>
					<td colspan="2"><button>습관만들기</button></td>
				</tr>
			</table>
		</form>
	</c:if>
</body>
</html>