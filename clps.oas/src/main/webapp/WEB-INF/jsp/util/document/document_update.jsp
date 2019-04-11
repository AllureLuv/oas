<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>文件修改</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>

	<table>
		<tr valign="top">
			<td>
				<form action="doUpdate?documentId=${document.documentId }" enctype="multipart/form-data"
					method="post">
					<input type="hidden" name="flag" value="2">
    	 			<input type="hidden" name="id" value="${document.documentId }">
					<table>
						<tr>
							<td class="font3 fftd">文档标题：<input type="text" name="documentTitle"
								size="30" id="title" value="${document.documentTitle }"/></td>
						</tr>
						<tr>
							<td class="main_tdbor"></td>
						</tr>
						<tr>
							<td class="font3 fftd">文档描述：<br /> <textarea name="documentComment"
									cols="88" rows="11" id="content">${document.documentComment }</textarea>
							</td>
						</tr>
						<tr>
							<td class="main_tdbor"></td>
						</tr>

						<tr>
							<td class="font3 fftd">文档：<br /> <input type="file"
								name="file" id="file" size="30" />
							</td>
						</tr>
						<tr>
							<td class="font3 fftd">
							<button type="submit">上传</button>
							<input type="reset" value="重置"></td>
						</tr>
					</table>
				</form>
			</td>
		</tr>
	</table>
</body>
</html>