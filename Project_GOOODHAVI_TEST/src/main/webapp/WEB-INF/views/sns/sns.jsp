<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<c:if test="${curPage != 1 }">
		<table id="snsL">
			<tr>
				<td align="center" onmouseleave="snsPageChange(${curPage - 1 });">&lt;</td>
			</tr>
		</table>
	</c:if>

	<c:if test="${curPage != allPageCount }">
		<table id="snsR">
			<tr>
				<td align="center" onmouseleave="snsPageChange(${curPage + 1 });">&gt;</td>
			</tr>
		</table>
	</c:if>
	<c:if test="${sessionScope.loginMember != null }">
		<table id="snsWriteArea">
			<tr>
				<td>
					<form action="sns.search" name="snsSearchForm"
						onsubmit="return snsSearchCheck();" method="post">
						<table id="snsSearchTable">
							<tr>
								<td id="sstTd1"><input name="search" maxlength="10"
									autocomplete="off" placeholder="검색"></td>
								<td id="sstTd2"><input type="image"
									src="resources/img/search.png" style="width: 30px;"></td>
							</tr>
						</table>
					</form>
				</td>
				<td id="snsWriteAreaSummoner" align="center" rowspan="2"
					style="background-color: #F44336; border-radius: 0px 20px 20px 0px; cursor: pointer;">
					<img src="resources/img/menu.png">
				</td>
			</tr>
			<tr>
				<td align="center">
					<form action="sns.write" name="snsWriteForm"
						onsubmit="return snsWriteCheck();" method="post">
						<input name="token" value="${token }" type="hidden">
						<table id="snsWriteTable">
							<tr>
								<td id="swtTd1"><textarea name="hs_contents"
										placeholder="내용을 입력하세요." maxlength="250"></textarea></td>
								<td id="swtTd2"><input type="image"
									src="resources/img/write.png" style="width: 30px;"></td>
							</tr>
						</table>
					</form>
				</td>
			</tr>
		</table>
	</c:if>
	<c:forEach var="sm" items="${msgs }">
		<table class="sm" style="box-shadow: 5px 5px 5px;">
			<tr>
				<td rowspan="5" align="center" valign="top" style="width: 95px;">
					<img class="smPhoto" src="resources/img/${sm.h_pic }"
					style="box-shadow: 3px 3px 3px;">
				</td>
				<td class="smOwner">${sm.h_nickname }</td>
			</tr>
			<tr>
				<td class="smDate" align="right"><fmt:formatDate
						value="${sm.hs_date }" type="both" dateStyle="long"
						timeStyle="short" /></td>
			</tr>
			<tr>
				<td class="smTxt">${sm.hs_contents }</td>
			</tr>
			<tr>
				<td id="smReplyArea">
					<c:forEach var="sr" items="${sm.reply }">
						<c:choose>
							<c:when test="${sr.hsr_nickname == sessionScope.loginMember.h_nickname }">
								<span ondblclick="snsReplyDelete('${sr.hsr_no}');"
									class="smReplyID" style="cursor:pointer;" >${sr.hsr_nickname }</span>
							</c:when>
							<c:otherwise>
								<span class="smReplyID">${sr.hsr_nickname }</span>
							</c:otherwise>
						</c:choose>
						${sr.hsr_contents }(<fmt:formatDate value="${sr.hsr_date }" type="both"
							dateStyle="short" timeStyle="short" />)<br>
					</c:forEach>
					<hr>
					<form action="sns.reply.write" method="post"
						onsubmit="return snsWriteReplyCheck(this);">
						<input name="token" value="${token }" type="hidden"> <input
							name="dsr_ds_no" value="${sm.hs_no }" type="hidden"> <span
							class="smReplyID" style="">${sessionScope.loginMember.h_nickname }</span>
						<input name="hsr_contents"
							style="border-bottom: solid 2px;" maxlength="100"
							placeholder="댓글" autocomplete="off">
						<button style="">쓰기</button>
					</form>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="right"><c:if
						test="${sm.h_nickname == sessionScope.loginMember.h_nickname }">
						<button onclick="snsMsgUpdate(${sm.hs_no}, '${sm.hs_contents }');">수정</button>
						<button onclick="snsMsgDelete(${sm.hs_no});">삭제</button>
					</c:if></td>
			</tr>
		</table>
	</c:forEach>
</body>
</html>

