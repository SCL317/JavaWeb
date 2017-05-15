<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSTL遍历list</title>
</head>
<body>
	<%
		List all = new ArrayList();
		all.add("这就是");
		all.add("遍历list");
		all.add("后的样子");
		pageContext.setAttribute("listinfo", all);
	%>
<h3>输出全部：
<c:forEach var="mam" items="${listinfo}">
      ${mam}---
</c:forEach>
</h3>
</body>
</html>