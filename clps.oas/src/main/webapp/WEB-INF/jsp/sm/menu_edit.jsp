<%@ page language="java"  contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- 引入bootstrap -->
    <link href="<%=request.getContextPath() %>/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
	<!-- 引入JQuery  bootstrap.js-->
	<script src="<%=request.getContextPath() %>/js/jquery-3.2.1.min.js"></script>
	<script src="<%=request.getContextPath() %>/js/bootstrap.min.js"></script>

<title>修改菜单</title>
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
					    	<h1 style="text-align: center;">修改菜单信息</h1>
						</div>
				    </div>
				   <div class="panel-body">
						<form class="form-horizontal"  
						action="menuUpdate?menuId=${requestScope.menuInfo.menuId}&
									menuIsvariable=${requestScope.menuInfo.menuIsvariable}"  method="post">
							 <font color="red">${requestScope.message}</font>
							  <div class="form-group">
							    <label  class="col-sm-2 control-label"> 菜单名称：<span
									style="color: red">&nbsp;&nbsp;*</span></label>
							    <div class="col-sm-10">
									<input class="form-control" placeholder="请输入菜单名称" name="menuName" required="required" value="${requestScope.menuInfo.menuName}"></input>
							    </div>
							  </div>
							  
							  <div class="form-group">
							    <label  class="col-sm-2 control-label">菜单排序号：<span
									style="color: red">&nbsp;&nbsp;*</span></label>
							    <div class="col-sm-10">
							    	<input type="number" class="form-control" name="menuSortId" required="required" value="${requestScope.menuInfo.menuSortId}"></input>
							    </div>
							  </div>
							  
							  
							  
							  
							   <div class="form-group">
							    <label  class="col-sm-2 control-label"> 菜单等级：<span
									style="color: red">&nbsp;&nbsp;*</span></label>
							    <div class="col-sm-10">
							  		 <input name="menuLevel"  required="required" type="number" class="form-control" value="${requestScope.menuInfo.menuLevel}"></input>
							    </div>
							  </div>
							  
							   <div class="form-group">
							    <label  class="col-sm-2 control-label"> 菜单父id:<span
									style="color: red">&nbsp;&nbsp;*</span></label>
							    <div class="col-sm-10">
									<input name="menuParentid"  required="required" type="number" class="form-control" value="${requestScope.menuInfo.menuParentid}"></input>
							    </div>
							  </div>
							  
							    <div class="form-group">
							    <label  class="col-sm-2 control-label">   菜单URL：<span
									style="color: red">&nbsp;&nbsp;*</span></label>
							    <div class="col-sm-10">
							  		<input name="menuUrl"  required="required" type="text" class="form-control" value="${requestScope.menuInfo.menuUrl}"></input>
							    </div>
							  </div>
							  
							   <div class="form-group">
							    <label  class="col-sm-2 control-label">   菜单描述：<span
									style="color: red">&nbsp;&nbsp;*</span></label>
							    <div class="col-sm-10">
								<textarea  name="menuComment" required="required" class="form-control">${requestScope.menuInfo.menuComment}</textarea>
								
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


</script>
</html>
