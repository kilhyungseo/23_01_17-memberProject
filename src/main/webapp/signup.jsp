<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
	<script type="text/javascript">
		function checkFun() {
			
			var f = document.user_info;
			 
			if(f.userId.value.length == 0){
				alert('아이디는 필수 입력사항입니다.');
				return false;
			}
			
			if((f.userId.value.length < 3) || (f.userId.value.length > 15)){
				alert('아이디는 3~15자 사이로 입력하세요.');
				return false;
			}
			
			if(f.userPw.value.length < 4){
				alert('비밀번호는 4자 이상이어야 합니다.');
				return false;
			}
			
			if(f.userMail.value.length == 0){
				alert('이메일은 필수 입력사항입니다.');
				return false;
			}
			
			return true;
		}
	
	</script>
</head>
<body>
	<h2>회원가입</h2>
	<hr>
	<form action="idCheck.jsp">
		아이디 중복체크 : <input type="text" name="idCheck" autofocus="true">
		<input type="submit" value="중복체크">
	</form>
	<hr>
	<form action="insertDB.jsp" method="post" name="user_info" onsubmit="return checkFun()">
		아이디 : <input type="text" name="userId" size="16" ><br><br>
		비밀번호 : <input type="password" name="userPw" size="16" ><br><br>
		이메일 : <input type="text" name="userMail" size="30" ><br><br>
		<hr>
		<input type="submit" value="가입하기">
		<input type="reset" value="다시작성">
	
	</form>
</body>
</html>