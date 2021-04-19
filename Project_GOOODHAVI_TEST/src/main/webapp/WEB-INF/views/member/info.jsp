<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="joinBox">
		
		<form action="member.update" method="post" enctype="multipart/form-data" name="memberUpdateForm"
			onsubmit="return memberUpdateCheck();">
			<div align="center">
				<fieldset>
					<legend id="fieldLegend">닉네임</legend>
					<img src="resources/img/${sessionScope.loginMember.h_pic }"
					style="max-width: 30%; box-shadow: 3px 3px 3px black; align-content: center;">
						<input id="h_nickname" name="h_nickname" readonly="readonly" 
						value="${sessionScope.loginMember.h_nickname }"
						style="width:500px; height:auto; 
						text-align: center; font-size: 70pt; color: black; 
						border: none; outline: none; align-items: center;">
				</fieldset>
			</div>
			<div align="center">
				<fieldset>
					<legend id="fieldLegend">이메일</legend>
						<input id="h_nickname" name="h_nickname" readonly="readonly" 
						value="${sessionScope.loginMember.h_emailaddr }"
						style="width:500px; height:auto; 
						text-align: center; font-size: 70pt; color: black; 
						border: none; outline: none;">
				</fieldset>
			</div>
			<div align="center">
				<fieldset>
					<legend id="fieldLegend">성별</legend>
						<input id="h_nickname" name="h_nickname" readonly="readonly" 
						value="${sessionScope.loginMember.h_gen }"
						style="width:500px; height:auto; 
						text-align: center; font-size: 70pt; color: black; 
						border: none; outline: none;">
				</fieldset>
			</div>
			<div align="left">
				<fieldset>
					<legend id="fieldLegend">비밀번호</legend>
						<input class="" name="h_password" autocomplete="off" type="password"
							placeholder="비밀번호" maxlength="18"value="${sessionScope.loginMember.h_password }"> 
						<input class="" name="h_pwCh" autocomplete="off" type="password"
							placeholder="비번 재확인" maxlength="18"value="${sessionScope.loginMember.h_password }">
				</fieldset>
			</div>
			<div align="left">
				<fieldset id="h_picField" >
					<legend id="fieldLegend">사진</legend>
						<input name="h_pic" type="file" autocomplete="off">
				</fieldset>
			</div>
			<div align="center">
				<fieldset>
					<legend id="fieldLegend">습관 재설정 하기</legend>
					<input id="radio_k1" name="h_keyword" type="radio" value="workout" checked="checked">
					<label for="radio_k1" style="font-size: 25pt;">운동 </label>
					<input id="radio_k2" name="h_keyword" type="radio" value="book">
					<label for="radio_k2" style="font-size: 25pt;">독서 </label>
					<input id="radio_k3" name="h_keyword" type="radio" value="habit">
					<label for="radio_k3" style="font-size: 25pt;">생활습관</label>
					<input id="radio_k4" name="h_keyword" type="radio" value="study">
					<label for="radio_k4" style="font-size: 25pt;">학습 </label>
					<input id="radio_k5" name="h_keyword" type="radio" value="hobby">
					<label for="radio_k5" style="font-size: 25pt;">취미 </label>
					<input id="radio_k6" name="h_keyword" type="radio" value="money">
					<label for="radio_k6" style="font-size: 25pt;">돈관리</label>
				</fieldset>
			</div>
				<button style="width: 45%;">수정</button>&nbsp; <p>
		</form>
		<button onclick="bye();" style="width: 45%;">탈퇴</button>
	</div>
		
</body>
</html>