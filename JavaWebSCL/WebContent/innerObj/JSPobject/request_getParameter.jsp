<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>接收请求到的参数演示02</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");         //设置统一编码
	    String id=request.getParameter("id");        //接收隐藏域提交的参数
	    String name=request.getParameter("uname");   //接收文本框提交的参数
	    String inst[]=request.getParameterValues("inst");  //接收复选框提交的参数
	%>
	<h3>编号：<%=id %></h3>
	<h3>姓名：<%=name %></h3>
	<%
	if(inst!=null){
	%>
	<h3>兴趣：
	<%
	for(int x=0;x<inst.length;x++){
	%>
	<%=inst[x] %>
	<% }%>
	</h3>
	<% } %>
</body>
</html>