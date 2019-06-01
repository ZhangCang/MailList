<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>分组查询页面</title>
</head>
<link href="css\Query.css" type="text/css" rel="stylesheet" />
<body>
	<div>
		<c:if test="${empty requestScope.groList }">
			<%
				request.getRequestDispatcher("SelectAllGrosServlet?uname=" + request.getParameter("uname"))
							.forward(request, response);
			%>
		</c:if>
		<form
			action="FindLinkmanByGidServlet?uname=<%=request.getParameter("uname")%>"
			method="post">
			<center>
				请选择你的分组:<select name="gname">
					<c:forEach items="${requestScope.groList}" var="gro">
						<option value="${gro.gname }">${gro.gname }</option>
					</c:forEach>
				</select>
				<br>
				<center>
				<br>
					<input type="submit" id="btn" value="提交" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
						type="button" id="btn" value="返回"
						onclick='location.href=("queryshow.jsp?uname=<%=request.getParameter("uname")%>")' />
				</center>
		</form>
	</div>
</body>
</html>