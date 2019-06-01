function dynamicShowTime() {
	var now = new Date();
	var year = now.getFullYear();
	var month = now.getMonth() + 1;
	var date = now.getDate();
	var hour = now.getHours();
	var minute = now.getMinutes();
	var second = now.getSeconds();
	var week;
	if (now.getDay() == 0) week = "星期日";
	if (now.getDay() == 1) week = "星期一";
	if (now.getDay() == 2) week = "星期二";
	if (now.getDay() == 3) week = "星期三";
	if (now.getDay() == 4) week = "星期四";
	if (now.getDay() == 5) week = "星期五";
	if (now.getDay() == 6) week = "星期六";
	if (hour < 10) {
		hour = "0" + hour;
	}
	if (minute < 10) {
		minute = "0" + minute;
	}
	if (second < 10) {
		second = "0" + second;
	}

	var msg = "时间：" + year + "年" + month + "月" + date + "日&nbsp;" + hour + "：" + minute + "：" + second + "&nbsp;" + week;
	document.getElementById('time').innerHTML = msg;
	setTimeout("dynamicShowTime()", 1000);
}