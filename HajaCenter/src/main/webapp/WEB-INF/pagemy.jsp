<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link rel="stylesheet" href="/HajaCenter/css/bootstrap.min.css">
<link rel="stylesheet" href="/HajaCenter/css/pagejoin.css">
<script type="text/javascript" src="/HajaCenter/script/pagejoin.js"></script>
</head>
<body class="text-center" oncontextmenu="return false" ondragstart="return false" onselect="return false">
	<form action="modify.do" method="post" class="form-signin" onsubmit="return check()">
		<br>
		<img id="logo" src="image/logoeng.PNG">
		<div class="joindiv">
			<b>아이디</b>
		</div>
		<input type="text" id="inputID" class="form-control" name="id" placeholder="아이디" maxlength="10" value="${user.id }" maxlength="10" readonly required>
		<div class="joindiv">
			<b>이름</b>
		</div>
		<input type="text" id="name" class="form-control" name="name" value="${user.name }" placeholder="이름" maxlength="10" required readonly>
		<div class="joindiv">
			<b>비밀번호</b>
		</div>
		<input type="password" id="inputPW" class="form-control" name="pw" value="${param.pw }" placeholder="비밀번호 4자리이상, 12자리이하" minlength="4" maxlength="12" autofocus required>
		<div class="joindiv">
			<b>연락처</b>
		</div>
		<input type="tel" id="tel" class="form-control" name="phone" value="${user.phone }" placeholder="01012345678 (-)하이픈 제외" pattern="[0-1]{3}[0-9]{4}[0-9]{4}" required>
		<div class="joindiv">
			<b>소속</b>
		</div>
		<input type="text" id="team" class="form-control" name="team" value="${user.team }" placeholder="소속" maxlength="15" required>
		<div class="joindiv">
			<b>생년월일</b>
		</div>
		<input type="date" id="date" class="form-control" name="birth" value="${user.birth }" placeholder="생년월일 ex) 020228" pattern="[0-9]{2}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}" required>
		<br>
		<input class="btn btn-lg btn-primary btn-block" type="submit" value="정보변경">
		<a href="main.do" style="color: black;">가입취소</a>
	</form>
</body>
</html>
