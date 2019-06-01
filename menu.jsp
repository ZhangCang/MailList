<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>功能模块页面</title>
<link type="text/css" rel="stylesheet" href="css/input.css" />
</head>

<body >
	<div>
		<center>
			<h2>
				欢迎来到<%=request.getParameter("uname")%>的通讯录
			</h2>
		</center>
		<ul>
			<li><input type="button" id="btn"
				value="查&nbsp;&nbsp;&nbsp;&nbsp;询" class="button"
				onclick='location.href=("queryshow.jsp?uname=<%=request.getParameter("uname")%>")' /></li>
			<li><input type="button" id="btn"
				value="添&nbsp;&nbsp;&nbsp;&nbsp;加" class="button"
				onclick='location.href=("addMenu.jsp?uname=<%=request.getParameter("uname")%>")' /></li>
			<li><input type="button" id="btn"
				value="修&nbsp;&nbsp;&nbsp;&nbsp;改" class="button"
				onclick='location.href=("reviseMenu.jsp?uname=<%=request.getParameter("uname")%>")' /></li>
			<li><input type="button" id="btn"
				value="注&nbsp;&nbsp;&nbsp;&nbsp;销" class="button"
				onclick='location.href=("login.jsp")' /></li>
		</ul>
	</div>
</body>
</html>