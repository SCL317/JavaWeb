<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户登录界面</title>
</head>
<body>
	<form action="login.jsp" method="post">
		<span>姓名：</span><input type="text" name="uname" /><br /> 
		<span>密码：</span><input type="password" name="password" /><br />
        <input type="submit" value="确认" /> <input type="reset" value="取消">
	</form>
	<%
		String name = request.getParameter("uname");
		String password = request.getParameter("password");
		if(!(name==null||"".equals(name)||password==null||"".equals(password))){
			if("zhangsan".equals(name)&&"123456".equals(password)){
				response.setHeader("refresh", "2;URL=welcome.jsp");
				session.setAttribute("user", name);
			
	%>
	<h3>用户登录成功，两秒后跳转至欢迎界面</h3>
	<h3>如果没有跳转请点击<a href="welcome.jsp">点击跳转</a></h3>
	<%
		}else{
	%>
	<h3>用户名或密码错误请重新输入</h3>
	<%
	  }
	}	
	%>
</body>
</html>