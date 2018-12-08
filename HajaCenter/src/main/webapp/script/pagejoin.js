//비밀번호 입력과 확인 일치
function check() {
	if (document.join.pw.value != document.join.confirmPw.value) {
		alert("비밀번호가 일치하지 않습니다")
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