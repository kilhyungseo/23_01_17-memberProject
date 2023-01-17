<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정</title>
</head>
<body>
	<h2>회원 정보 수정</h2>
	<hr>
	<form action="modifyOk.jsp">
		아이디 : <input type="text" name="userId"><br>
		비밀번호 수정: <input type="password" name="userPw">
		<input type="submit" value="비밀번호수정">
	</form>
</body>
</html>