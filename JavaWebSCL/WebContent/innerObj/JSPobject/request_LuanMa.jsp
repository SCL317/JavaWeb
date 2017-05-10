<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>乱码解决测试2</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8"); //设置统一的编码
		//通过这里统一编码形式从而避免乱码
		String content = request.getParameter("info"); //接受表单提交的参数
	%>
	<h2><%=content%></h2>
</body>
</html>