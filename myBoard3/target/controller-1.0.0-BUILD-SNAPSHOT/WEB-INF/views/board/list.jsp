<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
	<title>별똥별 게시판</title>
	
	<link href="${path}/resources/css/listStyle.css?after" rel="stylesheet" >
	
<meta name="viewport" content="width=device-width, initial-scale=1">

<script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script>
	<script type="text/javascript" async="" src="https://www.googletagmanager.com/gtag/js?id=UA-154128423-1&amp;l=dataLayer&amp;cx=c"></script>
	<script async="" src="https://www.googletagmanager.com/gtm.js?id=GTM-MWRTFRM"></script>

</head>
<body>
<c:if test="${member != null}">
<form>
<div id="wel"align="right">${member.userName}님 환영합니다! <button type="submit"><a href="/member/logout"> 로그아웃</a></button></div>

	</form>
</c:if>
<div id="root">
	<header>
		<%@include file="include/header.jsp" %>
		
	</header>
	<!--네비게이션-->
            <div id = "board1">
            <nav>
                <p>내아이 지킴이</p>
                <ul>
                    <li><a href="/chart/chart2?userId=${member.userName}">내아이 성장과정</a></li>
                    <li><a href="http://www.google.com">내아이 사진보기</a></li>
                    <li><a href="https://www.google.com">오늘의 기록</a></li>
                    <li><a href="/board/listPage?writer=${member.userName}">내글 보기</a></li>
                </ul>
            </nav>
            
            
	<section>
	

		<p><a href="/board/listSearch">엄마·아빠들의 커뮤니티</a></p>
		
		<table>
			<tr><th>글 번호</th><th>글 제목</th><th>작성자</th><th>작성일자</th></tr>	
			<!-- 목록 시작 -->
			<c:forEach items="${list}" var="list">
			<tr>
				<td>${list.bno}</td>
				<td><a href="/board/read?bno=${list.bno}">${list.title}</a></td>
				<td>${list.writer}</td>
				<td><fmt:formatDate value="${list.regDate}" pattern="yyyy-MM-dd" /></td>
			</tr>
			</c:forEach>
			<!-- 목록 끝 -->
		</table>
	</section>
	
	
	<nav>
	<p>메뉴</p>
		<%@include file="include/nav.jsp" %>
	</nav>
	</div>


</div>

	<footer>
		<%@include file="include/footer.jsp" %>		
	</footer>
</body>
</html>
