<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注销用户</title>
</head>
<body>
	<%
		response.setHeader("refresh", "2;URL=login.jsp"); //设置注销后的跳转页面
	    session.invalidate();  //注销，让session失效
	%>
	<h3>你已成功退出，2秒后返回登录界面</h3>
	<h3>如果没有跳转，点击这里手动跳转<a href="login.jsp">点击条状</a></h3>

</body>
</html>