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
				<input type="text"  style="text-align:center" id="userId" name="bno" value="${modify.bno}" readonly="readonly" />
			</div>
			
			<div>
				<b class="name">글 제목</b><br>
				<input type="text" id="userId" name="title" value="${modify.title}" />
			</div>
			<div>
				<b class="name">글 내용</b><br>
				<textarea rows="6" cols="50" id="content" name="content" >${modify.content}</textarea>
			</div>
			<div>
				<b class="name">작성자</b><br>
				<input type="text"  style="text-align:center" id="userId" name="writer" value="${modify.writer}" readonly="readonly"/><br />
				</div>
				<div id="bottom">
				<label>작성 날짜</label>
				<span><fmt:formatDate value="${modify.regDate}" pattern="yyyy-MM-dd" /></span>
			</div>
			<div>
				<button type="submit" class="sign_up">수정</button>
				<button type="button" id="cancel_btn" class="sign_up">취소</button>
			</div>	
				<script>
				// 폼을 변수에 저장
				var formObj = $("form[role='form']");  
				
				// 취소 버튼 클릭
				$("#cancel_btn").click(function(){			
self.location = "/board/read?bno=${modify.bno}"
			+ "&page=${scri.page}"
			+ "&perPageNum=${scri.perPageNum}"
			+ "&searchType=${scri.searchType}"
			+ "&keyword=${scri.keyword}";
					
				});
				</script>
			</p>	
			
		</form>

	</section>

	<footer>
		<%@include file="include/footer.jsp" %>		
	</footer>

</div>

</body>
</html>






