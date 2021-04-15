<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GOOOD HAVI</title>
<script type="text/javascript">
	function getToday(){
		var now = new Date();
		var year = now.getFullYear();
		var month = now.getMonth() + 1; 
		var date = now.getDate();

		month = month >=10 ? month : "0" + month;
		date  = date  >= 10 ? date : "0" + date;
		return year + "-" + month + "-" + date; 
	}

	$(function(){
		$("#q3").click(function(){
			confirm("진짜 포기?");
			//var h_check_date = getToday();
			//alert(h);
			//$("form").append(h_check_date); // 누르는 순간에만 화면에 찍힘
			
		});
	});  
	
	$(function(){
		$("#onecheck").on( "click", function(e){
		alert("습관체크");
		$(this).off(e);
		}); 
	});  
	
	$( "#onClickTest" ).on( "click", function( event ) { alert( "This will be displayed only once." ); $( this ).off( event ); });

	$.ajax({
		url:"habit.get",
		success : function(asd){
			$(asd).find("habit").each(function(i, g){
				var h_goal = $(g).find("h_goal_date").text()
				/* var h_chkday = $(g).find("h_check_date").text()
				
				var goalTd = $("<td></td>").text(h_goal);
				var chkdayTd = $("<td></td>").text(h_chkday);
				var tr = $("<tr></tr>").append(goalTd, chkdayTd);
				
				$("#tbl1").append(tr); */
				var html = "<tr>";
				//var html;
				//alert(h_goal);
				for(var i = 0; i < h_goal; i++){
					html += "<td></td>";
					//alert(i);
				}
				html += "</tr>";
				$("#tbl1").append(html);
			});
		}
	});
</script>

</head>
<body>
	${r }
	<hr>
	<c:forEach var="h" items="${habits }">
	<table>
		<tr>
			<th>
				<h2>${h.h_nickname }님의 좋은 습관 만들기</h2>
			</th>
		</tr>
		<tr>
			<td>
				키워드 : ${h.h_keyword }
			</td>
		</tr>
		<tr>
			<td>
				도전 : ${h.h_habit }
			</td>
		</tr>
		<tr>
			<td>
				시작날짜 : ${h.h_start_date } <br>
			</td>
		</tr>
	</table>
	<table id="tbl1" border="1" width="450" height="80">
		
	</table>
	</c:forEach>
	<hr>
	<form action="habit.update">
	<button id="">습관체크</button>
	</form>
	<a id="q3" href="habit.giveup">포기</a>
	<hr>


	<button type="button" id="oneClickTest">oneClick</button> <script> $( "#oneClickTest" ).one( "click", function( event ) { alert( "This will be displayed only once." ); }); </script>

</body>
</html>