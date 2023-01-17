<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>업데이트 ok</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	
		String userId =request.getParameter("userId");
		String userPw = request.getParameter("userPw");
		
		String sql = "UPDATE join_member SET passwd=? WHERE id=?";
		//String sql = "UPDATE join_member SET passwd='"+userPw+"' WHERE id='"+userId+"'";
		
		String driverName = "com.mysql.cj.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/webdb";
		String username = "root";
		String password = "1234";
		
		PreparedStatement pstmt;
		Connection conn = null;//DB 연결 선언
		try {
			Class.forName(driverName);//드라이버 불러오기	
			conn = DriverManager.getConnection(url, username, password);//DB 연동
			//Statement stmt = conn.createStatement(); //Statement 사용
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userPw);
			pstmt.setString(2, userId);

			int dbCheck = pstmt.executeUpdate();
			
			if(dbCheck == 1){
				out.println("수정이 완료되었습니다.");
				//response.sendRedirect("signupSuccess.jsp");
			}else{
				//response.sendRedirect("signup.jsp");
				out.print("수정이 실패하였습니다.");
			}
			
			pstmt.close();
			//stmt.close();
			//System.out.println(conn);
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(conn != null) {
					conn.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
	
	
	%>
</body>
</html>