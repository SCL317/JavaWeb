<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>request_scope1</title>
</head>
<body>
	<%
		//设置request属性范围，此属性只在服务器跳转中起作用 
		request.setAttribute("name", "张三");
		request.setAttribute("birthday", new Date());
	%>
	<jsp:forward page="request_scope2.jsp"/>
	<!-- 通过超链接跳转后，地址栏改变，属于客户端跳转 -->
<!-- 	<a href="request_scope2.jsp">通过超链接取得属性</a> -->
	<!-- request只在服务器跳转中起作用所以通过超链接跳转无法获取属性 -->
</body>
</html>