<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	아이디 : ${requestScope.id }
	<br> 비밀번호 : ${requestScope.pw }
	<br> 별칭 : ${requestScope.name }
	<br> 성별 : ${requestScope.gender }
	<br> 생년월일 : ${requestScope.birth }
	<br> 지역 : ${requestScope.region }
	<br> 취미 : ${requestScope.hobby }

</body>
</html>