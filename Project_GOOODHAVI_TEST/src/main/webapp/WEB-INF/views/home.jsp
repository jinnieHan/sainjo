<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<link rel="stylesheet" href="resources/css/home.css">
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script>
    jQuery.noConflict(); // 레이아웃 깨짐 방지
    jQuery(document).ready(function(){
    	jQuery('.slider').bxSlider({
	       	speed: 1000, // 바뀌는 속도(밀리세컨)
    		auto: true, // 자동 실행
	       	autoControls: false, // start/stop 컨트롤 사용
	       	stopAutoOnClick: true, // 
	       	pager: false,
	       	autoHover: false, // 마우스 올리면 일시정지
	       	controls: true // prev/next 표시
      	});
    });
  
</script>
</head>
<body>
	<div id="wrapper">
		<div class="slider">
		    <div><img src="resources/img/sliderImg-01.jpg"></div>
		    <div><img src="resources/img/sliderImg-02.jpg" ></div>
		</div>
	</div>
	
</body>
</html>