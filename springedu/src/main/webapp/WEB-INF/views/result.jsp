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
<form method="get" action="/portfolio/cal/result">
<input type="text" name="op1" required="required"/> +
<input type="text" name="op2" required="required"/>
<button>전송</button>
결과 : ${requestScope.result }
</form>
</body>
</html>