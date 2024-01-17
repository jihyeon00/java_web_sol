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
		// 1 라이브러리 드라이버를 호출
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
		   	out.println("라이브러리 로드성공");
		}catch(Exception e){
		   	out.println("라이브러리 로드실패");
		}
   %>
</body>
</html>