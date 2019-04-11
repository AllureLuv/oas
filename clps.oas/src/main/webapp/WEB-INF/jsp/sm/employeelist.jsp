<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 引入bootstrap -->
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/css/bootstrap.min.css">
<!-- 引入JQuery  bootstrap.js-->
<script src="<%=basePath%>/js/jquery-3.2.1.min.js"></script>
<script src="<%=basePath%>/js/bootstrap.min.js"></script>
<title>职员信息</title>
</head>
<body>

	<!-- 顶栏 -->
	<jsp:include page="top.jsp"></jsp:include>
	<!-- 中间主体 -->
	<div class="container" id="content">
		<div class="row">
			<jsp:include page="menu.jsp"></jsp:include>
			<div class="col-md-10">
				<div class="panel panel-default">
					<div class="panel-heading">
						<div class="row">
							<h1 class="col-md-5">职员信息</h1>
							<form class="bs-example bs-example-form col-md-5" role="form"
								style="margin: 20px 0 10px 0;"
								action="employeeFindByName?employeeName=" id="form1"
								method="post">
								<div class="input-group">
									<input type="text" class="form-control"
										placeholder="请输入要搜索的职员姓名" name="employeename"> <span
										class="input-group-addon btn" id="sub"><button
											class="btn btn-default" type="submit">搜索</button></span>
								</div>
							</form>
							<button class="btn btn-default col-md-2" style="margin-top: 20px"
								onClick="location.href='<%=basePath%>/sm/showAddEmployee'">
								新增职员信息
								<sapn class="glyphicon glyphicon-plus" />
							</button>
						</div>
					</div>
					<table class="table table-bordered">
						<thead>
							<tr>
								<th>职员序号</th>
								<th>职员姓名</th>
								<th>职员性别</th>
								<th>职员年龄</th>
								<th>职员电话</th>
								<th>职员邮件</th>
								<th>职员地址</th>
								<th>职员部门</th>
								<th>职员职位</th>
								<th>职员权限</th>
								<th>相关操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${requestScope.employees}" var="employee"
								varStatus="stauts">
								<tr>
									<p hidden>${employee.employeeId}</p>
									<td>${stauts.count}</td>
									<td>${employee.employeeName}</td>
									<td>${employee.employeeSex}</td>
									<td>${employee.employeeAge}</td>
									<td>${employee.employeePhone}</td>
									<td>${employee.employeeEmail}</td>
									<td>${employee.employeeAddress}</td>
									<td>${employee.employeeDepartment}</td>
									<td>${employee.employeePosition}</td>
									<td>${employee.employeePermission}</td>
									<p hidden>${employee.isValid}</p>
									<td>
										<button class="btn btn-default btn-xs btn-info"
											onClick="location.href='<%=basePath%>/sm/editEmployee?employeeId=${employee.employeeId}'">修改</button>
										<button class="btn btn-default btn-xs btn-danger btn-primary"
											onClick="location.href='delEmployee?employeeId=${employee.employeeId}'">删除</button>
										<!--弹出框-->
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>

					<div class="panel-footer">
						<c:if test="${pagingVO != null}">
							<nav style="text-align: center">
							<ul class="pagination">
								<li><a href="employeeList?page=${pagingVO.upPage}">&laquo;上一页</a></li>
								<li class="active"><a href="">${pagingVO.currentPage}</a></li>
								<c:if
									test="${pagingVO.currentPage+1 <= pagingVO.totalCountPage}">
									<li><a href="employeeList?page=${pagingVO.currentPage+1}">${pagingVO.currentPage+1}</a></li>
								</c:if>
								<c:if
									test="${pagingVO.currentPage+2 <= pagingVO.totalCountPage}">
									<li><a href="employeeList?page=${pagingVO.currentPage+2}">${pagingVO.currentPage+2}</a></li>
								</c:if>
								<c:if
									test="${pagingVO.currentPage+3 <= pagingVO.totalCountPage}">
									<li><a href="employeeList?page=${pagingVO.currentPage+3}">${pagingVO.currentPage+3}</a></li>
								</c:if>
								<c:if
									test="${pagingVO.currentPage+4 <= pagingVO.totalCountPage}">
									<li><a href="employeeList?page=${pagingVO.currentPage+4}">${pagingVO.currentPage+4}</a></li>
								</c:if>
								<li><a href="employeeList?page=${pagingVO.totalCountPage}">最后一页&raquo;</a></li>
							</ul>
							</nav>
						</c:if>
					</div>

				</div>

			</div>
		</div>
	</div>
	<div class="container" id="footer">
		<div class="row">
			<div class="col-md-12"></div>
		</div>
	</div>
</body>
</html>