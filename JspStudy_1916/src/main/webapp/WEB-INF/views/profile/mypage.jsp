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
			<table>
				<tr>
					<td>사용자 이름</td>
					<td><%=(String)session.getAttribute("username") %></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><%=(String)session.getAttribute("name") %></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><%=(String)session.getAttribute("email") %></td>
				</tr>
				
			</table>
			<div>
				<button type="button" class="profile-update-btn">회원 정보 수정</button>
				<button type="button" class="password-update-btn">비밀번호 변경</button>			
			</div>
		</div>
	</div>
	<script type="text/javascript">
		const profileUpdateBtn = document.querySelector(".profile-update-btn");
		const passwordUpdateBtn = document.querySelector(".password-update-btn");
		
		profileUpdateBtn.onclick = () => {
			location.href = "/JspStudy_1916/profile/update";
		}
		
		passwordUpdateBtn.onclick = () => {
			location.href = "/JspStudy_1916/profile/update/password";
		}
	</script>
</body>
</html>









