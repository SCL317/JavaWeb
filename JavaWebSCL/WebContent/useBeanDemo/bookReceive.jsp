<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="useBeanDemo.*"%>
<jsp:useBean id="book" class="useBeanDemo.bookBean" scope="page" >
<%-- <jsp:setProperty property="*" name="book"/> --%>

<jsp:setProperty property="bookName" name="book"/>
<jsp:setProperty property="bookNum" name="book"/>

<%-- <jsp:setProperty property="bookName" name="book" value="aaaaa"/> --%>
<%-- <jsp:setProperty property="bookNum" name="book" value="1111"/> --%>

<%-- <jsp:setProperty property="bookName" name="book" param="bookName"/> --%>
<%-- <jsp:setProperty property="bookNum" name="book" param="bookNum"/> --%>
</jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>bean相关测试</title>
</head>
<body>
	<p>图书清单表</p>
	<hr/>
	<span>书名：</span><jsp:getProperty property="bookName" name="book"/>
	<br/>
	<span>数量：</span><jsp:getProperty property="bookNum" name="book"/>

</body>
