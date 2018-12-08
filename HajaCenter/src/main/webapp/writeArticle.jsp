<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="/part/header.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="/HajaCenter/css/writeArticle.css">
</head>
<jsp:include page="/part/topMenu.jsp"></jsp:include>
<div id="container">
	<div id="bennerimage">
		<img src="image/benner.jpg" width="100%" height="300px">
	</div>
	<div id="bennercolor">Q &amp; A</div>
	<div id="containerbody">
		<form action="menu3.jsp" method="post">
			<table>
				<thead>
					<tr>
						<th>게시판 글쓰기 양식</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							<input type="text" placeholder="글 제목" name="articleTitle" maxlength="50" required autofocus>
						</td>
					</tr>
					<tr>
						<td>
							<textarea placeholder="글 내용" name="articleContent"></textarea>
						</td>
					</tr>
				</tbody>
			</table>
			<div id="divwrite">
				<button class="btn btnwrite">작성 완료</button>
			</div>
		</form>
	</div>
</div>
<input type="text" placeholder="안녕">
<jsp:include page="/part/footer.jsp"></jsp:include>