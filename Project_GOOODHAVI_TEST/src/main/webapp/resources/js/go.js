function bye() {
	if (confirm("진짜?")) {
		location.href = "member.bye";
	}
}

function joinGo() {
	location.href = "member.join.go";
}

function logout() {
	var ok = confirm("진짜?");
	if (ok) {
		location.href = "member.logout";
	}
}

function memberInfoGo() {
	location.href = "member.info.go";
}

function snsMsgDelete(no) {
	if (confirm("진짜?")) {
		location.href = "sns.delete?hs_no=" + no;
	}
}

function snsMsgUpdate(no, txt) {
	txt = prompt("할 말", txt);
	if (txt != null && txt.length > 0 && txt.length < 250) {
		location.href = "sns.update?hs_no=" + no + "&hs_contents=" + txt;
	}
}

function snsPageChange(page) {
	location.href = "sns.page.change?p=" + page;
}

function snsReplyDelete(no) {
	if (confirm("진짜?")) {
		location.href = "sns.reply.delete?hsr_no=" + no;
	}
}
