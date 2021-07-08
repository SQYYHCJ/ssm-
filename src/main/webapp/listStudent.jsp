<%--
  Created by IntelliJ IDEA.
  User: HCJ
  Date: 2021/7/7
  Time: 23:33
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
	<base href="<%=basePath%>">
	<title>游览学生</title>
	<script type="text/javascript" src="js/jquery-3.4.1.js"></script>
	<script type="text/javascript">
	$(function () {
		$("#btnLoader").click(function () {
			$.ajax(
				{
					url:"student/queryStudent.do",
					type:"get",
					dataType:"json",
					success:function (data) {
					    var html = "";
						$.each(data,function (i,n) {
							html +=   '<tr>';
                            html +=   '<td>'+n.id+'</td>';
                            html +=   '<td>'+n.name+'</td>';
                            html +=   '<td>'+n.age+'</td>';
                            html +=   '</tr>';
                        });
						
						$("#info").html(html);
                    }
				}
			)
        })
    })
	</script>
</head>
<body>
<div align="center">
	<table border="2">
		<thead>
		<tr>
			<td>学号</td>
			<td>姓名</td>
			<td>年龄</td>
		</tr>
		</thead>
		<tbody id="info">
		
		</tbody>
	</table>
	<input type="button" id="btnLoader" value="查询数据">
</div>
</body>
</html>