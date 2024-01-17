<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="utils.DBconfig"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 디비에 접속하고 DEPARTMENTS 테이블의 데이터 총갯수를 출력하세요. -->
	<%
	//접속관련 정보 저장
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;

	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		DBconfig.getConnection
	} catch (Exception e) {

	}

	// SQL 쿼리 실행
	try {
		String sqlQuery = "SELECT count(*) as CNT FROM DEPARTMENTS";
		statement = connection.createStatement();
		resultSet = statement.executeQuery(sqlQuery);

		while (resultSet.next()) {
			String total = resultSet.getString(1);
			out.println("<h2>총갯수: " + total + "</h2>");
		}
		
	} catch (SQLException e) {

	}
	%>

</body>
</html>