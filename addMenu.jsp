<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="css/input.css" />
</head>

<body>
	<div>
		<center>
			<h2>添加菜单</h2>
		</center>
		<ul>
			<li><input type="button" id="btn"
				value="添&nbsp;&nbsp;加&nbsp;&nbsp;分&nbsp;&nbsp;组" class="button"
				onclick='location.href=("addGro.jsp?uname=<%=request.getParameter("uname")%>")' /></li>
			<li><input type="button" id="btn"
				value="添&nbsp;加&nbsp;联&nbsp;系&nbsp;人" class="button"
				onclick='location.href=("addLinkman.jsp?uname=<%=request.getParameter("uname")%>")' /></li>
			<li><input type="button" id="btn"
				value="返&nbsp;&nbsp;&nbsp;&nbsp;回" class="button"
				onclick='location.href=("menu.jsp?uname=<%=request.getParameter("uname")%>")' /></li>
		</ul>
	</div>
</body>
</html>