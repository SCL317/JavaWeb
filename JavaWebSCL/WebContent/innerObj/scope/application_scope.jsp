<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>application_scope演示</title>
</head>
<body>
	<%
		//设置application属性范围，此属性保存在服务器上
		//设置的属性可以让所以的用户(每一个session)看得见
		application.setAttribute("name", "张三");
		application.setAttribute("birthday", new Date());
	%>
	<%-- 	<jsp:forward page="application_scope2.jsp"/> --%>
	<!-- 通过超链接跳转后，地址栏改变，属于客户端跳转 -->
	<a href="application_scope2.jsp">通过超链接取得属性</a>
	<!-- application设置的属性保存在服务器中所以不管是否打开新的浏览器都可以获取到属性-->

</body>
</html>