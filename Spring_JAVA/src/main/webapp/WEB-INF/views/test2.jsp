<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test2</title>
</head>
<body>
	<h1>Test2</h1>
	
	
	<form:form action="result" method="post" modelAttribute="userDataBean">
		이름 : <form:input path="user_name"/><br>
		아이디 : <form:input path="user_id"/><br>
		비밀번호 : <form:password path="user_pw" showPassword="true"/><br>
		전화번호 : <form:input path="user_tel"/><br>
		주소 : <form:input path="user_address"/><br>
		<button type="submit">확인</button>
	</form:form> 
	
</body>
</html>

<!-- showPassword="true" : form:form에서는 password타입은 노출되지 않으므로 비밀번호 타입 노출 -->

