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
	반갑습니다.<br>
	이름 : ${name }|${requestScope.name }|${sessionScope.name }|${applicationScope.name }
	나이 : ${age }
	
</body>
</html>