<%@page import="java.util.ArrayList"%>
<%@page import="vo.EmpVo"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
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
<style type="text/css">
/* 직원 목록 */
   body {
      font-family: Arial, sans-serif;
      background-color: #f2f2f2;
      margin: 0;
      padding: 0;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
   }
   .employee-list {
      background-color: #fff;
      padding: 20px;
      border-radius: 5px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
   }

   table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 20px;
   }

   th, td {
      border: 1px solid #ddd;
      padding: 10px;
      text-align: left;
   }

   th {
      background-color: #3498db;
      color: #fff;
   }
</style>
</head>
<body>

<%
	//오라클 DB와 접속
	Connection connection = null;
	
	// 접속하기
	try {
		// connection = DriverManager.getConnection(JDBC_URL, USER, PASSWORD);
		connection = DBconfig.getConnection();
	} catch (Exception e) {
		out.println("jsp계정 접속실패");
	}
	
	// 직원정보 목록을 가져오는 쿼리 실행
	PreparedStatement pstmt = null;
	ResultSet rs = null;	// select 된 결과를 저장하는 배열
	ArrayList<EmpVo> emplist = new ArrayList<>(); // 상단에 page import
	
	int count = 0;
	try {
		String sql = "SELECT EMPLOYEE_ID, LAST_NAME, JOB_ID, PHONE_NUMBER FROM EMPLOYEES";
		pstmt = connection.prepareStatement(sql);
		rs = pstmt.executeQuery();
		while(rs.next()){
			EmpVo empVo = new EmpVo(); // @page import="vo.*"
			empVo.setEmployee_id(rs.getString("EMPLOYEE_ID"));
			empVo.setLast_name(rs.getString("LAST_NAME"));
			empVo.setJob_id(rs.getString("JOB_ID"));
			empVo.setPhone_number(rs.getString("PHONE_NUMBER"));
		
			emplist.add(empVo);
			
		}
		out.println("총갯수: " + emplist.size());
		
	} catch(SQLException se){
		System.out.println("에러로그 : 직원목록 ==>" + se.getMessage());
	}
	
%>
 <div class="employee-list">
        <h2>직원 목록</h2>
        <button onclick="handleAddButtonClick()">직원 등록</button> <!-- 등록 버튼 추가 -->
        <table>
            <thead>
            <tr>
            <th>사원번호</th>
                <th>이름</th>
                <th>직급</th>
                <th>연락처</th>
                <th>동작</th> <!-- 새로운 열 추가 -->
                
            </tr>
            </thead>
            <tbody>
            
            <%
            	for(int i=0;i<emplist.size();i++){	// Vo에 담긴 정보들을 가져온다.
            		EmpVo temp = emplist.get(i); // Vo에 담긴 한 정보를 가져온다.
            %>
            <tr>
            	<td><%= temp.getEmployee_id() %></td>
                <td><%= temp.getLast_name() %></td>
                <td><%= temp.getJob_id() %></td>
                <td><%= temp.getPhone_number() %></td>
                <td><button onclick="handleButtonClick(0)">수정 처리</button> <!-- 버튼 추가 -->
                <button onclick="handleButtonClick(0)">삭제 처리</button><!-- 버튼 추가 -->
                
                </td> <!-- 상세보기 버튼 추가 -->
            </tr>
           <% 
           		} 
           %>
            <!-- 다른 직원들의 정보도 추가할 수 있습니다. -->
            </tbody>
        </table>
    </div>

<script>
      function handleAddButtonClick() {
           location.href="empform.jsp";
       }
</script>
</body>
</html>