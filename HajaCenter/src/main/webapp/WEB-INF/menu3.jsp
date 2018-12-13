<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/part/header.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="/HajaCenter/css/menu3.css">
</head>
<jsp:include page="/part/topMenu.jsp"></jsp:include>
<div id="container">
	<div id="bennerimage">
		<img src="image/benner.jpg" width="100%" height="300px">
	</div>
	<div id="bennercolor">Q &amp; A</div>
	<div id="containerbody">
		<div id="divtable">
			<table id="articletable" style="text-align: center; border: 5px solid #dddddd">
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
			<div id="divbtn">
				<button class="btn btnwrite" onclick="javascript:location.href='writeArticleForm.do'">글쓰기</button>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/part/footer.jsp"></jsp:include>