<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改菜单页面</title>
<link type="text/css" rel="stylesheet" href="css/input.css" />
</head>

<body>
	<div>
		<center>
			<h2>修改菜单</h2>
		</center>
		<ul>
			<li><input type="button" id="btn" value="修&nbsp;改&nbsp;组&nbsp;名"
				class="button"
				onclick='location.href=("reviseGro.jsp?uname=<%=request.getParameter("uname")%>")' /></li>
			<li><input type="button" id="btn" value="修&nbsp;改&nbsp;密&nbsp;码"
				class="button"
				onclick='location.href=("revisePassword.jsp?uname=<%=request.getParameter("uname")%>")' /></li>
			<li><input type="button" id="btn"
				value="返&nbsp;&nbsp;&nbsp;&nbsp;回" class="button"
				onclick='location.href=("menu.jsp?uname=<%=request.getParameter("uname")%>")' /></li>
		</ul>
	</div>
</body>
</html>