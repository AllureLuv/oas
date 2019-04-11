<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path;
%>
<!DOCTYPE html >
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
<title>首页</title>
<style>
#bg {
	width: 100%;
	height: 100%;
	position: absolute;
	z-index: -1;
}
</style>
<style>
#div1 {
	position: absoulte;
	left: 0px;
	top: 20px;
	width: 1140px;
	height: 150px;
}
</style>
</head>

<body>
	<img id="bg" src="../images/a.jpg" />
	<!-- 顶栏 -->
	<div class="container" id="top">
		<div class="row">
			<div class="col-md-12">
				<!--加入导航条标题-->
				<div class="navbar navbar-default" role="navigation" id="div1">
					<div class="navbar-header">
						<a href="#" class="navbar-brand"><h1>互联网公司人事管理平台</h1></a>
					</div>
					<form action="" class="navbar-form navbar-right" role="search">
						<div class="dropdown">
							<button type="button" class="btn btn-info"
								onClick="location.href='${pageContext.request.contextPath}/sm/accountList'">
								<span class="glyphicon glyphicon-user"></span>账户管理
							</button>
							<button type="button" class="btn btn-info"
								onClick="location.href='../index.jsp'">
								<span class="glyphicon glyphicon-off"></span>注销
								</button>

							<!-- style="margin-top: 50px"  -->
							<%-- <button class="btn btn-info dropdown-toggle" type="button"
									id="dropdownMenu1" data-toggle="dropdown"
									style="margin-right: 50px;">
									登录用户名
									<span class="glyphicon glyphicon-user"></span> 
									<span class="caret"></span>
								</button>
								<ul class="dropdown-menu" role="menu"
									aria-labelledby="dropdownMenu1">
									<li role="presentation"><a role="menuitem" tabindex="-1"
										href="${pageContext.request.contextPath}/sm/accountList">
											<span class="glyphicon glyphicon-cog pull-right"></span>
											所有账户信息
									</a></li>
									<!-- 分割线 -->
									<li role="presentation" class="divider"></li>
									<li role="presentation"><a role="menuitem" tabindex="-1"
										href="../index.jsp"> 
										<span class="glyphicon glyphicon-off pull-right"></span> 注销
									</a></li>
								</ul> --%>

						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>