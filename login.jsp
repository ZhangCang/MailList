<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"  import="java.util.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户登录页面</title>
</head>
<link href="css\logstyle.css" type="text/css" rel="stylesheet" />
<script src="js/time.js"></script>
<script type="text/javascript">
	function validateForm(thisForm) {
		with (thisForm) {
			if (username.value == "") {
				alert("用户账号不可以为空");
				return false;
			}
			if (password.value == "") {
				alert("密码不可以为空");
				return false;
			} else {
				return true;
			}
		}
	}
	
	function change_verify() {
		//获取验证码图片
		var image = document.getElementById("img");
		//更改路径
		image.src = "VerifyServlet?a=" + new Date().getTime();
		console.log(image.src);
	}
</script>

<body onload="dynamicShowTime()">


	<div class="time" id="time"></div>
	 <div class="title"><i>个&nbsp;&nbsp;人&nbsp;&nbsp;通&nbsp;&nbsp;讯&nbsp;&nbsp;录<i></div>
	<div class="login">
		<fieldset>

			<legend>
				<h2>
					<font color="#FFFFFF">用户登录</font>
				</h2>
			</legend>
			<form name="logForm" action="<%=basePath%>LoginServlet2" method="post" onsubmit="return validateForm(this)">
				<center>
					<font color="#FFFFFF">用户账号：</font><input type="text" name="username" id="username"><br> <br> 
					<font color="#FFFFFF">用户密码：</font><input type="password" name="password" id="password"><br><br>
					<div class="verufy">
					<font color="#FFFFFF">验证码：</font><input type="text" name="verify"  size="3">
					<img src="<%=basePath%>VerifyServlet" id="img">&nbsp;&nbsp;<a href="javascript:change_verify()">看不清?换一张</a><br><br>
					</div>
					<input type="submit" id="btn" value="登录">
					<input type="button" value="注册" id="btn" onclick='location.href=("register.jsp")' />
					<input type="reset" id="btn" value="取消">
				</center>
			</form>
		</fieldset>
	</div>
</body>
</html>