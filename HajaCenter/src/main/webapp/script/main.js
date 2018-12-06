var cnt = 0;
$(function() {
	var cnt = 0;
	var list = $("#imgUl");
	// 이전 버튼 클릭시 이전사진
	$("#prev").click(function() {
		if (cnt == 0) {
			cnt = 8;
			list.css("margin-left", "-100%");
		}
		cnt--;
		var marginLeft = cnt * 100
		list.animate({
			"margin-left" : -marginLeft + "%"
		});
	});

	// 다음 버튼 클릭시 다음사진
	$("#next").click(function() {
		cnt++;
		if (cnt == 8) {
			list.css("margin-left", "0");
			cnt = 0;
		}
		var marginLeft = cnt * 100
		list.animate({
			"margin-left" : -marginLeft + "%"
		});
	});

	// hover시 Interval을 실행과 중시 시킴
	var imginter = setInterval("$move()", 3000);
	$("#imgs>*").hover(function() {
		clearInterval(imginter);
	}, function() {
		imginter = setInterval("$move()", 3000);
	});

	$("#imgs>a").hover(function() {
		$(this).css("background-color", "rgba(255, 255, 255, 0.1)");
	}, function() {
		$(this).css("background-color", "rgba(255, 255, 255, 0)");
	});

});

// 다음 버튼과 같은 로직을 가진 interval을 위한 함수
var $move = function() {
	var list = $("#imgUl");
	cnt++;

	if (cnt == 8) {
		list.css("margin-left", "0");
		cnt = 0;
	}

	var marginLeft = cnt * 100
	list.animate({
		"margin-left" : -marginLeft + "%"
	});
};
