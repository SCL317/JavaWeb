<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>运算符</title>
</head>
<body>
	<h4>关系运算符</h4>
	<b> 
<%-- 4 &gt 3 ${ 4 &gt 3}<br />  &不能写在里面  --%>
	4 > 3为${ 4 > 3}<br /> 
	4 gt 3为${ 4 gt 3}<br />

	4 lt 3为${ 4 lt 3}<br />
	4 < 3为${ 4 < 3}<br />

	4 ge 3为${ 4 ge 3}<br />
	4 >= 3为${ 4 >= 3}<br />

	4 le 3为${ 4 le 3}<br /> 
	4 <= 3为${ 4 <= 3}<br />
	
	4 = 3为${ 4 == 3}<br />
	4 eq 3为${ 4 eq 3}<br />
	
	4 != 3为${ 4 != 3}<br />
	4 ne 3为${ 4 ne 3}<br /> <%--这里eclipse报错了但是实际上却是正确的 --%>
	</b>
    <hr/>
    <h4>算术运算符</h4>
    <b>
    2 + 3= ${2 + 3}<br />
    2 - 3= ${2 - 3}<br />
    2 * 3= ${2 * 3}<br />
    2 / 3= ${2 / 3}<br />
    2 div 3= ${2 div 3}<br />
    8 % 3= ${8 % 3}<br />
    8 mod 3= ${8 mod 3}<br />
    </b>
     <h4>逻辑运算符</h4>
    <b>
    A
    
    </b>
    
</body>
</html>