//function connectSNSWriteAreaSummonEvent() {
//	var swaVisible = false;
//	$("#snsWriteAreaSummoner").click(function() {
//		if (swaVisible) {
//			$("#snsWriteArea").css("left", "-424px");
//		} else {
//			$("#snsWriteArea").css("left", "0px");
//		}
//		swaVisible = !swaVisible;
//	});
//	$("#snsWriteAreaSummoner2").click(function() {
//		if (swaVisible) {
//			$("#snsWriteArea2").css("left", "-413px");
//		} else {
//			$("#snsWriteArea2").css("left", "0px");
//		}
//		swaVisible = !swaVisible;
//	});
//}

function connectTitleAreaSummonEvent() {
	$("#siteTitleArea").mouseenter(function() {
		$(this).css("top", "0px");
	});
	$("#siteTitleArea").mouseleave(function() {
		$(this).css("top", "-55px");
	});
}

//function showAqicn() {
//	_aqiFeed({
//		container : "city-aqi-container",
//		display : "<span style='%style;font-size:10pt;padding:5px 5px;font-family:'b';'>공기 : %aqi(%impact)</span>",
//		city : "seoul",
//		lang : "kr"
//	});
//}

//function connectShowWeatherEvent() {
//	$(document).contextmenu(function() {
//		return false;
//	});
//
//	$("html").mousedown(function(e) {
//		if (e.button == 2) {
//			var url = "http://api.openweathermap.org/data/2.5/weather?q=seoul&appid=baff8f3c6cbc28a4024e336599de28c4&units=metric&lang=kr";
//			$.getJSON(url, function(data){
//				var icon = "https://openweathermap.org/img/wn/"+data.weather[0].icon+".png";
//				$("#weatherImg").attr("src", icon);
//				$("#weatherDesc").text(data.weather[0].description);
//				$("#weatherTemp").text(data.main.temp + "℃(" + data.main.humidity + "%)");
//				
//				$("#weatherArea").css("opacity", "1");
//				$("#weatherArea").css("top", (e.pageY - 30) + "px");
//				$("#weatherArea").css("left", (e.pageX - 70) + "px");
//				
//				setTimeout(function(){
//					$("#weatherArea").css("opacity", "0");
//				}, 2000);
//			});
//		}
//	});
//}

//function connectSkribblEvent() {
//	var socket = io.connect("http://192.168.0.81:9999");
//	var paper = document.getElementById("paper");
//	var pen = paper.getContext("2d");
//	var draw = false;
//	var c = "#FFFFFF";
//	pen.lineWidth = 3;
//
//	var startX = 0;
//	var startY = 0;
//	var endX = 0;
//	var endY = 0;
//	var paperX = $("#paper").offset().left + 8;
//	var paperY = $("#paper").offset().top + 8;
//	$("#brushColor").css("top", (paperY + 5) + "px");
//	$("#brushColor").css("left", (paperX + 5) + "px");
//
//	$(window).resize(function() {
//		paperX = $("#paper").offset().left + 8;
//		paperY = $("#paper").offset().top + 8;
//		$("#brushColor").css("top", (paperY + 5) + "px");
//		$("#brushColor").css("left", (paperX + 5) + "px");
//	});
//
//	$("#paper").mousedown(function(e) {
//		draw = true;
//		startX = e.pageX - paperX;
//		startY = e.pageY - paperY;
//	});
//	$("#paper").mousemove(function(e) {
//		endX = e.pageX - paperX;
//		endY = e.pageY - paperY;
//		if (draw) {
//			socket.emit("myData", {
//				c : c,
//				sx : startX,
//				sy : startY,
//				ex : endX,
//				ey : endY
//			});
//		}
//		startX = endX;
//		startY = endY;
//	});
//	$("#paper").mouseup(function(e) {
//		draw = false;
//	});
//	$("#bc").keyup(function() {
//		c = $(this).val();
//		$(this).css("border", c + " solid 3px");
//		$(this).css("color", c);
//		$("#brushColor").css("color", c);
//	});
//	socket.on("yourData", function(data) {
//		pen.strokeStyle = data.c;
//		pen.beginPath();
//		pen.moveTo(data.sx, data.sy);
//		pen.lineTo(data.ex, data.ey);
//		pen.stroke();
//	});
//}

function connectIdCheckEvent() {
	$("#h_nickname").keyup(function(e) {
		var dm_id = $(this).val();
		$.getJSON("member.id.check?dm_id=" + dm_id, function(data) {
			if (data.member[0] != null) {
				$("#dm_idInput").css("color", "red");
			} else {
				$("#dm_idInput").css("color", "black");
			}
		});
	});
}

//function connectAddressSearchEvent() {
//	$("#addrSearchBtn").click(function() {
//		new daum.Postcode({
//			oncomplete : function(data) {
//				// alert(JSON.stringify(data));
//				$("#dm_addr1Input").val(data.zonecode);
//				$("#dm_addr2Input").val(data.address);
//			}
//		}).open();
//	});
//}

$(function() {
//	showAqicn();
//	connectAddressSearchEvent();
	connectIdCheckEvent();
//	connectSNSWriteAreaSummonEvent();
	connectTitleAreaSummonEvent();
//	connectShowWeatherEvent();
//	connectSkribblEvent();
});
