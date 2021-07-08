<%--
  Created by IntelliJ IDEA.
  User: HCJ
  Date: 2021/7/7
  Time: 22:54
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
	<base href="<%=basePath%>">
	<title>注册学生</title>
</head>
<body>
	<div align="tenter">
		<form action="student/addStudent.do" method="post">
			<table>
				<tr>
					<td>姓名：</td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td>年龄：</td>
					<td><input type="text" name="age"></td>
				</tr>
				<tr>
					<td><input type="submit" value="添加"></td>
					<td><input type="reset" value="重置表单"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>