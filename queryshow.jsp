<%@page import="java.util.List"%>
<%@page import="com.tjrac.contact.pojo.Linkman,com.tjrac.contact.service.impl.GroServiceImpl,com.tjrac.contact.util.Conversion"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>-显示所有联系人信息-</title>
<link type="text/css" rel="stylesheet" href="css/common.css">
<link type="text/css" rel="stylesheet" href="css/queryshow.css">
<script type="text/javascript" src="js/validate.js"></script>

</head>
<body><div>
<center>
	<h2>联系人信息如下：</h2>
	</center>
	<center>【<a href="nameQuery.jsp?uname=<%=request.getParameter("uname") %>">姓名查询</a>】&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;【<a href="sexQuery.jsp?uname=<%=request.getParameter("uname") %>">性别查询</a>】&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;【<a href="groQuery.jsp?uname=<%=request.getParameter("uname") %>">分组查询</a>】&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;【<a href="menu.jsp?uname=<%=request.getParameter("uname") %>">返回</a>】</center>
	
	<hr width="100%" align="left">
	<%
		if (request.getAttribute("linkmanList") == null) {
			response.sendRedirect("SelectAllLinkmansServlet?uname="+request.getParameter("uname") );
		} else {
			List<Linkman> linkmanList = (List<Linkman>) request.getAttribute("linkmanList");
			out.println("<table  border='0' cellspacing='0' cellpadding='5'>");
			out.println(
					"<tr><th width='50px'>编号</th><th width='100px'>姓名</th><th width='50px'>性别</th><th width='100px'>移动电话</th><th width='100px'>固定电话</th><th width='150px'>邮箱</th><th width='100px'>QQ</th><th width='180px'>单位</th><th width='180px'>住址</th><th width='100px'>分组名</th><th width='110px'>操作</th></tr>");
			for (int i = 0; i < linkmanList.size(); i++) {
				out.println("<tr><td align='center'>" + linkmanList.get(i).getLid()+ "</td><td align='center'>"
						+ linkmanList.get(i).getLname() + "</td><td align='center'>" + Conversion.change(linkmanList.get(i).getSex()) + "</td><td align='center'>"
						+ linkmanList.get(i).getCell() + "</td><td align='center'>" + linkmanList.get(i).getTel()
						+ "</td><td align='center'><i></i>" + linkmanList.get(i).getEmail()
						+ "</td><td align='center'>" + linkmanList.get(i).getQq()
						+ "</td><td align='center'>" + linkmanList.get(i).getCompany()
						+ "</td><td align='center'>" + linkmanList.get(i).getAddress()
						+ "</td><td align='center'>" + new GroServiceImpl().findGname(linkmanList.get(i).getGid())
						+"</td><td align='center'><a href='PreUpdateLinkmanServlet?lid=" + linkmanList.get(i).getLid()+"&uname="+request.getParameter("uname") 
						+ "'>修改</a>&nbsp;&nbsp;" + "<a href='DeleteLinkmanServlet?lid=" + linkmanList.get(i).getLid()+"&uname="+request.getParameter("uname") 
						+ "' onclick='return deleteRecord()'>删除</a></td></tr>");
			}
		}
		out.println("</table>");
	%>
	</div>
</body>
</html>