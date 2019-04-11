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
<title>请求帮助</title>
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
									<th><h1 class="col-md-5">帮助</h1></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><h4 class="col-md-12">
									<br/>
									Q:不会使用怎么办？<br/>
									A:请参见系统说明<br/><br/>
									Q:忘记密码怎么办？<br/>
									A:请点击联系我们<br/><br/>
									Q:紧急情况怎么办？<br/>
									A:请点击联系我们<br/><br/>
									Q:系统失灵怎么办？<br/>
									A:请点击联系我们<br/><br/>
									Q:商业合作怎么办？<br/>
									A:请点击联系我们
										<br/>
											</h14></td>
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