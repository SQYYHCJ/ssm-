<%--
  Created by IntelliJ IDEA.
  User: HCJ
  Date: 2021/7/7
  Time: 22:43
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
	<base href="<%=basePath%>">
	<title>Title</title>
</head>
<body>
	<center><h3>reslt.jsp结果页面，注册结果：${tips}</h3></center>
</body>
</html>