<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>positionList</title>
</head>
<body>
<body>
	<div align="center">
		<h2>职位信息显示</h2>
		<table border="1" class="dataintable">
			<tr>
				<th>职位编号</th>
				<th>职位名称</th>
				<th>职位描述</th>
				<th>职位等级</th>
				<th>部门编号</th>
				<th>备注</th>
			</tr>
			<c:forEach items="${requestScope.positionList}" var="position">
				<tr>
					<td>${position.get(0)}</td>
					<td>${position.get(1)}</td>
					<td>${position.get(2)}</td>
					<td>${position.get(3)}</td>
					<td>${position.get(4)}</td>
					<%-- <td>${position.positionId}</td>
					<td>${position.positionName}</td>
					<td>${position.positionDescription}</td>
					<td>${position.positionLevel}</td>
					<td>${position.positionDepartmentId}</td> --%>
					<td></td>
				</tr>
			</c:forEach>

		</table>
	</div>
</body>


</html>