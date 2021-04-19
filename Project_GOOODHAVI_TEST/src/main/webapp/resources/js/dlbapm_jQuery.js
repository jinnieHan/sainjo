function connectTitleAreaSummonEvent() {
	$("#siteTitleArea").mouseenter(function() {
		$(this).css("top", "0px");
	});
	$("#siteTitleArea").mouseleave(function() {
		$(this).css("top", "-55px");
	});
}


//닉네임 확인하기
function connectIdCheckEvent() {
	var h_nicknameInput = document.joinForm.h_nickname;
	$("#h_nicknameBT").click(function() {
		alert("asd");
		var h_nickname = $("#h_nickname").val();
		$.getJSON("member.nickname.check?h_nickname=" + h_nickname, function(nick) {
			if (nick.member[0] == null) {
				alert(h_nickname + "은 사용 가능합니다.");
			} else {
				alert("사용할 수 없는 닉네임입니다.");
				h_nickname.value = "";
			}
		});
	});
}
//이메일 확인하기
function checkEmailCheckEvent() {
	var h_emailaddr1Input = document.joinForm.h_emailaddr1;
	var h_emailaddr2Input = document.joinForm.h_emailaddr2;
	$("#h_emailaddrBT").click(function() {
		var h_emailaddr1 = $("#h_emailaddr1").val();
		var h_emailaddr2 = $("#h_emailaddr2").val();
		$.getJSON("member.email.check?h_emailaddr=" + h_emailaddr1
				+ h_emailaddr2, function(email) {
			if (email.member[0] == null) {
				alert(h_emailaddr1 + h_emailaddr2 + "은 사용 가능합니다.");
			} else {
				alert("사용할 수 없는 이메일입니다.");
				h_emailaddr1Input.value = "";
				h_emailaddr2Input.value = "";
			}
		});
	});
}




$(function() {
	connectIdCheckEvent();
	checkEmailCheckEvent();
	connectTitleAreaSummonEvent();
});
