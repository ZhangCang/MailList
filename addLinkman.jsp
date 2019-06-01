<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>--添加联系人--</title>
</head>
<link href="css\addLinkman.css" type="text/css" rel="stylesheet" />

<body>
	<c:if test="${empty requestScope.groList }">
		<%
			request.getRequestDispatcher("SelectAllGrosServlet2?uname=" + request.getParameter("uname"))
						.forward(request, response);
		%>
	</c:if>
	<fieldset>
		<legend>
			<center>
				<h3>添加联系人</h3>
			</center>
		</legend>
		<form
			action="AddLinkmanServlet?uname=<%=request.getParameter("uname")%>"
			method="post">
			<table border="0" cellspacing="0" cellpadding="5">

				<td align="center">姓&nbsp;&nbsp;&nbsp;名：</td>
				<td><input type="text" name="lname" size="35px"></td>
				</tr>
				<tr>
					<td align="center">性&nbsp;&nbsp;&nbsp;别：</td>
					<td><input type="radio" name="sex" value="0" checked="checked" />男&nbsp;&nbsp;&nbsp;&nbsp;<input
						type="radio" name="sex" value="1" />女
				</tr>
				<tr>
					<td align="center">移动电话：</td>
					<td><input type="text" name="cell" size="35px"></td>
				</tr>
				<td align="center">固定电话：</td>
				<td><input type="text" name="tel" size="35px"></td>
				</tr>
				<tr>
					<td align="center">邮&nbsp;&nbsp;&nbsp;箱：</td>
					<td><input type="text" name="email" size="35px"></td>
				</tr>
				<tr>
					<td align="center">QQ：</td>
					<td><input type="text" name="qq" size="35px"></td>
				</tr>
				<td align="center">单位：</td>
				<td><input type="text" name="company" size="35px"></td>
				</tr>
				<tr>
				<tr>
					<td align="center">住址：</td>
					<td><input type="text" name="address" size="35px"></td>
				</tr>
				<tr>
					<td align="center">请选择你的分组:</td>
					<td><select name="gid">
							<c:forEach items="${requestScope.groList}" var="gro">
								<option width="60%" value="${gro.gid }">${gro.gname }</option>
							</c:forEach>
					</select></td>
				</tr>
			</table>
			<input type="submit" id="btn" value="添&nbsp;加" class="button">
			<input type="button" id="btn" value="返回" class="button"
				onclick='location.href=("menu.jsp?uname=<%=request.getParameter("uname")%>")' />
		</form>
	</fieldset>
</body>

</html>