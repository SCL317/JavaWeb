<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP基础学习</title>
</head>
<body>
	<!-- 这是HTML里的注释 -->
	<%-- 这是JSP里的注释 --%>
	<%
		out.println("hello world");
	%>
	<br />
	<%-- 换行可以在这里写<br/>也可以在语句内写 --%>
	
	<%@ include file="DateTest.html"%>
	<%--这里注意我们导入的DateTest.html中的DATE类需要导包 --%>
	
	<%-- 声明变量 --%>
</body>
</html>