<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新增权限信息</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 引入bootstrap -->
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/css/bootstrap.min.css">
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
							<h1 style="text-align: center;">新增职员信息</h1>
						</div>
					</div>
					<div class="panel-body">
						<form class="form-horizontal" role="form"
							action="<%=basePath%>/sm/addEmployee" id="addEmployee"
							method="post">
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-2 control-label">职员姓名<span
									style="color: red">&nbsp;&nbsp;*</span></label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="inputEmail3"
										name="employeeName" required="required" placeholder="请输入职员姓名">
								</div>
							</div>
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-2 control-label">职员性别</label>
								<div class="col-sm-10">
									<select class="form-control" name="employeeSex"
										required="required">
										<option value="男" selected>男</option>
										<option value="女">女</option>
									</select>
								</div>
							</div>
							
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-2 control-label">职员年龄<span
									style="color: red">&nbsp;&nbsp;*</span></label>
								<div class="col-sm-10">
									<input type="text" class="form-control"
										name="employeeAge" required="required" placeholder="请输入职员年龄">
								</div>
							</div>
							
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-2 control-label">职员电话<span
									style="color: red">&nbsp;&nbsp;*</span></label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="employeePhone" required="required"
										placeholder="请输入职员电话">
								</div>
							</div>
							
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-2 control-label">职员邮箱<span
									style="color: red">&nbsp;&nbsp;*</span></label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="employeeEmail" required="required"
										placeholder="请输入职员邮箱">
								</div>
							</div>
							
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-2 control-label">职员地址</label>
								<div class="col-sm-10">
									<select class="form-control" name="employeeAddress"
										required="required">
										<option value="南京" selected>南京</option>
										<option value="上海">上海</option>
										<option value="苏州">苏州</option>
										<option value="无锡">无锡</option>
										<option value="杭州">杭州</option>
										<option value="北京">北京</option>
										<option value="广州">广州</option>
										<option value="其他">其他</option>
									</select>
								</div>
							</div>
							
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-2 control-label">职员部门</label>
								<div class="col-sm-10">
								<select class="form-control" name="employeeDepartment"
										required="required">
										<option value="研发部" selected>研发部</option>
										<option value="实施部">实施部</option>
										<option value="销售部">销售部</option>
										<option value="测试部">测试部</option>
										<option value="运维部">运维部</option>
										<option value="人事部">人事部</option>
										<option value="市场部">市场部</option>
										<option value="推广部">推广部</option>
										<option value="后勤部">后勤部</option>
										<option value="客服部">客服部</option>
										<option value="采购部">采购部</option>
										<option value="行政部">行政部</option>
										<option value="保安部">保安部</option>
										<option value="其他">其他</option>
									</select>
								</div>
							</div>
							
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-2 control-label">职员职位</label>
								<div class="col-sm-10">
								<select class="form-control" name="employeePosition"
										required="required">
										<option value="开发工程师" selected>开发工程师</option>
										<option value="数据库管理员">数据库管理员</option>
										<option value="测试工程师">测试工程师</option>
										<option value="运维工程师">运维工程师</option>
										<option value="实施工程师">实施工程师</option>
										<option value="技术支持">技术支持</option>
										<option value="实习生">实习生</option>
										<option value="项目经理">项目经理</option>
										<option value="技术总监">技术总监</option>
										<option value="架构师">架构师</option>
										<option value="产品经理">产品经理</option>
										<option value="产品设计师">产品设计师</option>
										<option value="人事HR">人事HR</option>
										<option value="销售专员">销售专员</option>
										<option value="销售经理">销售经理</option>
										<option value="采购专员">采购专员</option>
										<option value="市场策划">市场策划</option>
										<option value="后勤人员">后勤人员</option>
										<option value="保安人员">保安人员</option>
										<option value="其他">其他</option>
									</select>
									</div>
							</div>
							
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-2 control-label">职员权限</label>
								<div class="col-sm-10">
									<select class="form-control" name="employeePermission"
										required="required">
										<option value="一般" selected>一般</option>
										<option value="初级">初级</option>
										<option value="中级">中级</option>
										<option value="高级">高级</option>
										<option value="最高级">最高级</option>
									</select>
								</div>
							</div>
							
							<div class="form-group" style="text-align: center">
								<button class="btn btn-default" type="submit">提交</button>
								<button class="btn btn-default" type="reset">重置</button>
							</div>
						</form>
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
    $("#nav li:nth-child(1)").addClass("active")
</script>
</html>