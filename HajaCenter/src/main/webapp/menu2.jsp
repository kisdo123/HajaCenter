<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="/part/header.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="/HajaCenter/css/menu2.css">
<script type="text/javascript" src="/HajaCenter/script/menu2.js"></script>
</head>
<jsp:include page="/part/topMenu.jsp"></jsp:include>
<div id="container">
	<div id="bennerimage">
		<img src="image/benner.jpg" width="100%" height="300px">
	</div>
	<div id="bennercolor">대 관 하 기</div>
	<div id="containerbody">
		<div>
			<ul id="sidemenu">
				<li>
					<a href="javascript:location.reload();">대관 신청</a>
				</li>
				<li>
					<a href="rentlookup.jsp">신청 조회</a>
				</li>
				<li>
					<a href="rentcancel.jsp">신청 취소</a>
				</li>
				<li>
					<a href="rentcheck.jsp">결과 확인</a>
				</li>
			</ul>
		</div>
		<div id="maintext">
			<br>
			<h1 style="color: #757575;">대관 신청</h1>
			<br>
			<br>
			<br>
			<br>
			<button id="btnback" class="btn btncalender">이전달</button>
			<b id="monthTitle"></b>
			<button id="btngo" class="btn btncalender">다음달</button>
			<div id="divtable">
				<form>
					<table>
						<!-- 달력 들어가는 부분 -->
					</table>
					<div style="margin-bottom: 100px;">
						보여줌 :
						<input type="text" name="dateroom" id="dateroom" readonly="readonly">
						&emsp;&emsp; 히든할거 :
						<!-- 히든으로 날짜 데이터 넘겨줌  -->
						<input type="text" name="date" id="date" readonly="readonly">
						<!-- 히든으로 공간 데이터 넘겨줌 -->
						<input type="text" name="roomId" id="roomId" readonly="readonly">
						&emsp;&emsp; 시간 : <select name="roomtime">
							<option value="">------시간 선택------</option>
							<option value="">1</option>
							<option value="">2</option>
							<option value="">3</option>
							<option value="">4</option>
							<option value="">5</option>
						</select>
					</div>
					<!-- <input class="btn btncalender" type="submit" value="결정하기"> -->
				</form>
				<button id="radioButton" class="btn btncalender">선택</button>
			</div>
		</div>
	</div>
</div>
<script>
	makeCalendar();
</script>
<jsp:include page="/part/footer.jsp"></jsp:include>