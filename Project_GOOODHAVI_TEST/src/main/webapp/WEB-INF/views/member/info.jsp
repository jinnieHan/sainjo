<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table id="joinTbl">
		<form action="member.update" method="post"
			enctype="multipart/form-data" name="memberUpdateForm"
			onsubmit="return memberUpdateCheck();">
			<tr>
				<th colspan="2"><input name="h_nickname"
					value="${sessionScope.loginMember.h_nickname }" class="width100"
					readonly="readonly"
					style="text-align: center; font-size: 20pt; color: white;"></th>
			</tr>
			<tr>
				<th colspan="2"><input name="h_emailaddr"
					value="${sessionScope.loginMember.h_emailaddr }"
					readonly="readonly" class="width100" placeholder="PW"
					maxlength="30" autocomplete="off"></th>
			</tr>
			<tr>
				<th colspan="2"><input name="h_gen"
					value="${sessionScope.loginMember.h_gen }" class="width100"
					maxlength="10" autocomplete="off" readonly="readonly"></th>
			</tr>
			<tr>
				<td colspan="2"><input name="h_password"
					value="${sessionScope.loginMember.h_password }" class="width100"
					type="password" placeholder="PW" maxlength="10" autocomplete="off">
				</td>
			</tr>
			<tr>
				<td colspan="2"><input name="h_pwCh"
					value="${sessionScope.loginMember.h_password }" class="width100"
					type="password" placeholder="PW확인" maxlength="10"
					autocomplete="off"></td>
			</tr>
			<tr>
				<td  colspan="2"
					style="font-family: 'c'; font-size: 17pt; padding-left: 10px; padding-top: 13px; font-weight: 900;">
					<img src="resources/img/${sessionScope.loginMember.h_pic }"
					style="max-width: 30%; box-shadow: 3px 3px 3px black;"> <input
					name="h_pic" type="file" autocomplete="off">
				</td>
			</tr>
			<tr>
				<td align="center" style="width: 100px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;키워드</td>
				<td><input name="h_keyword" type="radio" value="s"checked="checked">운동&nbsp;&nbsp; 
					<input name="h_keyword" type="radio" value="m">독서&nbsp;&nbsp; 
					<input name="h_keyword" type="radio" value="m">생활습관&nbsp;&nbsp; 
					<input name="h_keyword" type="radio" value="m">학습&nbsp;&nbsp; 
					<input name="h_keyword" type="radio" value="m">취미&nbsp;&nbsp;
					<input name="h_keyword" type="radio" value="m">돈관리</td>
			</tr>
		<tr>
			<th colspan="2" style="padding-top: 10px; padding-bottom: 10px;">
				<button style="width: 45%;">수정</button>&nbsp;
		</form>
		<button onclick="bye();" style="width: 45%;">탈퇴</button>
		</th>
		</tr>
	</table>
</body>
</html>