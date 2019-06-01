<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新用户注册页面</title>
<script type="text/javascript">
	var req;
	var flag;

	function usernameCheck() {
		var username = document.getElementById('username').value;
		var url = "PreServlet?username=" + escape(username); //指定请求发送的url地址和参数

		if (window.XMLHttpRequest) {
			req = new XMLHttpRequest(); //创建XMLHttpRequest对象
		} else if (window.ActiveXObject) {
			req = new ActiveXObject("Microsoft.XMLHTTP");
		}

		if (req) {
			req.open("GET", url, true);
			req.onreadystatechange = callback;
			req.send(null);
		}
	}
	//回调函数
	function callback() {
		if (req.readyState == 4) //判断接收到的响应状态，如果是4表示加载完毕
		{
			if (req.status == 200) {
				parseMessage(); //收到服务器数据后进行解析
			} else {
				alert("not able to retrieve description" + req.statusText);
			}
		} else {
			//响应未加载成功时，页面中的代码
			document.getElementById('check_username').innerHTML = "正在验证用户名......";
		}
	}

	function parseMessage() {
		var xmlDoc = req.responseXML.documentElement; //xml用来存放接收到的xml数据
		var node1 = xmlDoc.getElementsByTagName('info'); //获取xml中的节点
		var node2 = xmlDoc.getElementsByTagName('flag');
		document.getElementById('check_username').innerHTML = node1[0].firstChild.nodeValue; //设置<span>标记中的HTML代码
		flag = node2[0].firstChild.nodeValue;
	}

	function form_submit(thisForm) {
		with (thisForm) {
			if (flag == "required" || flag == "exsites") {
				alert("验证没通过，表单不可以提交，请再次检查确认！");
				return false;
			} else {
				if (password.value == "") {
					alert("密码不可以为空!");
					return false;
				} else if (repassword.value != password.value) {
					alert("两次密码不一致!");
					return false;
				} else {
					return true;
				}
			}

		}
	}
</script>

</head>
<link href="css\regstyle.css" type="text/css" rel="stylesheet" />
<link href="css\common.css" type="text/css" rel="stylesheet" />

<body >
	<div align="center">
		<!-- 注册表单 -->
		<form name="regForm" method="post" action="RegisterServlet"
			onsubmit="return form_submit(this)">
			<table border="1" width="700px">
				<tr align="center">
					<td colspan="2"><h2>新用户注册页面</h2></td>
				</tr>
				<tr>
					<td width="100px" align="center">用户账号：</td>
					<td width="600px"><input type="text" name="username"
						id="username" onblur="usernameCheck()"><span
						id="check_username" style="color: red; padding-left: 5px;"></span></td>
				</tr>
				<tr>
					<td width="100px" align="center">用户密码：</td>
					<td width="600px"><input type="password" name="password"
						id="password"></td>
				</tr>
				<tr>
					<td width="100px" align="center">确认密码：</td>
					<td width="600px"><input type="password" name="repassword"
						id="repassword"></td>
				</tr>
				<tr align="center">
					<td colspan="2"><input type="submit" id="btn" value="注册">&nbsp;&nbsp;&nbsp;&nbsp;<input
						type="button" id="btn" value="返回"
						onclick='location.href=("login.jsp")'></td>

				</tr>
			</table>
		</form>
	</div>
</body>

</html>