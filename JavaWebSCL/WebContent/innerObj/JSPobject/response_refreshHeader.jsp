<%@page import="java.net.URL"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>response功能演示——定时刷新</title>
</head>
<body>
	<h3>
		2秒后跳转至 baidu 界面，如果没有跳转请点击此<a href="http://www.baidu.com">点击跳转</a>
	</h3>
	<%
		response.setHeader("refresh", "2;URL=http://www.baidu.com"); //3秒后跳转至百度界面
	%>

</body>
</html>