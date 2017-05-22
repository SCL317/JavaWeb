<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>RequestListener演示</title>
</head>
<body>
	<h1>RequestListener演示</h1>
	<%
		request.setAttribute("name", "zhangsan");
		request.setAttribute("password", "123456");
		request.setAttribute("name", "lisi");
		request.setAttribute("password", "67890");
		request.removeAttribute("password");
	%>
</body>
</html>