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
		<div class="joinTitle">회원가입</div>
		<form action="member.join" method="post" enctype="multipart/form-data"
			onsubmit="return joinCheck();" name="joinForm">
			<div align="left">
				<fieldset>
					<legend id="fieldLegend">닉네임</legend>
						<input id="h_nickname" name="h_nickname" class="i1" 
							autocomplete="off" autofocus="autofocus" maxlength="10">
					<div align="right" id="h_nicknameBT">중복검사</div>
				</fieldset>
			</div>
			<div align="left">
				<fieldset>
					<legend id="fieldLegend">이메일</legend>
						<input id="h_emailaddr1" name="h_emailaddr" placeholder="이메일주소" class="i1"
								autocomplete="off" autofocus="autofocus" maxlength="30">
						<select id="h_emailaddr2" name="h_emailaddr2" class="es1">
							<option value="">직접 입력</option>
							<option value="@gmail.com">gmail.com</option>
							<option value="@naver.com">naver.com</option>
						</select>
					<div align="right" id="h_emailaddrBT">중복검사</div>
				</fieldset>
			</div>
			<div align="left">
				<fieldset>
					<legend id="fieldLegend">비밀번호</legend>
						<input class="" name="h_password" autocomplete="off" type="password"
							placeholder="비밀번호" maxlength="18"> 
						<input class="" name="h_pwCh" autocomplete="off" type="password"
							placeholder="비번 재확인" maxlength="18">
				</fieldset>
			</div>	
			<div align="center">
				<fieldset>
					<legend id="fieldLegend">성별</legend>
					<input id="radio_g1" name="h_gen" type="radio" value="male" checked="checked">
					<label for="radiog1" style="font-size: 25pt;">남자</label>
					<input id="radio_g2" name="h_gen" type="radio" value="fem" style="font-size: 20pt;">
					<label for="radio_g2" style="font-size: 25pt;">여자</label>
					<input id="radio_g3" name="h_gen" type="radio" value="none">
					<label for="radio_g3" style="font-size: 25pt;">안알려줌</label>
				</fieldset>
			</div>				
			<div align="left">
				<fieldset id="h_picField">
					<legend id="fieldLegend">사진</legend>
						<input name="h_pic" type="file"
							style="font-family: 'b'; font-size: 22pt; font-weight: 900;">
				</fieldset>
			</div>
			<div align="center">
				<fieldset>
					<legend id="fieldLegend">습관 설정 하기</legend>
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
			<div align="right">
				<button>가입</button>
			</div>
		</form>
	</div>
</body>
</html>