<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
	<title>별똥별 게시판</title>
	<link href="${path}/resources/css/registerStyle.css?after" rel="stylesheet" >
	<script src='https://code.jquery.com/jquery-3.3.1.min.js'></script>
</head>
<body>

<form role="form" method="post" autocomplete="off">
	<div id="main"><img src="${path}/resources/images/별똥별.png"/></div>
        <hr>
	<div id="fir_div">
		<b class="name" style="position:absolute; left:610px">새로운 닉네임</b><br>
		<input type="text" id="userName" name="userName" value="${member.userName}" required/>
		<button class="nameChk" type="button">중복확인</button>
	</div>
		<div class="result2">
		<span class="msg2">닉네임을 확인해주십시오.</span>
		</div>
	
	<div>
		<b class="name">새로운 비밀번호</b><br>
		<input type="password" id="userPass" name="userPass" required/>
	</div>
	<div>
		<button type="submit" class="sign_up" id="submit" disabled="disabled">회원정보 수정</button>

		<button type="submit" class="sign_up"><a href="/">처음으로</a></button>
	</div>
	
</form>

<script>
$(".nameChk").click(function(){
	 
	 var query = {userName : $("#userName").val()};
	 
	 $.ajax({
	  url : "/member/nameChk",
	  type : "post",
	  data : query,
	  success : function(data) {
	  
	   if(data == 1) {
	    $(".result2 .msg2").text("닉네임 사용 불가");
	    $(".result2 .msg2").attr("style", "color:#f00"); 
	    
	    $("#submit").attr("disabled", "disabled");
	   } else {
	    $(".result2 .msg2").text("닉네임 사용 가능");
	    $(".result2 .msg2").attr("style", "color:#00f");
	    
	    $("#submit").removeAttr("disabled");
	   }
	  }
	 });  // ajax 끝
	});

	$("#userName").keyup(function(){
		 $(".result2 .msg2").text("닉네임을 확인해주십시오.");
		 $(".result2 .msg2").attr("style", "color:#f00");
		 
		 $("#submit").attr("disabled", "disabled");
		 
		});
</script>
</body>
</html>
