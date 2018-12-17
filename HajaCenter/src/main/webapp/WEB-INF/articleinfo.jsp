<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/part/header.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="/HajaCenter/css/articleinfo.css">
</head>
<jsp:include page="/part/topMenu.jsp"></jsp:include>
<div id="container">
	<div id="bennerimage">
		<img src="image/benner.jpg" width="100%" height="300px">
	</div>
	<div id="bennercolor">Q &amp; A</div>
	<div id="containerbody">
		<table>
			<tbody>
				<tr>
					<td class="tidatetop"><b>${article.title }</b></td>
					<td id="tdwdate" class="tidatetop">${article.wdate }</td>
				</tr>
				<tr>
					<td colspan="2">
						<div id="trboderdashed">
							<b>${article.name }</b>
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="2" id="textcontentarea"><div id="divminheight">${article.content }</div></td>
				</tr>
			</tbody>
		</table>
		<div id="divwrite">
			<div class="btn btnwrite">
				<a href="writeArticleForm.do">글쓰기</a>
			</div>
			<div class="btn btnwrite">
				<a href="menu3.do">목록보기</a>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/part/footer.jsp"></jsp:include>