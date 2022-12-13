<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html>
<head>
	<link href="${path}/resources/css/registerStyle.css?ver" rel="stylesheet" >
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
//	var jsonData = $.ajax({
//		type : "GET",
//		url:"/chart/chart_json?userId=${member.userName}",
//		//url: "/resources/json/sampleData.json",
//		dataType:"json",
//		async:false,
//	}).responseText;
	

	var jsonData = ${jo}
	
	console.log("jsonData : " + jsonData);

	
	//차트객체.draw(데이터테이블, 옵션)
	var data = new google.visualization.DataTable(jsonData);
 	var chart = new google.visualization.LineChart(document.getElementById("chart_div"))
// 	var chart = new google.visualization.PieChart(document.getElementById("chart_div"));
//	var chart = new google.visualization.ColumnChart(document.getElementById("chart_div"));
	
//	var today = new Date();
//	var today2 = dateFormat(today)
//	var str1 = today2.toString();
	
	chart.draw(data,{
		title: new Date() +" "+ "감정 별 정확률 차트",
	//	curveType:"function",
		height:440
	});
	
}
</script>
</head>
<body>
<div id="root">
<section id="container">

	<form role="form" method="post" autocomplete="off">
		<div>
			<b class="name">사용자</b><br>
			<input type="text" style="text-align:center" id="userId" name="writer" value="${member.userName}" readonly="readonly" />	
		</div>
    	<!-- 차트 출력 영역 -->
    	<div id="chart_div"></div>
    	<!-- 차트가 그려지는 영역 -->

    </form>

</section>
</div>

</body>
</html>