<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="/portfolio/gugudan">
<label for="dansu">단을 입력하세요.</label>
<input type="text" name="dansu" id="dansu" />
<button>확인</button>
<br>
${requestScope.dansu }단
<br>
<c:set var="dansu" value="3" scope="page"/>
<c:remove var="dansu" scope="page"/>
<c:forEach var="i" begin="1" end="9">
<c:if test="${pageScope.i%2 ==0}">
<p>${dansu } *${pageScope.i } = ${dansu * pageScope.i }</p>
</c:if>
<c:if test="${!pageScope.i%2 ==0}">
<p>${dansu } *${pageScope.i } = ${dansu * pageScope.i }</p>
</c:if>
</c:forEach>
</form>
</body>
</html>