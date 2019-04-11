<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 引入bootstrap -->
<link href="<%=request.getContextPath()%>/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<!-- 引入JQuery  bootstrap.js-->
<script src="<%=request.getContextPath()%>/js/jquery-3.2.1.min.js"></script>
<script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
<title>系统说明</title>
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
						<table class="table">

							<thead>
								<tr>
									<th><h1 class="col-md-5">系统说明</h1></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><h4 class="col-md-12">
											1.系统描述：为了更好的帮助互联网公司人事部门的工人员处理公司职员、部门、职位等等的信息和资料，简化操作流程，节约工作时间。同时，采用人机交互的相关思想，立足于增加用户体验。<br/>
											2.主要功能：<br/>
											（1）用户注册模块：该模块实现通过用户信息的输入以及校验实现新用户注册。<br/>
											（2）用户登录模块：该模块实现输入用户名和密码进行登录，若校验成功则跳转到该平台的主页，若校验失败则在原页面显示错误提示。<br/>
											（3）职员管理模块：该模块主要实现职员信息的界面显示，采用多表连接查询进行信息显示。此外，还通过点击按钮跳转到相应界面实现职员信息的新增、删除和修改。<br/>
											（4）在线搜索模块：该模块实现通过搜索框实现模糊查询并将查询内容显示在页面上。<br/>
											（5）部门管理模块：该模块主要是对部门信息的界面显示以及操作。<br/>
											（6）职位管理模块：该模块主要实现职位信息的界面显示，采用多表连接查询进行信息显示，还包括搜索框实现模糊查询以及分页显示。可以通过点击按钮跳转到相应界面实现职位信息的相应操作。<br/>
											（7）权限管理模块：该模块主要是对部门信息的界面显示以及操作。<br/>
											（8）上传下载模块：该模块实现了文件的上传与下载到本地，方便人事部门的工作人员查看相应的资料。<br/>
											（9）帮助提示模块：点击会提示该系统的使用说明、联系我们以及注意事项等信息。<br/>
											（10）联系我们模块：点击会提供开发人员联系方式。
											</h4></td>
								</tr>
							</tbody>
						</table>
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