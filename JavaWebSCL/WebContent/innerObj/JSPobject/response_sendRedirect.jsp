<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>页面跳转</title>
</head>
<body>
<% System.out.println("----------response 跳转之前----------");%>
<% response.sendRedirect("hello.html"); %>
<% System.out.println("----------response 跳转之后----------");%>
<!--程序运行后在服务器后台上会有----------response 跳转之前----------
                       ----------response 跳转之后----------信息显示  -->
<!-- 从结果上可以看出跳转时跳转前后两条语句都被执行 ，所以 response.sendRedirect()是在整个代码执行完后在进行跳转 -->


<% System.out.println("----------forward 跳转之前----------");%>
<jsp:forward page="hello.html"/>
<% System.out.println("----------forward 跳转之后----------");%>
<!--程序运行后在服务器后台上会有----------response 跳转之前----------信息显示  -->
<%-- 从结果中可以发现，使用<jsp:forward> 是无条件跳转的，只要执行到此语句则后面的代码不会都不会执行 --%>
</body>
</html>