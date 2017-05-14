<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>forTokens</title>
</head>
<body>
	<%
		String info = "www.baidu.com";
		pageContext.setAttribute("infos", info);
	%>
	<h3>
		拆分的结果是：<br />
		<c:forTokens items="${infos}" delims="." var="con">
        ${con}<br />
		</c:forTokens>
	</h3>
	<h3>
		拆分的结果是：<br />
		<c:forTokens items="多种,的符号:也是可以的.是吧!" delims=",:.!" var="con">
		${con}<br />
		</c:forTokens>
	</h3>


</body>
</html>