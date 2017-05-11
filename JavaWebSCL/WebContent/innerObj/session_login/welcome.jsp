<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎~</title>
</head>
<body>
	<%
		if (session.getAttribute("user") != null) { //这里是先判断这个用户是否登录
	%>
	<h3>
		欢迎<%=session.getAttribute("user")%>访问本网站 <a href="logout.jsp">注销</a>
	</h3>
	<%
		} else {   //非法用户并没有登录
	%>
	<h3>请先登录用户<a href="login.jsp">登录</a></h3>
	<%
		}
	%>
</body>
</html>