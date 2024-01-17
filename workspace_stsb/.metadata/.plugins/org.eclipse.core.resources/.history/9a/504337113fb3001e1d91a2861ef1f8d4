<%@page import="java.sql.SQLException"%>
<%@page import="utils.DBconfig"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
	String departmentId = request.getParameter("departmentId");
	String departmentName = request.getParameter("departmentName");
	String location = request.getParameter("location");
	String contact = request.getParameter("contact");
	
	//오라클 DB와 접속
	Connection connection = null;
	PreparedStatement pstmt = null;
	
	// 접속하기
	try {
		// connection = DriverManager.getConnection(JDBC_URL, USER, PASSWORD);
		connection = DBconfig.getConnection();
		out.println("jsp계정 접속성공");
	} catch (Exception e) {
		out.println("jsp계정 접속실패");
	}

	// 폼 정보에서 받은 변수를 empid, name, email, contact 값
	try { // sql 문을 실행할 때 발생할 수 있는 예외들을 처리하기 위한 구문
		String sql = "INSERT INTO DEPARTMENTS (DEPART_ID, DEPART_NAME, LOCATION, PHONE_NUMBER) VALUES(?, ?, ?, ?)";
		pstmt = connection.prepareStatement(sql);
		pstmt.setString(1, departmentId);
		pstmt.setString(2, departmentName);
		pstmt.setString(3, location);
		pstmt.setString(4, contact);
		
		int result = pstmt.executeUpdate();
		out.println("데이터 입력결과 : " + result);
	} catch(SQLException se) {
		
	}

%>
	<h1>부서정보처리</h1>
	<p>부서번호 : <%= departmentId %></p>
	<p>부서명 : <%= departmentName %></p>
	<p>지역 : <%= location %></p>
	<p>연락처 : <%= contact %></p>

</body>
</html>