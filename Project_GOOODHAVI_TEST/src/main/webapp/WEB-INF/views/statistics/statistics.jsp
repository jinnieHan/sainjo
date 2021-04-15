<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		statistics();
		/*
		var avgList = new Array();
		<c:forEach items="${habits}" var="h">
			avgList.push("${h.h_achivement_rate}");
		</c:forEach>
		for (var i = 0; i < avgList.length; i++) {
			alert(avgList[i]);
			//color1(avgList[i], ".doughnutChart", "#FF9969");
			// draw(avgList[i], ".doughnutChart", "#FF9969"); 
		}
		*/
		//alert(avgList);
		//var average = '<c:out value="${habits}" />';
		//alert(average);
		
	});


	function statistics(){
		var myStat = '<c:out value="${myAverage}" />' * 4;
		$(".userWord").css("left", myStat - 30);
		$(".userStat").css("left", myStat - 30);
		myStat = myStat - 8;
		$(".userPointerImg").css("left", myStat);

		var otherStat = '<c:out value="${totalAverage}" />' * 4;
		$(".otherStatLine").css("left", otherStat - 1);
		$(".otherStat").css("left", otherStat - 30);
		$(".otherWord").css("left", otherStat - 30);
	}
	
	// 도넛 그래프에 필요한 함수
	function draw(max, classname, colorname){
		var i = 1;
	    var func1 = setInterval(function(){
	      if(i < max + 1){ // 도넛 그래프가 끝까지 안이어지는 문제 : + 1로 해결
	          color1(i, classname, colorname);
	          i++;
	      } else{
	        clearInterval(func1);
	      }
	    },10);
	   
	}
	function color1(i, classname, colorname){
	   $(classname).css({
	        "background":"conic-gradient("+ colorname +" 0% "+ i +"%, #ffffff "+ i +"% 100%)"
	   });
	}

</script>
</head>
<body>
<div id="habit_list">

	<div id="myStatBox">
		<div class="statTitle">${sessionScope.loginMember.h_nickname }님의 습관달성률</div><!-- 세션에서 닉네임 값 받아와서 넣기 -->
		<div class="depth1">
			<div class="depth2-1">
				<div class="depth3-1">
					0%
				</div>
			</div>
			<div class="depth2-2">
				<div class="depth3-2">
					100%
				</div>
			</div>
			<div class="center1">
				<div class="userWord">
					<!-- 세션에서 닉네임 값 받아와서 넣기 -->
					${sessionScope.loginMember.h_nickname }님의 습관달성률은 <fmt:formatNumber value="${myAverage} " pattern=".0"/>%입니다. 
				</div>
			</div>
			<div class="center2">
				<div class="userStat">
					<fmt:formatNumber value="${myAverage} " pattern=".0"/>%
				</div>
			</div>
			<div class="center3">
				<div class="userPointer">
					<img class="userPointerImg" src="resources/img/pointer.png">
				</div>
			</div>
			<div class="center4_bar">
				<div class="otherStatLine">
				</div>
			</div>
			<div class="center5">
			</div>
			<div class="center6">
				<div class="otherStat">
					<fmt:formatNumber value="${totalAverage} " pattern=".0"/>%
				</div>
			</div>
			<div class="center7">
				<div class="otherWord">
					타 회원님들의 평균 달성률은 <fmt:formatNumber value="${totalAverage} " pattern=".0"/>%입니다.
				</div>
			</div>
		</div>
	</div>
</div>

	
	<div id="myPreviousListBox">
		<div class="statTitle">습관 목록</div>
		<c:forEach var="h" items="${habits }">
			<div class="habitCase">
				<div class="doughnutBox">
					<div class="doughnutChart" 
						style="background:conic-gradient(#FF9969 0% ${h.h_achivement_rate}%, #ffffff ${h.h_achivement_rate}% 100%);">
					</div>
					<span class="doughnutCenter">${h.h_achivement_rate}%</span>
				</div>
				<div class="habitTitle">${h.h_habit }</div>
				<div class="habitStartDate">
					<fmt:formatDate value="${h.h_start_date }" type="both" dateStyle="short" timeStyle="short"/><br>
				</div>
				<div class="habitEndDate">
					~ <fmt:formatDate value="${h.h_end_date }" type="both" dateStyle="short" timeStyle="short"/>
				</div>
			</div>
		</c:forEach>
	</div>
	
</body>
</html>