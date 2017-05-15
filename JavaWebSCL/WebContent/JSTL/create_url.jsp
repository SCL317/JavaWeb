<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>产生URL地址</title>
</head>
<body>
	<c:url var="urlinfo" value="http://www.baidu.com">
	<c:param name="author" value="aaaaa"/>
	<c:param name="logo" value="bbbbb"/>
	</c:url>
	<a href="${urlinfo}">新的地址</a>
</body>
</html>