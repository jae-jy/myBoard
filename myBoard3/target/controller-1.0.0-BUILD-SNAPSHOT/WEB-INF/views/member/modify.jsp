<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
	<title>별똥별 게시판</title>
	<link href="${path}/resources/css/registerStyle.css?after" rel="stylesheet" >
</head>
<body>

<form role="form" method="post" autocomplete="off">
	<div id="main"><img src="${path}/resources/images/별똥별.png"/></div>
        <hr>
	<div>
		<b class="name">닉네임</b><br>
		<input type="text" id="userName" name="userName" value="${member.userName}"/>
	</div>
	
	<div>
		<b class="name">새로운 비밀번호</b><br>
		<input type="password" id="userPass" name="userPass" />
	</div>
	<div>
		<button type="submit" class="sign_up">회원정보 수정</button>

		<button type="submit" class="sign_up"><a href="/">처음으로</a></button>
	</div>
	
</form>


</body>
</html>
