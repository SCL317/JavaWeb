<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>map的用法</title>
</head>
<body>
	<%
		Map map = new HashMap();
		map.put("姓名", "张三");
		map.put("Age", "20");
		map.put("性别", "男");
		pageContext.setAttribute("mapinfo", map);
	%>
<c:forEach items="${mapinfo}" var="maps">
  <h3>${maps.key}---${maps.value}:</h3>
</c:forEach>
</body>
</html>