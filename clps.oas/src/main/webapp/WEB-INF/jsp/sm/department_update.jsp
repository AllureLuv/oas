<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path;
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 引入bootstrap -->
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/css/bootstrap.min.css">
<!-- 引入JQuery  bootstrap.js-->
<script src="<%=basePath%>/js/jquery-3.2.1.min.js"></script>
<script src="<%=basePath%>/js/bootstrap.min.js"></script>

<title>修改部门</title>
</head>
<body>
	<!-- 顶栏 -->
	<jsp:include page="top.jsp"></jsp:include>
	<!-- 中间主体 -->
	<div class="container" id="content">
		<div class="row">
			<!--左边框 -->
			<jsp:include page="menu.jsp"></jsp:include>
			<div class="col-md-10">
				<div class="panel panel-default">
					<div class="panel-heading">
						<div class="row">
							<h1 style="text-align: center;">修改部门信息</h1>
						</div>
					</div>
					<div id="content" class="panel-body">
						<form
							action="updateDepartment?depaNumber=${department.depaNumber}"
							name="myDepartmentUpadate" method="post" class="form-horizontal">
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-2 control-label">部门名称<span
									style="color: red">&nbsp;&nbsp;*</span></label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="inputEmail3"
										value="${department.depaName}" name="depaName" required="required"
										placeholder="请输入部门编号">
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-2 control-label">上级部门编号<span
									style="color: red">&nbsp;&nbsp;*</span></label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="inputEmail3"
										value="${department.depaFatherNumber}" name="depaFatherNumber" required="required"
										placeholder="请输入上级部门编号">
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-2 control-label">下级部门编号<span
									style="color: red">&nbsp;&nbsp;*</span></label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="inputEmail3"
										value="${department.depaChildNumber}" name="depaChildNumber" required="required"
										placeholder="请输入下级部门编号">
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-2 control-label">部门等级<span
									style="color: red">&nbsp;&nbsp;*</span></label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="inputEmail3"
										value="${department.depaLevel}" name="depaLevel" required="required"
										placeholder="请输入部门等级">
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-2 control-label">部门邮箱<span
									style="color: red">&nbsp;&nbsp;*</span></label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="inputEmail3"
										value="${requestScope.department.depaEmail}" name="depaEmail" required="required"
										placeholder="请输入部门邮箱">
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-2 control-label">部门描述<span
									style="color: red">&nbsp;&nbsp;*</span></label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="inputEmail3"
										value="${department.depaComment}" name="depaComment" required="required"
										placeholder="请输入部门描述">
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-2 control-label">部门创建人名<span
									style="color: red">&nbsp;&nbsp;*</span></label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="inputEmail3"
										value="${department.depaCreateName}" name="depaCreateName" required="required"
										placeholder="请输入部门创建人名">
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-2 control-label">部门修改人名<span
									style="color: red">&nbsp;&nbsp;*</span></label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="inputEmail3"
										value="${department.depaName}" name="depaUpdatedName" required="required"
										placeholder="请输入部门修改人名">
								</div>
							</div>
							<div class="form-group" style="text-align: center">
								<button class="btn btn-default" type="submit">修改</button>
								<button class="btn btn-default" type="reset">重置</button>
							</div>
						</form>
						<p>Tip：点击"提交"按钮.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>