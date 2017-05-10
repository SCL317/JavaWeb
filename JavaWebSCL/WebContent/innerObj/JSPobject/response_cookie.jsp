<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>向客户端增加Cookie</title>
</head>
<body>
	<%
// 		Cookie c1 = new Cookie("name", "张三");  //注意这里面定义的对象张三系统会认为参数错误 
	    Cookie c1 = new Cookie("name", "zhangsan");//定义新的Cookie对象
		Cookie c2 = new Cookie("age", "20");    //定义新的Cookie对象
// 		c1.setMaxAge(60);  // Cookie 保存60 秒 设置的时间后即使浏览器重启在这个时间里设定的Cookie依然存在
// 		c2.setMaxAge(60);  // Cookie 保存60 秒 不设定时间话浏览器重启设定的Cookie就不在了
		response.addCookie(c1); //向客户端增加Cookie
		response.addCookie(c2); //向客户端增加Cookie
	%>

</body>
</html>