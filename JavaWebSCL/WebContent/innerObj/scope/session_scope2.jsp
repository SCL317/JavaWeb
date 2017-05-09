<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
		//session属性范围中取出属性，并执行向下转型操作
		String usename = (String)session.getAttribute("name");
		Date usebirthday = (Date)session.getAttribute("birthday");
	%>
	<h2>姓名:<%=usename%></h2>
	<h2>生日:<%=usebirthday%></h2>
</body>
</html>