<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test1</title>
</head>
<body>
	<h1>Test1</h1>
	
	<!-- <form action="result" method="post">
		이름 : <input type="text" name="user_name" /><br>
		아이디 : <input type="text" name="user_id" /><br>
		비밀번호 : <input type="password" name="user_pw" /><br>
		전화번호 : <input type="text" name="user_tel" /><br>
		주소 : <input type="text" name="user_address" /><br>
		<button type="submit">확인</button>
	</form> -->
	
	<form action="result" method="post">
		이름 : <input type="text" name="user_name"  value="${requestScope.userDataBean.user_name }"/><br>
		아이디 : <input type="text" name="user_id" value="${requestScope.userDataBean.user_id }"/><br>
		비밀번호 : <input type="password" name="user_pw" value="${requestScope.userDataBean.user_pw }"/><br>
		전화번호 : <input type="text" name="user_tel" value="${requestScope.userDataBean.user_tel }"/><br>
		주소 : <input type="text" name="user_address" value="${requestScope.userDataBean.user_address }"/><br>
		<button type="submit">확인</button>
	</form> 
	
	
</body>
</html>