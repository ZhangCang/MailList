<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>姓名查询页面</title>
</head>
<link href="css\Query.css" type="text/css" rel="stylesheet" />
<body>
	<div>
		<form
			action="FindLinkmanByLnameServlet?uname=<%=request.getParameter("uname")%>"
			method="post">
			<center>
				请输入联系人姓名:<input type="text" name="lname" />
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