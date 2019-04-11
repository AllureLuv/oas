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
<!-- <span style="font-size: 18px;"> </span>
<span style="font-size: 24px;"><meta http-equiv="refresh"
		content="3;URL=/WEB-INF/jsp/sm/nav.jsp"> </span>
<span style="font-size: 24px;"> -->

	<title>消息提示</title>
</head>

<body>
<centre>
${message}<br/>
<a href="<%=basePath%>/sm/showUpload">点击返回</a>
</centre>
</body>
</html>