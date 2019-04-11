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
									<th><h1 class="col-md-5">联系我们</h1></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><h4 class="col-md-12">
									<br/>
									如您在使用该系统的过程中遇到解决不了的问题，欢迎联系开发人员！<br/>
											开发人员联系方式：<br/>
											邮箱：ztc224201@163.com<br/>
											电话：18013949287<br/>
											QQ：1009103648<br/>
											WeChat：tc1009103648<br/><br/><br/><br/><br/><br/><br/><br/><br/>
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