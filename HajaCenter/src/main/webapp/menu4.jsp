<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="/part/header.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="css/menu4.css">
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=96b8706698bbb616b540588b939a86bc&libraries=services"></script>
</head>
<jsp:include page="/part/topMenu.jsp"></jsp:include>
<div id="container">
	<div id="bennerimage">
		<img src="image/benner.jpg" width="100%" height="300px">
	</div>
	<div id="bennercolor">찾 아 오 는 길</div>
	<br>
	<h1 style="color: #757575">하 자 센 터</h1>
	<h2 style="color: #757575">청소년직업체험센터</h2>
	<br>
	<div id="address">
		<b>주소</b> : 서울특별시 영등포구 영신로 200
		<br>
		<b>도로명</b> : 영등포동 7가 57번지
		<br>
		<b>우편번호</b> : 07244
		<br>
		<b>대표전화</b> : 02-2677-9200
		<br>
		<b>팩스번호</b> : 02-2679-9300
	</div>
	<div class="text">
		<h2 style="color: #757575">버스 이용시</h2>
		<br>
		<ul class="textlist">
			<li>
				<b>지선버스</b> : 5616, 5714, 6514
			</li>
			<li>
				<b>간선버스</b> : 605, 661, 760
			</li>
			<li>
				<b>좌석버스</b> : 8000, 9030, 700
			</li>
			<li>
				<b>일반버스</b> : 5, 60, 60-3, 70-2, 88
			</li>
		</ul>
	</div>
	<div class="text">
		<h2 style="color: #757575">지하철 이용시</h2>
		<br>
		<ul class="textlist">
			<li>
				<b>5호선</b> : 영등포시장역 1번 출구 도보 7분
			</li>
			<li>
				<b>2호선</b> : 영등포구청역 4번 출구 도보 12분
			</li>
		</ul>
	</div>
	<div class="map_wrap" id="mapbody">
		<div id="map" style="width: 100%; height: 500px; position: relative; overflow: hidden;"></div>
		<div class="custom_typecontrol radius_border">
			<span id="btnRoadmap" class="selected_btn" onclick="setMapType('roadmap')">지도</span> <span id="btnSkyview" class="btn" onclick="setMapType('skyview')">스카이뷰</span>
		</div>
		<div class="custom_zoomcontrol radius_border">
			<span onclick="zoomIn()"> <img src="http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_plus.png" alt="확대">
			</span> <span onclick="zoomOut()"> <img src="http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_minus.png" alt="축소">
			</span>
		</div>
	</div>
	<script type="text/javascript" src="script/menu4.js"></script>
</div>
<jsp:include page="/part/footer.jsp"></jsp:include>