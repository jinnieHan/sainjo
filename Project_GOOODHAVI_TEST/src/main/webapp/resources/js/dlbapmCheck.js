function joinCheck() {
	var idInput = document.joinForm.h_nickname;
	var pwInput = document.joinForm.h_emailaddr;
	var pwChkInput = document.joinForm.h_pwCh;
	var h_emailaddrInput = document.joinForm.h_emailaddr;
	var photoInput = document.joinForm.dm_photo;
	
	if (isEmpty(idInput) || containsHS(idInput) || $("#dm_idInput").css("color") == "rgb(255, 0, 0)") {
		alert("ID?");
		idInput.value = "";
		idInput.focus();
		return false;
	}
	if (isEmpty(pwInput) || notEquals(pwInput, pwChkInput)
			|| notContains(pwInput, "1234567890")) {
		alert("PW?");
		pwInput.value = "";
		pwChkInput.value = "";
		pwInput.focus();
		return false;
	}
	if (isEmpty(nameInput)) {
		alert("이름?");
		nameInput.value = "";
		nameInput.focus();
		return false;
	}
	if (isEmpty(photoInput)
			|| (isNotType(photoInput, "bmp") && isNotType(photoInput, "gif")
					&& isNotType(photoInput, "jpg")
					&& isNotType(photoInput, "gif") && isNotType(photoInput,
					"png"))) {
		alert("사진?");
		photoInput.value = "";
		photoInput.focus();
		return false;
	}
	return true;
}

function loginCheck() {
	var idInput = document.loginForm.h_emailaddr;
	var pwInput = document.loginForm.h_passwordInput;

	if (isEmpty(idInput) || isEmpty(pwInput)) {
		alert("떽!");
		idInput.value = "";
		pwInput.value = "";
		idInput.focus();
		return false;
	}
	return true;
}

function memberUpdateCheck() {
	var pwInput = document.memberUpdateForm.h_password;
	var pwChkInput = document.memberUpdateForm.h_pwCh;
	var photoInput = document.memberUpdateForm.dm_photo;
	
	if (isEmpty(pwInput) || notEquals(pwInput, pwChkInput)
			|| notContains(pwInput, "1234567890")) {
		alert("PW?");
		pwInput.value = "";
		pwChkInput.value = "";
		pwInput.focus();
		return false;
	}
	if (isNotType(photoInput, "bmp") && isNotType(photoInput, "gif")
			&& isNotType(photoInput, "jpg") && isNotType(photoInput, "png")) {
		alert("사진?");
		photoInput.value = "";
		photoInput.focus();
		return false;
	}
	return true;
}

