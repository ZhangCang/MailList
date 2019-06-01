<%@page import="com.tjrac.contact.pojo.Linkman,com.tjrac.contact.service.impl.GroServiceImpl,com.tjrac.contact.util.Conversion"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>-显示找到的联系人信息-</title>
<link type="text/css" rel="stylesheet" href="css/common.css">
<link type="text/css" rel="stylesheet" href="css/showLinkman.css">
<script type="text/javascript" src="js/validate.js"></script>
<style type="text/css">

</style>
</head>
<body>
	<h2>查找到联系人信息如下：【<a href="queryshow.jsp?uname=<%=request.getParameter("uname") %>">返回</a>】</h2>

	<hr width="100%" align="left">
	<%
			List<Linkman> linkmanList = (List<Linkman>) request.getAttribute("linkmanList");
			out.println("<table  border='0' cellspacing='0' cellpadding='5'>");
			out.println(
					"<tr><th width='50px'>编号</th><th width='100px'>姓名</th><th width='50px'>性别</th><th width='100px'>移动电话</th><th width='100px'>固定电话</th><th width='150px'>邮箱</th><th width='100px'>QQ</th><th width='180px'>单位</th><th width='180px'>住址</th><th width='100px'>分组名</th></tr>");
			for (int i = 0; i < linkmanList.size(); i++) {
				out.println("<tr><td align='center'>" + linkmanList.get(i).getLid()+ "</td><td align='center'>"
						+ linkmanList.get(i).getLname() + "</td><td align='center'>" + Conversion.change(linkmanList.get(i).getSex()) + "</td><td align='center'>"
						+ linkmanList.get(i).getCell() + "</td><td align='center'>" + linkmanList.get(i).getTel()
						+ "</td><td align='center'><i></i>" + linkmanList.get(i).getEmail()
						+ "</td><td align='center'>" + linkmanList.get(i).getQq()
						+ "</td><td align='center'>" + linkmanList.get(i).getCompany()
						+ "</td><td align='center'>" + linkmanList.get(i).getAddress()
						+ "</td><td align='center'>" + new GroServiceImpl().findGname(linkmanList.get(i).getGid()));
			}
		out.println("</table>");
	%>
</body>
</html>