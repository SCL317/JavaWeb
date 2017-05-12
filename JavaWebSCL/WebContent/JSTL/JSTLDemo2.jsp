<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSTL测试二</title>
</head>
<body>
	<form method="post">
		请输入百分制成绩：<input type="text" name="score" /> 
		<input type="submit" value="提交" />&nbsp;&nbsp; 
		<input type="reset" value="重置" />
	</form>
	<c:set var="color" value="red" />
	<c:set var="n" value="${(param.score)/10}" />  
	<c:if test="${n>=6}">
    <c:set var="color" value="blue" />
            您的成绩为：<c:out value="${param.score}"/> <br/>
	</c:if>
	<font color="${color}" size="6"> <c:choose>
	        <c:when test="${n>=10 || n<0}">
                                             您输入的成绩有误！
			</c:when>
			<c:when test="${n>=9 && n<=10}">
                                             您的成绩优秀！
			</c:when>
			<c:when test="${n>=8 && n<=9}">
			          您的成绩良好！
			</c:when>
			<c:when test="${n>=7 && n<=8}">
			          您的成绩中等！
			</c:when>
			<c:when test="${n>=6 && n<=7}">
			          您的成绩良好！
			</c:when>
			<c:otherwise>
			          您的成绩不及格！
			</c:otherwise>
		</c:choose>
	</font>
</body>
</html>