<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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
#div2 {
	position: absoulte;
	left: 0px;
	top: 20px;
	width: 800px;
	height: 150px;
}
</style>
<style>
          p{font-size:100px;}
</style>
</head>
<body>
	<jsp:include page="top.jsp"></jsp:include>
	<div class="container" id="content">
		<div class="row">
			<!-- class="row" -->
			<jsp:include page="menu.jsp"></jsp:include>
			<div class="col-md-10">
				<!-- class="col-md-10" -->
				
			</div>
			<div style="width:977px;height:0px;margin:0px 0 0 400px">
					<div class="panel-heading">
						<table class="table">
							<br /><br /><br /><br /><br /><br />
							<p class="text-primary">欢迎使用！</p>
						</table>
						<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
					</div>
				</div>
		</div>
	</div>
</body>
</html>