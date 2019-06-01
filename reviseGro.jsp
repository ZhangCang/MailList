<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改组名页面</title>
</head>
<link href="css\Gro.css" type="text/css" rel="stylesheet" />
<body>
	<div>
		<c:if test="${empty requestScope.groList }">
			<%
				request.getRequestDispatcher("SelectAllGrosServlet4?uname=" + request.getParameter("uname"))
							.forward(request, response);
			%>
		</c:if>
		<form
			action="ReviseGroServlet?uname=<%=request.getParameter("uname")%>"
			method="post">
			<center>
				请选择你的分组:<select name="gid">
					<c:forEach items="${requestScope.groList}" var="gro">
						<option value="${gro.gid }">${gro.gname }</option>
					</c:forEach>
				</select>
				
				<center>
				<br>
					修改后的分组名:<input type="text" name="gname" />
				</center>
				<br>
				<center>
					<input type="submit" id="btn"value="提交" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button"
						id="btn"value="返回"
						onclick='location.href=("reviseMenu.jsp?uname=<%=request.getParameter("uname")%>")' />
				</center>
		</form>
	</div>
</body>
</html>