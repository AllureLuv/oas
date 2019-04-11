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
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 引入bootstrap -->
<link href="<%=request.getContextPath()%>/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<!-- 引入JQuery  bootstrap.js-->
<script src="<%=request.getContextPath()%>/js/jquery-3.2.1.min.js"></script>
<script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
<title>文件上传</title>
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
							<h1 style="text-align: center;">文件上传</h1>
						</div>
					</div>
					<div id="content" class="panel-body">
						<form
							action="${pageContext.request.contextPath}/servlet/UploadHandleServlet"
							enctype="multipart/form-data" method="post">
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-2 control-label">上传用户</label>
								<div class="col-sm-12">
									<input readonly="readonly" type="text" class="form-control" id="inputEmail3"
										name="username" placeholder="周天呈"><br>
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-2 control-label">上传文件1</label>
								<div class="col-sm-12">
									<input type="file" class="form-control" id="inputEmail3"
										name="file1" required="required"><br/>
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-2 control-label">上传文件2</label>
								<div class="col-sm-12">
									<input type="file" class="form-control" id="inputEmail3"
										name="file2" required="required"><br/><br/>
										<button class="btn btn-default" type="submit">上传</button><br/><br/>
								</div>
							</div>
						</form>
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