<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>性别查询页面</title>
</head>
<link href="css\Query.css" type="text/css" rel="stylesheet" />
<body>
	<div>
		<form
			action="FindLinkmanBySexServlet?uname=<%=request.getParameter("uname")%>"
			method="post">
			<center>
				请选择联系人性别:<input type="radio" name="sex" value="0" />男&nbsp;&nbsp;&nbsp;&nbsp;<input
					type="radio" name="sex" value="1" />女
			</center>
			<br>
			<center>
				<input type="submit" id="btn" value="提交" />&nbsp;&nbsp;&nbsp;&nbsp;<input
					type="button" id="btn" value="返回"
					onclick='location.href=("queryshow.jsp?uname=<%=request.getParameter("uname")%>")' />
			</center>
		</form>
	</div>
</body>
</html>