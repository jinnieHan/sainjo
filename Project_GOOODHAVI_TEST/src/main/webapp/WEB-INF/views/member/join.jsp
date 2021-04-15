<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
dddddddddddddddd<br>
dddddddddddddddd<br>
dddddddddddddddd<br>
dddddddddddddddd<br>
dddddddddddddddd<br>
dddddddddddddddd<br>
dddddddddddddddd<br>
dddddddddddddddd<br>
dddddddddddddddd<br>
	<form action="member.join" method="post" enctype="multipart/form-data"
		onsubmit="return joinCheck();" name="joinForm">
		<table id="joinTbl">
			<tr>
				<td align="center" colspan="2"><input id="h_nickname"
					name="h_nickname" placeholder="닉네임" class="i1" autocomplete="off"
					autofocus="autofocus" maxlength="10"></td>
			</tr>
			<tr>
				<td align="center" colspan="2"><input id="h_emailaddr"
					name="h_emailaddr" placeholder="이메일주소" class="i1"
					autocomplete="off" autofocus="autofocus" maxlength="30"></td>
			</tr>
			<tr>
				<td align="center" colspan="2"><input type="password"
					name="h_password" placeholder="PW(숫자만 하나 이상)" class="i1"
					autocomplete="off" maxlength="10"></td>
			</tr>
			<tr>
				<td align="center" colspan="2"><input type="password"
					name="h_pwCh" placeholder="PW확인" class="i1" autocomplete="off"
					maxlength="10"></td>
			</tr>
			<tr>
				<td align="center" style="width: 100px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;성별</td>
				<td><input name="h_gen" type="radio" value="남자" checked="checked">남자&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
					<input name="h_gen" type="radio" value="여자">여자</td>
			</tr>
			<tr>
				<td align="center" style="width: 100px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;사진</td>
				<td><input name="h_pic" type="file"
					style="font-family: 'b'; font-size: 13pt; font-weight: 900;"></td>
			</tr>
			<tr>
				<td align="center" style="width: 100px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;키워드</td>
				<td><input name="h_keyword" type="radio" value="운동"checked="checked">운동&nbsp;&nbsp; 
					<input name="h_keyword" type="radio" value="독서">독서&nbsp;&nbsp; 
					<input name="h_keyword" type="radio" value="생활습관">생활습관&nbsp;&nbsp; 
					<input name="h_keyword" type="radio" value="학습">학습&nbsp;&nbsp; 
					<input name="h_keyword" type="radio" value="취미">취미&nbsp;&nbsp;
					<input name="h_keyword" type="radio" value="돈관리">돈관리</td>
			</tr>
			<tr>
				<td colspan="2" align="center"><button>가입</button></td>
			</tr>
		</table>
	</form>
</body>
</html>