<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jsp:include演示</title>
</head>
<body>
	<p>jsp:include演示</p>
	<!-- 结束的/不能省 -->
	<jsp:include page="../FZDemo/newText1.html" flush="true" />
	<jsp:include page="../FZDemo/newText2.html" flush="true" />
	<jsp:include page="../FZDemo/newText3.html" flush="true" />
	<jsp:include page="../FZDemo/newText4.html" flush="true" />
	<jsp:include page="newText5.jsp" flush="true">
		<%-- 一定写真确不能用<!--这个 --%>
		<jsp:param value="张三zhangsan" name="name" />
		<jsp:param value="20" name="age" />
	</jsp:include>
	<!-- 	注意这个包裹的关系 -->
</body>
</html>