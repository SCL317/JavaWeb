<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用EL表达式获取List集合</title>
</head>
<body>
	<%
		List all = new ArrayList();
		all.add("张三");
		all.add("20");
		all.add("男");
		all.add("未婚");
		request.setAttribute("allinfo", all);
	%>
	<p>list第一个元素：${allinfo[0]}</p>
	<p>通过get(index)获取第一个元素：${allinfo.get(0)}</p>
	<p>list第二个元素：${allinfo[1]}</p>
	<p>list第三个元素：${allinfo[2]}</p>
	<p>
		list第四个元素：${allinfo[3]}
		</hp>
		<%-- 	<h3>第四个元素：${allinfo["张三"]}</h3> --%>
		<!--     EL获取list集合中的元素只能通过索引获取 -->

		<%
			Map<String, String> map = new HashMap<String, String>();
			map.put("1", "aaa");
			map.put("2", "bbb");
			map.put("3", "ccc");
			map.put("4", "ddd");
			request.setAttribute("mapinfo", map);
		%>
		<%-- 		<p>map第一个元素：${mapinfo[1]}</p>  这里的key值需要加引号不然系统获取不了 --%>
	<p>map第一个元素：${mapinfo["1"]}</p>
	<%-- 		<p>map第二个元素：${mapinfo.get(2)}</p>  这里的key值需要加引号不然系统获取不了 --%>
	<p>map第二个元素：${mapinfo.get("2")}</p>

	<%
		String[] strings = { "AAA", "BBB", "CCC", "DDD" };
		request.setAttribute("stringsinfo", strings);
	%>
	<p>数组元素：${stringsinfo}</p>
	<p>数组第二个元素：${stringsinfo["1"]}</p>

	<%
		Set<String> set = new HashSet<String>();
		set.add("123");
		set.add("456");
		set.add("789");
		request.setAttribute("setinfo", set);
	%>
	<p>set的元素：${setinfo}</p>

</body>
</html>