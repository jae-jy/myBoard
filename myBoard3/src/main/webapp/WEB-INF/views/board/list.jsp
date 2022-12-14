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
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nunito:wght@800&family=Open+Sans&display=swap" rel="stylesheet">
</head>
<script>
    	function service1(){
    		let signIn = "${member.userName}";
    		if (signIn == ""){
    			alert("서비스 페이지는 로그인 후 사용하실 수 있습니다.");
    			location.href="${path}/board/list";
    		} else {
    			location.href="${path}/chart/chart2"
    		}
    	}
    	
    	function service2(){
    		let signIn = "${member.userName}";
    		if (signIn == ""){
    			alert("서비스 페이지는 로그인 후 사용하실 수 있습니다.");
    			location.href="${path}/board/list";
    		} else {
    			location.href="${path}/chart/dayChart"
    		}
    	}
    	
    	function service3(){
    		let signIn = "${member.userName}";
    		if (signIn == ""){
    			alert("서비스 페이지는 로그인 후 사용하실 수 있습니다.");
    			location.href="${path}/board/list";
    		} else {
    			location.href="${path}/board/listPage?writer=${member.userName}"
    		}
    	}
    </script>
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
                <p>내아이 지킴이&#127752;</p>
                <ul>
                    <li><a style="text-align:left" class="chButton" onclick="service1()">내아이 성장과정</a></li>
                    <li><a style="text-align:left" class="chButton" onclick="service2()">오늘의 기록</a></li>
                    <li><a style="text-align:left" class="chButton" onclick="service3()">내 글 보기</a></li>
                </ul>
            </nav>
            
            
	<section>
	

		<p><a href="/board/listSearch">엄마·아빠들의 커뮤니티 &#128106;</a></p>
		
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
	<p>메뉴&#127826;</p>
		<%@include file="include/nav.jsp" %>
	</nav>
	</div>


</div>

	<footer>
		<%@include file="include/footer.jsp" %>		
	</footer>
</body>
</html>
