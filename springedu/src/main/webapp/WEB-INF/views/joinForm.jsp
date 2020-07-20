<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	회원가입
	<form methoed="post" action="/portfolio/join">
		<label for="id">아이디</label><input type="text" id="id" name="id" /><br>
		<label for="pw">비밀번호</label><input type="password" id="pw" name="pw" /><br>
		<label for="name">이름</label><input type="text" id="name" name="name" /><br>
		<label for="gender">성별</label><input type="radio" id="man"
			name="gender" value="남" /><label for="man">남</label> <input
			type="radio" id="women" name="gender" value="여" /><label for="women">여</label><br>
		<label for="birth">생년월일</label><input type="Date" id="id" name="birth" /><br>
		<label for="region">지역</label><select name="region" id="region">
			<option value="">== 선 택==</option>
			<option value="서울">서울</option>
			<option value="부산">부산</option>
			<option value="대구">대구</option>
			<option value="울산">울산</option>
			<option value="대전">대전</option>
		</select> <br> <label for="hobby">취미</label> <label for="hobby1">영화</label>
		<input type="checkbox" value="영화" name="hobby" id="hobby1"> <label
			for="hobby2">등산</label> <input type="checkbox" value="등산"
			name="hobby" id="hobby2"> <label for="hobby3">독서</label> <input
			type="checkbox" value="독서" name="hobby" id="hobby3"> <label
			for="hobby4">음악</label> <input type="checkbox" value="음악"
			name="hobby" id="hobby4">


		<button>가입하기</button>


	</form>
</body>
</html>