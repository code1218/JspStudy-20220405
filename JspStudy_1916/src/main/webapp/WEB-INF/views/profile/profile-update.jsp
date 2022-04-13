<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<link rel="stylesheet" href="/JspStudy_1916/static/css/style.css">
<link rel="stylesheet" href="/JspStudy_1916/static/css/mypage.css">
</head>
<body>
	<div id="container">
		<div class="mypage-items">
			<form action="">
				<table>
					<tr>
						<td>사용자 이름</td>
						<td><input type="text" readonly="readonly"></td>
					</tr>
					<tr>
						<td>이름</td>
						<td><input type="text"></td>
					</tr>
					<tr>
						<td>이메일</td>
						<td><input type="text"></td>
					</tr>
					
				</table>
				<div>
					<button type="button">수정하기</button>
					<button type="button">비밀번호 변경</button>			
				</div>
			</form>
			
		</div>
	
	</div>
</body>
</html>