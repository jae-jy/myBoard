<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
	<title>별똥별 게시판</title>
	<link href="${path}/resources/css/registerStyle.css?after" rel="stylesheet" >
</head>
<body>

<div id="root">


	<section id="container">
	
	<c:if test="${msg == null}">
		<form role="form" method="post" autocomplete="off">
		<div><img src="${path}/resources/images/별똥별.png"/></div>
        <hr>
			<div>
				<b class="name">글 제목</b><br><input type="text" id="userId" name="title" required/>
			</div>
			<div>
				<b class="name">글 내용</b><br><textarea rows="8" cols="50" id="content" name="content" required></textarea>
			</div>
			<div>
				<b class="name">작성자</b><br>
				<input type="text" style="text-align:center" id="userId" name="writer" value="${member.userName}" readonly="readonly" />	
			</div>
			<div> 
				<button type="submit" class="sign_up">작성</button>
				<button type="button" class="sign_up"><a href="/board/list">취소</a></button>
			</div>		
		</form>
	</c:if>
		
	<c:if test="${msg == false}">
		<p>로그인을 하셔야 글을 작성할 수 있습니다.</p>
		
		<p><button type="button" class="sign_up"><a href="/">홈으로</a></button></p>	
	</c:if>
	
	
	
	</section>


</div>

</body>
</html>
