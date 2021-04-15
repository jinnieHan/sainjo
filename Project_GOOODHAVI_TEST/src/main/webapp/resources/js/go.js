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

function habitGo() {
	location.href = "habit.go";
}

//function snsMsgDelete(no) {
//	if (confirm("진짜?")) {
//		location.href = "sns.delete?ds_no=" + no;
//	}
//}
//
//function snsMsgUpdate(no, txt) {
//	txt = prompt("할 말", txt);
//	if (txt != null && txt.length > 0 && txt.length < 250) {
//		location.href = "sns.update?ds_no=" + no + "&ds_txt=" + txt;
//	}
//}
//
//function snsPageChange(page) {
//	location.href = "sns.page.change?p=" + page;
//}
//
//function snsReplyDelete(no) {
//	if (confirm("진짜?")) {
//		location.href = "sns.reply.delete?dsr_no=" + no;
//	}
//}
//function drDelete(no) {
//	if (confirm("진짜?")) {
//		location.href = "dataroom.delete?dd_no=" + no;
//	}
//}
//function galleryDelete(no, file) {
//	if (confirm("진짜?")) {
//		location.href = "gallery.delete?dg_no=" + no + "&dg_file=" + file;
//	}
//}