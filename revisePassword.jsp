<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改密码页面</title>
<script type="text/javascript">
			function form_submit1(thisForm) {
				with(thisForm) {
					if(oldpassword.value == "") {
						alert("旧密码不可以为空!");
						return false;
					}
						if(password.value == "") {
							alert("密码不可以为空!");
							return false;
						} else if(repassword.value != password.value) {
							alert("两次密码不一致!");
							return false;
						} else {
							return true;
						}
					}

				}
			
		</script>
<style type="text/css">
body {
	font-size: 14px;
}
</style>
</head>
<link href="css\regstyle.css" type="text/css" rel="stylesheet" />
<link href="css\common.css" type="text/css" rel="stylesheet" />
<body>
	<div align="center">
		<!-- 注册表单 -->
		<form name="regForm" method="post" action="RevisePasswordServlet"
			onsubmit="return form_submit1(this)">
			<table border="1" width="700px">
				<tr align="center">
					<td colspan="2"><h2>修改密码</h2></td>
				</tr>
				<tr>
					<td width="100px" align="center">用户名：</td>
					<td width="600px"><input type="text" name="username"
						id="username" onblur="usernameCheck()" readonly="readonly"
						value="<%=request.getParameter("uname")%>"><span
						id="check_username" style="color: red; padding-left: 5px;"></span></td>
				</tr>
				<tr>
					<td width="100px" align="center">旧密码：</td>
					<td width="600px"><input type="password" name="oldpassword"
						id="oldpassword"></td>
				</tr>
				<tr>
					<td width="100px" align="center">密码：</td>
					<td width="600px"><input type="password" name="password"
						id="password"></td>
				</tr>
				<tr>
					<td width="100px" align="center">确认密码：</td>
					<td width="600px"><input type="password" name="repassword"
						id="repassword"></td>
				</tr>
				<tr align="center">
					<td colspan="2"><input type="submit" id="btn" value="修改密码">&nbsp;&nbsp;&nbsp;&nbsp;<input
						type="button" id="btn" value="返回"
						onclick='location.href=("reviseMenu.jsp?uname=<%=request.getParameter("uname")%>")'></td>

				</tr>
			</table>
		</form>
	</div>
</body>

</html>