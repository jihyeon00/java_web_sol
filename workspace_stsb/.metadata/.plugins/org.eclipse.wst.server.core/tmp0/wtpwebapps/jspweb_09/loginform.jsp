<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %> <!-- 에디터 버그 때문에 임시 작성한 코드 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="login-container">
    <h2>Login</h2>
    <form class="login-form">
        <input type="text" id="employeeId" placeholder="사원번호" required>
        <input type="password" id="password" placeholder="비밀번호" required>
        <button type="button" onclick="login()">로그인</button>
    </form>
</div>
</body>
</html>