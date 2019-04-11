<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>用户注册</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 引入bootstrap -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<!-- 引入JQuery  bootstrap.js-->
<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

<style>
#bg {
	width: 100%;
	height: 100%;
	position: absolute;
	z-index: -1;
}
</style>
<script>  
            function check2pwd() {  
                    if(input1.value != input2.value) {  
                        alert("两次输入密码不一致！")  
                        input1.value = "";  
                        input2.value = "";  
                    }  
            }  
        </script>
</head>
<body>
	<img id="bg" src="../images/a.jpg" />
	<div class="container" id="content">
		<div class="row">
			<!--左边框 -->
			<div class="col-md-10">
				<div class="panel panel-default">
					<div class="panel-heading">
						<div class="row">
							<h1 style="text-align: center;">欢迎注册</h1>
						</div>
					</div>
					<div class="panel-body">
						<form class="form-horizontal" role="form" action="addAccount2"
							id="addfrom" method="post">
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-2 control-label">账号名<span
									style="color: red">&nbsp;&nbsp;*</span></label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="inputEmail3"
										name="accountName" required="required" placeholder="请输入账号">
								</div>
							</div>
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-2 control-label">密码<span
									style="color: red">&nbsp;&nbsp;*</span></label>
								<div class="col-sm-10">
									<input type="password" class="form-control" id="input1"
										name="accountPwd" required="required" placeholder="请输入密码">
								</div>
							</div>
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-2 control-label">确认密码<span
									style="color: red">&nbsp;&nbsp;*</span></label>
								<div class="col-sm-10">
									<input type="password" class="form-control" id="input2"
										name="accountPwd" required="required" placeholder="请再输入密码" onblur="check2pwd()">
								</div>
							</div>
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-2 control-label">真实姓名<span
									style="color: red">&nbsp;&nbsp;*</span></label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="inputName"
										name="accountRealName" required="required" placeholder="请输入姓名">
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-2 control-label">邮箱<span
									style="color: red">&nbsp;&nbsp;*</span></label>
								<div class="col-sm-10">
									<input type="email" class="form-control" id="inputEmail3"
										name="accountMail" required="required" placeholder="请输入邮箱">
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-2 control-label">地址<span
									style="color: red">&nbsp;&nbsp;*</span></label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="inputEmail3"
										required="required" name="accountAddress">
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-2 control-label">电话<span
									style="color: red">&nbsp;&nbsp;*</span></label>
								<div class="col-sm-10">
									<input type="number" class="form-control" id="inputEmail3"
										name="accountPhone" required="required">
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-2 control-label">座机<span>&nbsp;&nbsp;&nbsp;</span></label>
								<div class="col-sm-10">
									<input type="number" class="form-control" id="inputEmail3"
										name="accountTelephone">
								</div>
							</div>
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-2 control-label">角色<span
									style="color: red">&nbsp;&nbsp;*</span></label>
								<div class="col-sm-10">
									<select class="form-control" name="accountRoleId"
										required="required">
										<%-- <c:forEach items="${roleList}" var="role">
											<option value="${role.roleId}">${role.roleName}</option>
										</c:forEach> --%>
										<option value="1" selected>普通用户</option>
										<option value="2">管理员</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-2 control-label">职位<span
									style="color: red">&nbsp;&nbsp;*</span></label>
								<div class="col-sm-10">
									<select class="form-control" name="accountPositionId"
										required="required">
										<%-- <c:forEach items="${positionList}" var="position">
											<option value="${position.positionId}">${position.positionName}</option>
										</c:forEach> --%>
										<option value="1" selected>java开发</option>
										<option value="2">c++开发</option>
										<option value="3">大数据开发</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-2 control-label">公司<span
									style="color: red">&nbsp;&nbsp;*</span></label>
								<div class="col-sm-10">
									<select class="form-control" name="accountCompanyId"
										required="required">
										<option value="1" selected>金陵科技学院1</option>
										<option value="2">金陵科技学院2</option>
										<option value="3">金陵科技学院3</option>
									</select>
								</div>
							</div>
							<div class="form-group" style="text-align: center">
								<button class="btn btn-default" type="reset">重置</button>
								<button class="btn btn-default" type="submit">注册</button>
							</div>
							<p>Tip：注册成功会自动返回登录页面.</p>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	
<!-- <script type="text/javascript">
    function validate(){
    var word1= document.getElementById("password111").value;
    var word2 = document.getElementById("password222").value;
    if(word1 != word2){
      window.alert("两次输入的新密码不一致！");
      password222.focus();
      return false;
    }
    return true;
    }
    
</script> -->
</body>