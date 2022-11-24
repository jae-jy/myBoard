<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html><head>
    <meta charset="utf-8">
    <title>Line_Controls_Chart</title>

    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery.min.js"></script>
    <!-- google charts -->
	   <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  <script type="text/javascript" charset="UTF-8" src="https://www.gstatic.com/charts/51/loader.js"></script><link id="load-css-0" rel="stylesheet" type="text/css" href="https://www.gstatic.com/charts/51/css/core/tooltip.css"><link id="load-css-1" rel="stylesheet" type="text/css" href="https://www.gstatic.com/charts/51/css/util/util.css"><link id="load-css-2" rel="stylesheet" type="text/css" href="https://www.gstatic.com/charts/51/css/controls/controls.css"><script type="text/javascript" charset="UTF-8" src="https://www.gstatic.com/charts/51/js/jsapi_compiled_default_module.js"></script><script type="text/javascript" charset="UTF-8" src="https://www.gstatic.com/charts/51/js/jsapi_compiled_graphics_module.js"></script><script type="text/javascript" charset="UTF-8" src="https://www.gstatic.com/charts/51/js/jsapi_compiled_ui_module.js"></script><script type="text/javascript" charset="UTF-8" src="https://www.gstatic.com/charts/51/js/jsapi_compiled_fw_module.js"></script><script type="text/javascript" charset="UTF-8" src="https://www.gstatic.com/charts/51/third_party/dygraphs/dygraph-tickers-combined.js"></script><script type="text/javascript" charset="UTF-8" src="https://www.gstatic.com/charts/51/third_party/webfontloader/webfont.js"></script><script type="text/javascript" charset="UTF-8" src="https://www.gstatic.com/charts/51/js/jsapi_compiled_line_module.js"></script><script type="text/javascript" charset="UTF-8" src="https://www.gstatic.com/charts/51/js/jsapi_compiled_controls_module.js"></script><script type="text/javascript" charset="UTF-8" src="https://www.gstatic.com/charts/51/js/jsapi_compiled_corechart_module.js"></script></head>
  <body>

    <h4>사이트 방문자 성별 현황 그래프</h4>

    <div id="Line_Controls_Chart"><div id="google-visualization-errors-all-3" style="display: block; padding-top: 2px;"><div id="google-visualization-errors-21" style="font: 0.8em arial, sans-serif; margin-bottom: 5px;"><span style="background-color: rgb(192, 0, 0); color: white; padding: 2px;">One or more participants failed to draw()<span style="font-size: 1.1em; font-weight: bold; cursor: pointer; padding-left: 10px; color: black; text-align: right; vertical-align: top;">×</span></span></div><div id="google-visualization-errors-24" style="font: 0.8em arial, sans-serif; margin-bottom: 5px;"><span style="background-color: rgb(192, 0, 0); color: white; padding: 2px;">One or more participants failed to draw()<span style="font-size: 1.1em; font-weight: bold; cursor: pointer; padding-left: 10px; color: black; text-align: right; vertical-align: top;">×</span></span></div><div id="google-visualization-errors-27" style="font: 0.8em arial, sans-serif; margin-bottom: 5px;"><span style="background-color: rgb(192, 0, 0); color: white; padding: 2px;">One or more participants failed to draw()<span style="font-size: 1.1em; font-weight: bold; cursor: pointer; padding-left: 10px; color: black; text-align: right; vertical-align: top;">×</span></span></div><div id="google-visualization-errors-30" style="font: 0.8em arial, sans-serif; margin-bottom: 5px;"><span style="background-color: rgb(192, 0, 0); color: white; padding: 2px;">One or more participants failed to draw()<span style="font-size: 1.1em; font-weight: bold; cursor: pointer; padding-left: 10px; color: black; text-align: right; vertical-align: top;">×</span></span></div><div id="google-visualization-errors-33" style="font: 0.8em arial, sans-serif; margin-bottom: 5px;"><span style="background-color: rgb(192, 0, 0); color: white; padding: 2px;">One or more participants failed to draw()<span style="font-size: 1.1em; font-weight: bold; cursor: pointer; padding-left: 10px; color: black; text-align: right; vertical-align: top;">×</span></span></div><div id="google-visualization-errors-36" style="font: 0.8em arial, sans-serif; margin-bottom: 5px;"><span style="background-color: rgb(192, 0, 0); color: white; padding: 2px;">One or more participants failed to draw()<span style="font-size: 1.1em; font-weight: bold; cursor: pointer; padding-left: 10px; color: black; text-align: right; vertical-align: top;">×</span></span></div></div>
      <!-- 라인 차트 생성할 영역 -->
  		<div id="lineChartArea" style="padding:0px 20px 0px 0px;"><div id="google-visualization-errors-all-35" style="display: block; padding-top: 2px;"><div id="google-visualization-errors-34" style="font: 0.8em arial, sans-serif; margin-bottom: 5px;"><span style="background-color: rgb(192, 0, 0); color: white; padding: 2px;">Cannot read properties of undefined (reading 'Do')<span style="font-size: 1.1em; font-weight: bold; cursor: pointer; padding-left: 10px; color: black; text-align: right; vertical-align: top;">×</span></span></div></div><div style="position: relative;"><div dir="ltr" style="position: relative; width: 975px; height: 500px;"><div style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%;"></div></div><div aria-hidden="true" style="display: none; position: absolute; top: 510px; left: 985px; white-space: nowrap; font-family: Arial; font-size: 13px;">전체</div><div></div></div></div>
      <!-- 컨트롤바를 생성할 영역 -->
  		<div id="controlsArea" style="padding:0px 20px 0px 0px;"><div style="position: relative;"><div dir="ltr" style="position: relative; width: 975px; height: 200px;"><div aria-label="A chart." style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%;"><svg width="975" height="200" aria-label="A chart." style="overflow: hidden;"><defs id="_ABSTRACT_RENDERER_ID_33"><clipPath id="_ABSTRACT_RENDERER_ID_34"><rect x="195" y="0" width="585" height="80"></rect></clipPath></defs><rect x="0" y="0" width="975" height="200" stroke="none" stroke-width="0" fill="#ffffff"></rect><g><rect x="195" y="0" width="585" height="80" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g clip-path="url(file:///C:/Users/jaehyun/AppData/Local/Temp/Temp1_GoogleChart%20(1).zip/GoogleChart/line_controls_chart.html#_ABSTRACT_RENDERER_ID_34)"><g><rect x="207" y="75" width="1" height="5" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="227" y="0" width="1" height="80" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="227" y="75" width="1" height="5" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="247" y="75" width="1" height="5" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="267" y="75" width="1" height="5" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="287" y="75" width="1" height="5" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="307" y="75" width="1" height="5" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="328" y="75" width="1" height="5" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="348" y="75" width="1" height="5" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="368" y="0" width="1" height="80" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="368" y="75" width="1" height="5" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="388" y="75" width="1" height="5" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="408" y="75" width="1" height="5" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="428" y="75" width="1" height="5" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="448" y="75" width="1" height="5" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="469" y="75" width="1" height="5" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="489" y="75" width="1" height="5" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="509" y="0" width="1" height="80" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="509" y="75" width="1" height="5" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="529" y="75" width="1" height="5" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="549" y="75" width="1" height="5" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="569" y="75" width="1" height="5" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="589" y="75" width="1" height="5" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="610" y="75" width="1" height="5" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="630" y="75" width="1" height="5" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="650" y="0" width="1" height="80" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="650" y="75" width="1" height="5" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="670" y="75" width="1" height="5" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="690" y="75" width="1" height="5" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="710" y="75" width="1" height="5" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="730" y="75" width="1" height="5" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="750" y="75" width="1" height="5" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="771" y="75" width="1" height="5" stroke="none" stroke-width="0" fill="#cccccc"></rect></g><g><rect x="195" y="79" width="585" height="1" stroke="none" stroke-width="0" fill="#333333"></rect></g><g><path d="M195.5,69.70400000000001L215.63793103448276,64.648L235.77586206896552,65.438L255.91379310344828,67.65L276.05172413793105,59.592L296.1896551724138,71.6L316.32758620689657,72.864L336.4655172413793,79.342L356.6034482758621,75.708L376.7413793103448,78.394L396.87931034482756,62.278L417.01724137931035,58.328L437.15517241379314,78.236L457.2931034482759,77.288L477.4310344827586,79.184L497.5689655172414,74.602L517.7068965517242,78.236L537.844827586207,78.552L557.9827586206897,76.814L578.1206896551723,75.708L598.2586206896551,78.71L618.3965517241379,64.016L638.5344827586207,76.34L658.6724137931035,72.706L678.8103448275863,69.862L698.948275862069,55.8L719.0862068965517,79.184L739.2241379310345,72.232L759.3620689655172,49.164L779.5,79.026" stroke="#3366cc" stroke-width="2" fill-opacity="1" fill="none"></path><path d="M195.5,77.92L215.63793103448276,49.006L235.77586206896552,69.388L255.91379310344828,71.6L276.05172413793105,55.168L296.1896551724138,68.124L316.32758620689657,65.438L336.4655172413793,79.5L356.6034482758621,75.708L376.7413793103448,72.864L396.87931034482756,66.228L417.01724137931035,75.55L437.15517241379314,74.76L457.2931034482759,72.548L477.4310344827586,71.6L497.5689655172414,60.54L517.7068965517242,79.184L537.844827586207,58.644L557.9827586206897,77.92L578.1206896551723,79.184L598.2586206896551,77.92L618.3965517241379,58.012L638.5344827586207,79.5L658.6724137931035,77.288L678.8103448275863,61.013999999999996L698.948275862069,58.486000000000004L719.0862068965517,64.174L739.2241379310345,41.896L759.3620689655172,70.81L779.5,57.854" stroke="#dc3912" stroke-width="2" fill-opacity="1" fill="none"></path><path d="M195.5,68.124L215.63793103448276,34.153999999999996L235.77586206896552,55.326L255.91379310344828,59.75L276.05172413793105,35.26L296.1896551724138,60.224000000000004L316.32758620689657,58.802L336.4655172413793,79.342L356.6034482758621,71.916L376.7413793103448,71.758L396.87931034482756,49.006L417.01724137931035,54.378L437.15517241379314,73.496L457.2931034482759,70.336L477.4310344827586,71.284L497.5689655172414,55.641999999999996L517.7068965517242,77.92L537.844827586207,57.696L557.9827586206897,75.234L578.1206896551723,75.392L598.2586206896551,77.13L618.3965517241379,42.528L638.5344827586207,76.34L658.6724137931035,70.494L678.8103448275863,51.376000000000005L698.948275862069,34.786L719.0862068965517,63.858000000000004L739.2241379310345,34.628L759.3620689655172,40.474L779.5,57.379999999999995" stroke="#ff9900" stroke-width="2" fill-opacity="1" fill="none"></path></g></g><g></g><g><g><g><text text-anchor="end" x="364.35057471264366" y="74.2" font-family="Arial" font-size="12" stroke="#ffffff" stroke-width="3" fill="#444444" aria-hidden="true">2017년10월09일</text><text text-anchor="end" x="364.35057471264366" y="74.2" font-family="Arial" font-size="12" stroke="none" stroke-width="0" fill="#444444">2017년10월09일</text></g></g><g><g><text text-anchor="end" x="505.31609195402297" y="74.2" font-family="Arial" font-size="12" stroke="#ffffff" stroke-width="3" fill="#444444" aria-hidden="true">2017년10월16일</text><text text-anchor="end" x="505.31609195402297" y="74.2" font-family="Arial" font-size="12" stroke="none" stroke-width="0" fill="#444444">2017년10월16일</text></g></g><g><g><text text-anchor="end" x="646.2816091954023" y="74.2" font-family="Arial" font-size="12" stroke="#ffffff" stroke-width="3" fill="#444444" aria-hidden="true">2017년10월23일</text><text text-anchor="end" x="646.2816091954023" y="74.2" font-family="Arial" font-size="12" stroke="none" stroke-width="0" fill="#444444">2017년10월23일</text></g></g></g></g><g></g></svg><div aria-label="A tabular representation of the data in the chart." style="position: absolute; left: -10000px; top: auto; width: 1px; height: 1px; overflow: hidden;"><table><thead><tr><th>날짜</th><th>남성</th><th>여성</th><th>전체</th></tr></thead><tbody><tr><td>2017년09월30일</td><td>62</td><td>10</td><td>72</td></tr><tr><td>2017년10월01일</td><td>94</td><td>193</td><td>287</td></tr><tr><td>2017년10월02일</td><td>89</td><td>64</td><td>153</td></tr><tr><td>2017년10월03일</td><td>75</td><td>50</td><td>125</td></tr><tr><td>2017년10월04일</td><td>126</td><td>154</td><td>280</td></tr><tr><td>2017년10월05일</td><td>50</td><td>72</td><td>122</td></tr><tr><td>2017년10월06일</td><td>42</td><td>89</td><td>131</td></tr><tr><td>2017년10월07일</td><td>1</td><td>0</td><td>1</td></tr><tr><td>2017년10월08일</td><td>24</td><td>24</td><td>48</td></tr><tr><td>2017년10월09일</td><td>7</td><td>42</td><td>49</td></tr><tr><td>2017년10월10일</td><td>109</td><td>84</td><td>193</td></tr><tr><td>2017년10월11일</td><td>134</td><td>25</td><td>159</td></tr><tr><td>2017년10월12일</td><td>8</td><td>30</td><td>38</td></tr><tr><td>2017년10월13일</td><td>14</td><td>44</td><td>58</td></tr><tr><td>2017년10월14일</td><td>2</td><td>50</td><td>52</td></tr><tr><td>2017년10월15일</td><td>31</td><td>120</td><td>151</td></tr><tr><td>2017년10월16일</td><td>8</td><td>2</td><td>10</td></tr><tr><td>2017년10월17일</td><td>6</td><td>132</td><td>138</td></tr><tr><td>2017년10월18일</td><td>17</td><td>10</td><td>27</td></tr><tr><td>2017년10월19일</td><td>24</td><td>2</td><td>26</td></tr><tr><td>2017년10월20일</td><td>5</td><td>10</td><td>15</td></tr><tr><td>2017년10월21일</td><td>98</td><td>136</td><td>234</td></tr><tr><td>2017년10월22일</td><td>20</td><td>0</td><td>20</td></tr><tr><td>2017년10월23일</td><td>43</td><td>14</td><td>57</td></tr><tr><td>2017년10월24일</td><td>61</td><td>117</td><td>178</td></tr><tr><td>2017년10월25일</td><td>150</td><td>133</td><td>283</td></tr><tr><td>2017년10월26일</td><td>2</td><td>97</td><td>99</td></tr><tr><td>2017년10월27일</td><td>46</td><td>238</td><td>284</td></tr><tr><td>2017년10월28일</td><td>192</td><td>55</td><td>247</td></tr><tr><td>2017년10월29일</td><td>3</td><td>137</td><td>140</td></tr></tbody></table></div></div><div style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%;"><svg width="975" height="200" aria-label="A chart." style="overflow: hidden;"><defs id="_ABSTRACT_RENDERER_ID_35"></defs><g><rect x="0" y="0" width="975" height="200" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff" style="cursor: default;"></rect><rect x="195" y="0" width="585" height="80" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff" style="cursor: default;"></rect><rect x="195" y="0" width="0.5" height="80" stroke="none" stroke-width="0" fill-opacity="0.5" fill="#cccccc"></rect><rect x="779.7914170721583" y="0" width="0.20858292784168952" height="80" stroke="none" stroke-width="0" fill-opacity="0.5" fill="#cccccc"></rect><g transform="translate(190.5, 0)"><path d="M5,0L5,80Z" stroke="#000000" stroke-width="1" fill="#ffffff"></path><path d="M3,32L7,32L10,35L10,45L7,48L3,48L0,45L0,35Z" stroke="#000000" stroke-width="1" fill="#ffffff"></path><path d="M4,36L4,44Z" stroke="#000000" stroke-width="1" fill="#ffffff"></path><path d="M6,36L6,44Z" stroke="#000000" stroke-width="1" fill="#ffffff"></path></g><g transform="translate(774.5, 0)"><path d="M5,0L5,80Z" stroke="#000000" stroke-width="1" fill="#ffffff"></path><path d="M3,32L7,32L10,35L10,45L7,48L3,48L0,45L0,35Z" stroke="#000000" stroke-width="1" fill="#ffffff"></path><path d="M4,36L4,44Z" stroke="#000000" stroke-width="1" fill="#ffffff"></path><path d="M6,36L6,44Z" stroke="#000000" stroke-width="1" fill="#ffffff"></path></g></g></svg></div></div><div aria-hidden="true" style="display: none; position: absolute; top: 210px; left: 985px; white-space: nowrap; font-family: Arial; font-size: 8px;">-._.-*^*-._.-*^*-._.-</div><div></div></div></div>
		</div>

  

  <script>

  var chartDrowFun = {

    chartDrow : function(){
        var chartData = '';

        //날짜형식 변경하고 싶으시면 이 부분 수정하세요.
        var chartDateformat 	= 'yyyy년MM월dd일';
        //라인차트의 라인 수
        var chartLineCount    = 10;
        //컨트롤러 바 차트의 라인 수
        var controlLineCount	= 10;


        function drawDashboard() {

          var data = new google.visualization.DataTable();
          //그래프에 표시할 컬럼 추가
          data.addColumn('datetime' , '날짜');
          data.addColumn('number'   , '남성');
          data.addColumn('number'   , '여성');
          data.addColumn('number'   , '전체');

          //그래프에 표시할 데이터
          var dataRow = [];

          for(var i = 0; i <= 29; i++){ //랜덤 데이터 생성
            var total   = Math.floor(Math.random() * 300) + 1;
            var man     = Math.floor(Math.random() * total) + 1;
            var woman   = total - man;

            dataRow = [new Date('2017', '09', i , '10'), man, woman , total];
            data.addRow(dataRow);
          }


            var chart = new google.visualization.ChartWrapper({
              chartType   : 'LineChart',
              containerId : 'lineChartArea', //라인 차트 생성할 영역
              options     : {
                              isStacked   : 'percent',
                              focusTarget : 'category',
                              height		  : 500,
                              width			  : '100%',
                              legend		  : { position: "top", textStyle: {fontSize: 13}},
                              pointSize		: 5,
                              tooltip		  : {textStyle : {fontSize:12}, showColorCode : true,trigger: 'both'},
                              hAxis			  : {format: chartDateformat, gridlines:{count:chartLineCount,units: {
                                                                  years : {format: ['yyyy년']},
                                                                  months: {format: ['MM월']},
                                                                  days  : {format: ['dd일']},
                                                                  hours : {format: ['HH시']}}
                                                                },textStyle: {fontSize:12}},
                vAxis			  : {minValue: 100,viewWindow:{min:0},gridlines:{count:-1},textStyle:{fontSize:12}},
                animation		: {startup: true,duration: 1000,easing: 'in' },
                annotations	: {pattern: chartDateformat,
                                textStyle: {
                                fontSize: 15,
                                bold: true,
                                italic: true,
                                color: '#871b47',
                                auraColor: '#d799ae',
                                opacity: 0.8,
                                pattern: chartDateformat
                              }
                            }
              }
            });

            var control = new google.visualization.ControlWrapper({
              controlType: 'ChartRangeFilter',
              containerId: 'controlsArea',  //control bar를 생성할 영역
              options: {
                  ui:{
                        chartType: 'LineChart',
                        chartOptions: {
                        chartArea: {'width': '60%','height' : 80},
                          hAxis: {'baselineColor': 'none', format: chartDateformat, textStyle: {fontSize:12},
                            gridlines:{count:controlLineCount,units: {
                                  years : {format: ['yyyy년']},
                                  months: {format: ['MM월']},
                                  days  : {format: ['dd일']},
                                  hours : {format: ['HH시']}}
                            }}
                        }
                  },
                    filterColumnIndex: 0
                }
            });

            var date_formatter = new google.visualization.DateFormat({ pattern: chartDateformat});
            date_formatter.format(data, 0);

            var dashboard = new google.visualization.Dashboard(document.getElementById('Line_Controls_Chart'));
            window.addEventListener('resize', function() { dashboard.draw(data); }, false); //화면 크기에 따라 그래프 크기 변경
            dashboard.bind([control], [chart]);
            dashboard.draw(data);

        }
          google.charts.setOnLoadCallback(drawDashboard);

      }
    }

$(document).ready(function(){
  google.charts.load('current', {'packages':['line','controls']});
  chartDrowFun.chartDrow(); //chartDrow() 실행
});
  </script>

</body></html>