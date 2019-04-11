<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<html>
<head>
<title>网上拍卖系统 ——文件信息</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>

<style type="text/css">
#content {width ="100%";
	cellpadding: "5";
	cellspacing: "0";
}
</style>
<body>
	<div align="center">
		<h2>文件信息</h2>
		<a href="documentUpload">上传文件</a><br>
		<form name="input" action="queryDocumentLikeTitle" method="post">
			模糊查询文件: <input type="text" name="patternTitle"
				placeholder="documentTitle"> <input type="submit"
				value="查询">
		</form>
		<br>
		<table>
			<tr valign="top">
				<td height="300">
					<!-- 查询所有显示file  -->
					<table border="1" id="content"
						style="border: #c2c6cc 1px solid; border-collapse: collapse;">
						<tr align="center">
							<td><input type="checkbox" id="checkAll"></td>
							<td>标题</td>
							<td>描述</td>
							<td>创建时间</td>
							<td>创建人</td>
							<td>修改时间</td>
							<td>修改人</td>
							<td>操作</td>
							<td>下载</td>
						</tr>
						<c:forEach items="${requestScope.documents}" var="document">
							<tr>
								<td><input type="checkbox" id="box_${stat.index}"
									value="${document.documentId}"></td>
								<td>${document.documentTitle }</td>
								<td>${document.documentComment}</td>
								<td>${document.documentCreatedDatetime}</td>
								<td>${document.documentCreatedName}</td>
								<td>${document.documentUpdatedDatetime}</td>
								<td>${document.documentUpdatedName}</td>
								<td><a
									href="documentDelete?documentId=
									${document.documentId}">删除</a>
									<a
									href="documentUpdate?documentId=
									${document.documentId}">修改</a>
								</td>
								<td align="center" width="40px;"><a
									href="documentDownload?documentId=
									${document.documentId}">
										<img width="20" height="20" title="下载"
										src="<%=basePath%>/images/downLoad.png" />
								</a></td>
							</tr>

						</c:forEach>

					</table>
		</table>
	</div>
</body>
</html>