<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>pageContext演示2</title>
</head>
<body>
	<%
		//设置page属性范围，此属性只在当前的JSP页面中起作用
		pageContext.setAttribute("name", "张三");
// 		pageContext.setAttribute("birthday", new Date());
		pageContext.setAttribute("birthday", new Date(),pageContext.APPLICATION_SCOPE);
	%>
<%-- 	<jsp:forward page="page_scope.jsp" /> --%>
	<jsp:forward page="application_scope2.jsp" />
	<%--page在跳转后无效所以程序在执行跳转操作后无法取得属性内容将为null --%>
</body>
</html>