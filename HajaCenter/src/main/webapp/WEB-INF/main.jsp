<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/part/header.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="/HajaCenter/css/main.css">
<script type="text/javascript" src="/HajaCenter/script/main.js"></script>
</head>
<jsp:include page="/part/topMenu.jsp"></jsp:include>
<div id="container">
	<div id="container">
		<div id="imgs">
			<ul id="imgUl">
				<li><img src="image/main1.png"></li>
				<li><img src="image/main2.png"></li>
				<li><img src="image/main3.png"></li>
				<li><img src="image/main4.png"></li>
				<li><img src="image/main5.png"></li>
				<li><img src="image/main6.png"></li>
				<li><img src="image/main7.png"></li>
				<li><img src="image/main8.png"></li>
			</ul>
			<a id="prev">〈</a> <a id="next">〉</a>
		</div>
		<div class="contents">
			<div class="divboard">
				<a style="font-size: 50px; color: #757575; padding-left: 10%;" href="menu3.do"><b>게시판</b></a>
				<table id="articletable">
					<thead>
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성일</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="article" items="${articles }">
							<tr>
								<td>${article.articleId }</td>
								<td>${article.title }</td>
								<td>${article.name}</td>
								<td>${article.wdate}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="divvideo">
				<font size="10px" color="#757575" style="padding-left: 10%;"><b>동영상</b></font><sub><a href="https://vimeo.com/haja/videos" style="color: #757575">&emsp;더보기➤</a></sub>
				<iframe src="https://player.vimeo.com/video/51323431" width="90%" height="500px" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/part/footer.jsp"></jsp:include>