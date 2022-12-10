<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
	<title>별똥별 게시판</title>
	<link href="${path}/resources/css/registerStyle.css?after" rel="stylesheet" >
</head>
<body>

<form role="form" method="post" autocomplete="off">
<div><img src="${path}/resources/images/별똥별.png"/></div>
        <hr>
	<div>
		<b class="name">아이디</b><br>
		<input type="text" style="text-align:center" id="userId" name="userId" value="${member.userId}" readonly="readonly"/>
	</div>
	<div>
		<p>비밀번호를 다시한번 입력해주세요.</p>
		<b class="name">비밀번호</b><br>
		<input type="password" id="userPass" name="userPass" required/>
	</div>
	<div>
		<p>정말로 탈퇴하시겠습니까?</p>
		<button type="submit" class="sign_up">회원 탈퇴</button>
		<button type="submit" class="sign_up"><a href="/">처음으로</a></button>
	</div>			
	
</form>

<c:if test="${msg == false }">
	<div>
	입력한 비밀번호가 잘못 되었습니다.
	</div>
</c:if>
</body>
</html>
