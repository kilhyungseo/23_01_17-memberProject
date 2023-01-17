<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.*"%>
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
			request.setCharacterEncoding("utf-8");
		
			String mid = request.getParameter("userId");
			String mpw = request.getParameter("userPw");
			String memail = request.getParameter("userMail");
			
			String driverName = "com.mysql.cj.jdbc.Driver";
			String url = "jdbc:mysql://localhost:3306/webdb";
			String username = "root";
			String password = "1234";
			
//			System.out.println(mid);
//			System.out.println(mpw);
//			System.out.println(mname);
//			System.out.println(memail);
			
			String sql = "INSERT INTO join_member(id, passwd, email) VALUES ('"+mid+"', '"+mpw+"', '"+memail+"')";
			
			Connection conn = null;//DB 연결 선언
			try {
				Class.forName(driverName);//드라이버 불러오기	
				conn = DriverManager.getConnection(url, username, password);//DB 연동
				Statement stmt = conn.createStatement(); //Statement 사용
				
				int dbCheck = stmt.executeUpdate(sql);
				
				if(dbCheck == 1){
					
					response.sendRedirect("signupSuccess.jsp");
				}else{
					response.sendRedirect("signup.jsp");
				}
				
				stmt.close();
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