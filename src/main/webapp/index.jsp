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
	<title>功能入口</title>
</head>
<body>
	<div align="center">
		<p>ssm整合例子</p>
		<table>
			<tr>
				<td><a href="addStudent.jsp">注册学生</a></td>
			</tr>
			<tr>
				<td><a href="listStudent.jsp">游览学生</a></td>
			</tr>
		</table>
	</div>

</body>
</html>