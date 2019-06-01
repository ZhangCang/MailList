<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link href="css\Gro.css" type="text/css" rel="stylesheet" />
<body>
	<div>
		<form action="AddGroServlet?uname=<%=request.getParameter("uname")%>"
			method="post">
			<center>
				分组名:<input type="text" class="addGro" name="gname" />
			</center>
			
			<center>
			<br>
				<input type="submit" id="btn" value="添加" />&nbsp;&nbsp;&nbsp;&nbsp;<input
					type="button" id="btn" value="返回"
					onclick='location.href=("addMenu.jsp?uname=<%=request.getParameter("uname")%>")' />
			</center>
		</form>
	</div>
</body>
</html>