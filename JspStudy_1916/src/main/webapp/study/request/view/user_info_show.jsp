<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	String username = request.getParameter("username");
	String phone = request.getParameter("phone");
	String email = request.getParameter("email");
	String address= request.getParameter("address");
%>
<body>
	사용자아이디: <%=username %><br>
	연락처: <%=phone %><br>
	이메일: <%=email %><br>
	주소: <%=address %>
</body>
</html>