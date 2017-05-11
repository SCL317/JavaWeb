<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cookie演示</title>
<%
	Cookie c = new Cookie("country","USA");
	c.setMaxAge(120);
	response.addCookie(c);
%>
</head>
<body>
	<hr />                                                                                                                                     
	<p>
    ${cookie.country.name}<br />
	${cookie.country.value}<br />
	${cookie[country].name}<br />  
<!-- 	[]中的内容需要带上引号 -->
	${cookie['country'].name}<br />
<%-- 	${cookie["country"].name}<br />  --%>
	${cookie['country'].value}<br />
	</p>
</body>
</html>