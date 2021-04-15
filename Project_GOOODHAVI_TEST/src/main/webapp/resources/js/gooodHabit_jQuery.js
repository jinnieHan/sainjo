$(function(){
	menubarEvent();
	//scrollMenubarEvent();
});
// 처음에 메뉴바 보여줌
// 5초 후에 사라짐
// 헤더에 마우스 갖다대면 다시 메뉴바 나타남
function menubarEvent() {
	setTimeout(function(){
		$(".nav").css("top", "40px");
	}, 5000);
	$("#fixedHeader").mouseenter(function(e) {
		if (true) {
			$(".nav").css("top", "90px");
			$(".nav").mouseleave(function(e) {
				setTimeout(function() {
					$(".nav").css("top", "40px");
				}, 3000);
			});
		}
	});
}

// 출처 : https://code-study.tistory.com/23
// 아직 파악중. 작동 안함.
function scrollMenubarEvent() {
	var lastScrollTop = 0;
	var delta = 5;
	var fixBox = document.querySelector(".nav");
	var fixBoxHeight = fixBox.offsetHeight;
	var didScroll;
	//스크롤 이벤트 
	window.onscroll = function(e) {
	    didScroll = true;
	};
	
	//0.25초마다 스크롤 여부 체크하여 스크롤 중이면 hasScrolled() 호출
	setInterval(function(){
	    if(didScroll){
	        hasScrolled();
	        didScroll = false;
	    }
	}, 250);
	
	function hasScrolled(){
	    var nowScrollTop = window.scrollY;
	    if (Math.abs(lastScrollTop - nowScrollTop) <= delta){
	        return;
	    }
	    if (nowScrollTop > lastScrollTop && nowScrollTop > fixBoxHeight){
	        //Scroll down
	        // alert('scroll down'); 
	        //Scroll down (메뉴 숨김)
	        fixBox.classList.remove("show");
	    } else if (nowScrollTop + window.innerHeight < document.body.offsetHeight){
	        //Scroll up
	        // alert('scroll up');
	        //Scroll up (하단 고정메뉴 보임)
	        $(".nav").classList.add("show");
	    }
	    lastScrollTop = nowScrollTop;
	}
}





