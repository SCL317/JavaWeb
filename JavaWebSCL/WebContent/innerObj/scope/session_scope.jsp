<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>session_scopt演示</title>
</head>
<body>
<%
		//设置session属性范围，此属性在一个浏览器中始终有效
		//不管是客户端跳转还是服务器跳转，只要属性设置了就能够取得
		session.setAttribute("name", "张三");
        session.setAttribute("birthday", new Date());
	%>
<%-- 	<jsp:forward page="session_scope2.jsp"/> --%>
	<!-- 通过超链接跳转后，地址栏改变，属于客户端跳转 -->
	<a href="session_scope2.jsp">通过超链接取得属性</a>
	<!-- session只在一个浏览器中有效 如果重新打开一个新的浏览器直接访问这无法获取session属性 -->

</body>
</html>