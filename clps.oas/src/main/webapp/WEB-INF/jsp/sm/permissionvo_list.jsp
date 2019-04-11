<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path;
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>权限信息</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 引入bootstrap -->
<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/bootstrap.min.css">
<!-- 引入JQuery  bootstrap.js-->
<script src="<%=basePath%>/js/jquery-3.2.1.min.js"></script>
<script src="<%=basePath%>/js/bootstrap.min.js"></script>
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
							<h1 class="col-md-5">权限信息</h1>
							<form class="bs-example bs-example-form col-md-5" role="form" style="margin: 20px 0 10px 0;" action="/admin/selectCourse" id="form1" method="post">
								<div class="input-group">
									<!-- <input type="text" class="form-control" placeholder="请输入权限" name="findByName">
									<span class="input-group-addon btn" onclick="document.getElementById('form1').submit" id="sub">搜索</span> -->
								</div>
							</form>
							<button class="btn btn-default col-md-2" style="margin-top: 20px" onClick="location.href='<%=basePath%>/sm/showAddPermission'">
								新增权限信息
								<sapn class="glyphicon glyphicon-plus"/>
							</button>
						</div>
					</div>
					<table class="table table-bordered">
						<thead>
							<tr>
								<th>权限序号</th>
								<th>权限名称</th>
								<th>权限编码</th>
								<th>权限描述</th>
								<th>权限创建时间</th>
								<th>权限创建人</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${requestScope.permissionvos}"
								var="permissionvo" varStatus="stauts">
								<tr>
									<p hidden>${permissionvo.permissionId}</p>
									<td>${stauts.count}</td>
									<td>${permissionvo.permissionName}</td>
									<td>${permissionvo.permissionCode}</td>
									<td>${permissionvo.permissionComment}</td>
									<td>${permissionvo.permissionCreatedDateTime}</td>
									<td>${permissionvo.permissionCreatedName}</td>
									<td>
										<button class="btn btn-default btn-xs btn-info"
											onClick="location.href='<%=basePath%>/sm/editPermissionVO?permissionId=${permissionvo.permissionId}'">修改</button>
										<button class="btn btn-default btn-xs btn-danger btn-primary"
											onClick="location.href='delPermissionVO?permissionId=${permissionvo.permissionId}'">删除</button>
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
									<li><a href="permissionvoList?page=${pagingVO.upPage}">&laquo;上一页</a></li>
									<li class="active"><a href="">${pagingVO.currentPage}</a></li>
									<c:if test="${pagingVO.currentPage+1 <= pagingVO.totalCountPage}">
										<li><a href="permissionvoList?page=${pagingVO.currentPage+1}">${pagingVO.currentPage+1}</a></li>
									</c:if>
									<c:if test="${pagingVO.currentPage+2 <= pagingVO.totalCountPage}">
										<li><a href="permissionvoList?page=${pagingVO.currentPage+2}">${pagingVO.currentPage+2}</a></li>
									</c:if>
									<c:if test="${pagingVO.currentPage+3 <= pagingVO.totalCountPage}">
										<li><a href="permissionvoList?page=${pagingVO.currentPage+3}">${pagingVO.currentPage+3}</a></li>
									</c:if>
									<c:if test="${pagingVO.currentPage+4 <= pagingVO.totalCountPage}">
										<li><a href="permissionvoList?page=${pagingVO.currentPage+4}">${pagingVO.currentPage+4}</a></li>
									</c:if>
									<li><a href="permissionvoList?page=${pagingVO.totalCountPage}">最后一页&raquo;</a></li>
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
<script type="text/javascript">
<c:if test="${pagingVO != null}">
			if (${pagingVO.currentPage} == ${pagingVO.totalCountPage}) {
				$(".pagination li:last-child").addClass("disabled")
			};

			if (${pagingVO.currentPage} == ${1}) {
				$(".pagination li:nth-child(1)").addClass("disabled")
			};
        </c:if>
</script>
</html>