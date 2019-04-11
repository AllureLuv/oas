<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path;
%>
<!DOCTYPE html>
<html>
<head>
<title>角色信息显示</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 引入bootstrap -->
<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/bootstrap.min.css">
<!-- 引入JQuery  bootstrap.js-->
<script src="<%=basePath%>/js/jquery-3.2.1.min.js"></script>
<script src="<%=basePath%>/js/bootstrap.min.js"></script>


</head>
<body>
	<!-- 中间主体 -->
	<div class="container" id="content">
		<div class="row">
			<div class="col-md-10">
				<div class="panel panel-default">
					<div class="panel-heading">
						<div class="row">
							<h1 class="col-md-5">角色名单管理</h1>
						</div>
					</div>
					<table class="table table-bordered">
						<thead>
							<tr>
								<th>角色编号</th>
								<th>角色名字</th>
								<th>角色描述</th>
								<th>角色等级</th>
								<th>角色创建日期</th>
								<th>角色创建人名</th>
								<th>角色更新日期</th>
								<th>角色更新人名</th>
								<th>角色备注1</th>
								<th>角色备注2</th>
								<th>操 作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${requestScope.roles}" var="role">
								<tr>
									<td>${role.roleId}</td>
									<td>${role.roleName}</td>
									<td>${role.roleComment}</td>
									<td>${role.roleLevel}</td>
									<td>${role.roleCreatedDatetime}</td>
									<td>${role.roleCreatedName}</td>
									<td>${role.roleUpdatedDatetime}</td>
									<td>${role.roleUpdatedName}</td>
									<td>${role.roleDefault1}</td>
									<td>${role.roleDefault2}</td>
									<td>
									<button class="btn btn-default btn-xs btn-info"
											onClick="location.href='<%=basePath%>/sm/showAddRole'">新增</button>
										<button class="btn btn-default btn-xs btn-info"
											onClick="location.href='<%=basePath%>/sm/showUpdateRole'">修改</button>
										<button class="btn btn-default btn-xs btn-danger btn-primary"
											onClick="location.href='delRole?roleId=${role.roleId}'">删除</button>
										<!--弹出框-->
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					</div>						
			</div>
		</div>
	</div>
	<div class="container" id="footer">
		<div class="row">
			<div class="col-md-12"></div>
		</div>
	</div>
	<div class="container" id="footer">
		<div class="row">
			<div class="col-md-12"></div>
		</div>
	</div>
</body>
</body>
</html>
	