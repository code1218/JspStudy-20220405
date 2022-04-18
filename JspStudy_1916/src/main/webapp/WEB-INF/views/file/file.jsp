<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 업로드</title>
<link rel="stylesheet" href="/JspStudy_1916/static/css/style.css">
<link rel="stylesheet" href="/JspStudy_1916/static/css/file-upload.css">
</head>
<body>
	<div id="container">
		<form action="/JspStudy_1916/file-upload" method="post" enctype="multipart/form-data">
			<table>
				<tr>
					<td>미리보기</td>
				</tr>
				<tr>
					<td class="preview-img"></td>
				</tr>
				<tr>
					<td>파일 업로드</td>
				</tr>
				<tr>
					<td><input type="file" class="file-upload" name="file" multiple="multiple">
					</td>
				</tr>
			</table>
			<button>이미지 업로드</button>
		</form>
		<a download href="/JspStudy_1916/static/fileupload/fbf02914632c493c80321e9991205e36_galaxy.png">이미지 다운로드</a>
		<img src="/JspStudy_1916/static/fileupload/fbf02914632c493c80321e9991205e36_galaxy.png">
	</div>
	<script type="text/javascript" src="/JspStudy_1916/static/js/file.js"></script>
</body>
</html>








