<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 전용 공간</title>
</head>
<body>
	<p>회원 전용 공간</p>
	<hr>
	여기는 회원전용 공간입니다.<br>
	회원을 탈퇴하려면 버튼을 눌러주세요<br><br>
		
		<table>
			<tr>
				<td>
					<form action="main.jsp">
						<input type="submit" value="◀ 메인 화면">
					</form>
				</td>
				<td>
					<form action="withDraw.jsp">
						<input type="submit" value="회원 탈퇴하기 ▶">
					</form>
				</td>
			</tr>
		</table>
</body>
</html>