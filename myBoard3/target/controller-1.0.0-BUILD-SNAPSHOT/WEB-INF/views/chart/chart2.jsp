<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html>
<head>
	<link href="${path}/resources/css/registerStyle.css?after" rel="stylesheet" >
<!-- 구글 차트를 호출하기 위한 js 파일 라이브러리 -->
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<title>별똥별 게시판</title>
<script type="text/javascript">
//구글 차트 라이브러리 로딩
google.load("visualization", "1",{
	"packages":["corechart"]
});

//Callback : 구글 차트 로딩이 완료가 된 후에 drawChar라는 함수를 실행(파라미터는 없음)
//responseText : json 데이터를 텍스트로 읽어들임
//JSON.stringify(j/s객체) : javascript 객체를 json 데이터를 읽어들임
google.setOnLoadCallback(drawChart);

function drawChart(){
	var jsonData = $.ajax({
		url:"/chart/chart_json",
		dataType:"json",
		async:false
	}).responseText;
	
	console.log("jsonData : " + jsonData);
	
	//차트객체.draw(데이터테이블, 옵션)
	var data = new google.visualization.DataTable(jsonData);
 	var chart = new google.visualization.LineChart(document.getElementById("chart_div"))
// 	var chart = new google.visualization.PieChart(document.getElementById("chart_div"));
//	var chart = new google.visualization.ColumnChart(document.getElementById("chart_div"));
	
	chart.draw(data,{
		title:"상품 별 판매 금액 합계 차트",
		curveType:"function",
		width:600,
		height:440
	});
	
}
</script>
</head>
<body>
<div id="root">
<c:if test="${msg == null}">
	<form role="form" method="post" autocomplete="off">
		<div>
			<b class="name">작성자</b><br>
			<input type="text" style="text-align:center" id="userId" name="writer" value="${member.userName}" readonly="readonly" />	
		</div>
    	<!-- 차트 출력 영역 -->
    	<div id="chart_div"></div>
    	<!-- 차트가 그려지는 영역 -->
    	<!-- 차트 새로고침 버튼 -->
    	<div><button class="sign_up" id="btn" type="button" onclick="drawChart()">refresh</button></div>
    </form>
</c:if>
<c:if test="${msg == false}">
		<p>로그인을 하셔야 사용할 수 있습니다.</p>
		
		<p><button class="sign_up" type="button" class="sign_up"><a href="/">홈으로</a></button></p>	
</c:if>
</div>

</body>
</html>