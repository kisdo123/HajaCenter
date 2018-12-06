<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/pagelogin.css">
</head>
<body class="text-center" oncontextmenu="return false" ondragstart="return false" onselect="return false">
	<form action="login" method="post" class="form-signin">
		<img id="logo" class="mb-4" src="image/logoeng.PNG">
		<input type="text" id="inputID" class="form-control" placeholder="ID" name="id" maxlength="10" value="${param.id }" required autofocus>
		<c:if test="${errors.id }">
			<script>
				alert("아이디를 입력하세요");
			</script>
		</c:if>
		<c:if test="${errors.noid }">
			<script>
				alert("없는 ID(닉네임)입니다");
			</script>
		</c:if>
		<input type="password" id="inputPW" class="form-control" name="pw" minlength="4" maxlength="12" value="${param.pw }" placeholder="PW" required>
		<c:if test="${errors.pw }">
			<script>
				alert("비밀번호를 입력하세요");
			</script>
		</c:if>
		<c:if test="${errors.idOrPwNotMatch }">
			<script>
				alert("아이디나 비밀번호가 맞지 않습니다");
			</script>
		</c:if>
		<input class="btn btn-lg btn-primary btn-block" type="submit" value="로그인">
		<a href="pagejoin.jsp" style="color: black;">회원가입</a>
	</form>
</body>
</html>
