<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path;
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>职位修改</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 引入bootstrap -->
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<!-- 引入JQuery  bootstrap.js-->
<script src="../js/jquery-3.2.1.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="top.jsp"></jsp:include>
	<!-- 中间主体 -->
	<div class="container" id="content">
		<div class="row">
			<jsp:include page="menu.jsp"></jsp:include>
			<div class="col-md-10">
				<div class="panel panel-default">
					<div class="panel-heading">
						<div class="row">
							<h1 style="text-align: center;">修改职位信息</h1>
						</div>
					</div>
					<div class="panel-body">
						<form class="form-horizontal" role="form"
							action="positionUpdateSuccess" name="myPositionUpdate"
							method="post">
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-2 control-label">职位名称<span
									style="color: red">&nbsp;&nbsp;*</span></label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="inputPassword3"
										name="positionName" required="required" placeholder="请输入姓名"
										<c:if test='${requestScope.position!=null}'>
										 value="${requestScope.position.positionName}"
								  </c:if>>
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-2 control-label">职位所属部门<span
									style="color: red">&nbsp;&nbsp;*</span></label>
								<div class="col-sm-10">
									<input type="number" class="form-control" id="inputEmail3"
										name="positionDepartmentId" required="required" placeholder="请输入部门号"
										<c:if test='${requestScope.position!=null}'>
										 value="${requestScope.position.positionDepartmentId}"
								  </c:if>>
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-2 control-label">职位等级<span
									style="color: red">&nbsp;&nbsp;*</span></label>
								<div class="col-sm-10">
									<input type="number" class="form-control" id="inputEmail3"
										name="positionLevel" required="required" placeholder="请输入职位等级"
										<c:if test='${requestScope.position!=null}'>
										 value="${requestScope.position.positionLevel}"
								  </c:if>>
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-2 control-label">职位描述<span
									style="color: red">&nbsp;&nbsp;*</span></label>
								<div class="col-sm-10">
									<textarea name="positionDescription" class="form-control"
										rows="5" id="inputEmail3" required="required" placeholder="请输入部门描述"
										<c:if test='${requestScope.position!=null}'>
										 value="${requestScope.position.positionDescription}"
								  </c:if>></textarea>
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-2 control-label">职位更新人ID</label>
								<div class="col-sm-10">
									<input readonly="readonly" type="number" class="form-control" id="inputEmail3"
										name="positionCreatedName" placeholder="请输入ID号"
										<c:if test='${requestScope.position!=null}'>
										 value="${requestScope.position.positionId}"
								  </c:if>>
								</div>
							</div>
							<div class="form-group" style="text-align: center">
								<button class="btn btn-default" type="submit">提交</button>
								<button class="btn btn-default" type="reset">重置</button>
							</div>
						</form>
						</form>
					</div>

				</div>

			</div>
		</div>
	</div>
</body>
</html>