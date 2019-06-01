<%@page import="com.tjrac.contact.pojo.Linkman"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>--修改学生信息--</title>
</head>
<link href="css\reviseLinkman.css" type="text/css" rel="stylesheet" />
<body>
	<c:if test="${empty requestScope.groList }">
		<%request.getRequestDispatcher("SelectAllGrosServlet3?uname="+request.getParameter("uname")).forward(request, response);%>
	</c:if>
	<%
		Linkman linkman = (Linkman)request.getAttribute("linkman");
		if (linkman != null) {
	%>
<fieldset>
			<legend>
				<center><h3>学生信息修改页面</h3></center>
			</legend>
			<form action="ReviseLinkmanServlet?lid=<%=linkman.getLid() %>&uname=<%=request.getParameter("uname")%>" method="post">
				<table border="0" cellspacing="0" cellpadding="5">
					<tr>
						<td align="center" width="100px">姓&nbsp;&nbsp;&nbsp;名：</td>
						<td><input type="text"  name="lname" size="35px" value="<%=linkman.getLname() %>"></td>
					</tr>
					<tr>
						<td align="center">性&nbsp;&nbsp;&nbsp;别：</td>
						<td><input type="radio" name="sex"  value="0" checked="checked"/>男&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="sex"  value="1"/>女</td>
					</tr>
					<tr>
						<td align="center">移动电话：</td>
						<td><input type="text" name="cell" size="35px" value="<%=linkman.getCell() %>"></td>
					</tr>
					<tr>
						<td align="center">固定电话：</td>
						<td><input type="text" name="tel" size="35px" value="<%=linkman.getTel() %>"></td>
					</tr>
					<tr>
						<td align="center">邮箱：</td>
						<td><input type="text" name="email" size="35px" value="<%=linkman.getEmail() %>"></td>
					</tr><tr>
						<td align="center">QQ：</td>
						<td><input type="text" name="qq" size="35px" value="<%=linkman.getQq() %>"></td>
					</tr>
					<tr>
						<td align="center">单位：</td>
						<td><input type="text" name="company" size="35px" value="<%=linkman.getCompany() %>"></td>
					</tr>
					<tr>
						<td align="center">家庭住址：</td>
						<td><input type="text" name="address" size="35px" value="<%=linkman.getAddress() %>"></td>
					</tr>
					<tr>
						<td align="center">选择你的分组:</td>
						<td >
						<select name="gid" >
							<c:forEach items="${requestScope.groList}" var="gro">
							<option  width="60%"   value="${gro.gid }">${gro.gname }</option>
							</c:forEach>
					</select>
					</td>
					</tr>
				</table>
				<input type="submit" id="btn"value="修&nbsp;改&nbsp;学&nbsp;生&nbsp;信&nbsp;息" class="button">
				<input type="button" id="btn"value="返&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;回"  class="button" onclick='location.href=("queryshow.jsp?uname=<%= request.getParameter("uname")%>")'/>
			</form>
</fieldset>
	<%
		}
	%>
</body>
</html>