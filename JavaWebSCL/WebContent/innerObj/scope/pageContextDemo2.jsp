<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>pageContext演示</title>
</head>
<body>
	<%
		//设置page属性范围，此属性只在当前的JSP页面中起作用
		pageContext.setAttribute("name", "张三");
		pageContext.setAttribute("birthday", new Date());
	%>
	<%
		//page属性范围中取出属性，并执行向下转型操作
		String usename = (String) pageContext.getAttribute("name");
		Date usebirthday = (Date) pageContext.getAttribute("birthday");
	%>
<h2>姓名:<%=usename %></h2>
<h2>生日:<%=usebirthday %></h2>
</body>
</html>