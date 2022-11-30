<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
	<title>별똥별 게시판</title>
	<link href="${path}/resources/css/registerStyle.css?after" rel="stylesheet" >
	
	<!-- 제이쿼리 -->
	<script src='https://code.jquery.com/jquery-3.3.1.min.js'></script>
	
</head>
<body>

<div id="root">


	<section id="container">
		<form role="form" method="post" autocomplete="off">
		
		<div><img src="${path}/resources/images/별똥별.png"/></div>
        <hr>		
			<div>
				<b class="name">글 번호</b><br>
				<input type="text" style="text-align:center" id="userName"  name="bno" value="${delete}" readonly="readonly" />
				
			</div>
			<p>정말로 삭제하시겠습니까?</p>
			<div>
				<button type="submit" class="sign_up">예, 삭제합니다.</button><br />
				<div> </div>
				<button type="button" id="cancel_btn" class="sign_up">아니오, 삭제하지 않습니다.</button>

				<script>
				// 폼을 변수에 저장
				var formObj = $("form[role='form']");  
				
				// 취소 버튼 클릭
				$("#cancel_btn").click(function(){
					
					self.location = "/board/read?bno=${delete}"
						+ "&page=${scri.page}"
						+ "&perPageNum=${scri.perPageNum}"
						+ "&searchType=${scri.searchType}"
						+ "&keyword=${scri.keyword}";						
				});
				</script>
			</div>
		</form>
	</section>

	<footer>
		<%@include file="include/footer.jsp" %>	
	</footer>
</div>
</body>
</html>








