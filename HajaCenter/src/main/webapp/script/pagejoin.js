function check() {
	if (!document.join.id.value) {
		alert("ID를 입력하세요");
		return false;
	}

	if (!document.join.name.value) {
		alert("이름을 입력하세요");
		return false;
	}

	if (!document.join.pw.value) {
		alert("비밀번호를 입력하세요");
		return false;
	}

	if (!document.join.confirmPw.value) {
		alert("비밀번호 확인을 입력하세요");
		return false;
	}

	if (document.join.pw.value != document.join.confirmPw.value) {
		alert("비밀번호가 일치하지 않습니다")
	}

	if (!document.join.phone.value) {
		alert("연락처를 입력하세요");
		return false;
	}

	if (!document.join.team.value) {
		alert("소속을 입력하세요");
		return false;
	}

	if (!document.join.birth.value) {
		alert("생년월일을 입력하세요");
		return false;
	}
}

// 아이디 중복체크 화면open
function checkId() {
	console.log("함수호출");
	if (document.join.id.value == "") {
		alert("ID를 입력하세요");
		return;
	}
	url = "confirmId.jsp?id=" + document.join.id.value;
	open(url, "confirm",
			"width=300, height=200, resizable = no, scrollbars = no");
}