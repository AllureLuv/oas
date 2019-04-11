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
<title>Insert title here</title>
<span style="font-size: 18px;"> </span>
<span style="font-size: 24px;"><meta http-equiv="refresh"
		content="3;URL=redirect:../index.jsp"> </span>
<span style="font-size: 24px;">
</head>
<body>
注册成功，3s后返回登录页面。
</body>
</html>