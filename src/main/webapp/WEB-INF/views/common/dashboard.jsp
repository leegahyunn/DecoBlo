<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<meta name="viewport" content="width=device-width, initial-scale=1" />
<!--[if lte IE 8]><script src="pixelarity/assets/js/ie/html5shiv.js"></script><![endif]-->
<link rel="stylesheet" href="pixelarity/assets/css/main.css" />
<!--[if lte IE 8]><link rel="stylesheet" href="pixelarity/assets/css/ie8.css" /><![endif]-->
<!--[if lte IE 9]><link rel="stylesheet" href="pixelarity/assets/css/ie9.css" /><![endif]-->
<link rel="stylesheet" href="resources/jchart/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.3/themes/smoothness/jquery-ui.css">

<style type="text/css">
.maintop {
	position: relative;
	height: 120px;
}

.mainimg {
	position: absolute;
}

.maintext {
	position: absolute;
	height: 100px;
	width: 400px;
	left: 130px;
}

.mainbutton {
	position: absolute;
	height: 100px;
	width: 200px;
	left: 350px;
	top: 10px;
}

.a {
	position: relative;
}
.c{
	position: absolute;
	top: 12px;
	left: 48%;
}
.b {
	position: absolute;
	right: 30px;
	top: 10px;
}
.neighbor{
	position: absolute;
	top: 5px;
	left: 48%;
}

.box {
	display: flex;
}

.one {
	flex: 1 0 auto;
	border-right: 1px solid black;
	border-left: 1px solid black;
	border-top: 1px solid black;
}

.two {
	flex: 1 0 auto;
	border-right: 1px solid black;
	border-top: 1px solid black;
}

.three {
	flex: 1 0 auto;
	border-right: 1px solid black;
	border-top: 1px solid black;
}

.four {
	flex: 1 0 auto;
	border-right: 1px solid black;
	border-top: 1px solid black;
}

#panels section main {
	max-height: 0;
	/*  이하 생략  */
}

#panel-1-ctrl:checked ~ #panels #panel-1 main {
	max-height: initial;
	opacity: 1;
	padding: 48px 24px;
}

label.panel-label {
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	display: block;
	width: 100%;
	color: #bdc3c7;
	cursor: pointer;
	background-color: #ecf0f1;
	-webkit-transition-property: background-color, color;
	transition-property: background-color, color;
	-webkit-transition-duration: 200ms;
	transition-duration: 200ms;
}

label.panel-label:hover {
	color: #003399;
}

#panels {
	background-color: white;
}

#panels .container {
	margin: 0 auto;
	width: 90%;
}

#panels section header label.panel-label {
	padding: 12px 24px;
	box-sizing: border-box;
}

#panels section main {
	box-sizing: border-box;
	max-height: 0;
	opacity: 0;
	-webkit-transition: opacity 600ms;
	transition: opacity 600ms;
	overflow-y: hidden;
}

#panel-1-ctrl:checked ~ #panels #panel-1 main {
	max-height: initial;
	opacity: 1;
	padding: 48px 24px;
}

#panel-2-ctrl:checked ~ #panels #panel-2 main {
	max-height: initial;
	opacity: 1;
	padding: 48px 24px;
}

#panel-3-ctrl:checked ~ #panels #panel-3 main {
	max-height: initial;
	opacity: 1;
	padding: 48px 24px;
}

#panel-4-ctrl:checked ~ #panels #panel-4 main {
	max-height: initial;
	opacity: 1;
	padding: 48px 24px;
}



#panel-1-ctrl:checked ~ #tabs-list #li-for-panel-1 {
	pointer-events: none;
	cursor: default;
	-webkit-transform: translate3d(0, 1px, 0);
	transform: translate3d(0, 1px, 0);
	box-shadow: none;
	border-right: none;
}

#panel-1-ctrl:checked ~ #tabs-list #li-for-panel-1.last {
	border-right: 1px solid transparent;
}

#panel-1-ctrl:checked ~ #tabs-list #li-for-panel-1+li {
	border-left: 1px solid #dfdfdf;
}

#panel-1-ctrl:checked ~ #tabs-list #li-for-panel-1 label.panel-label {
	background-color: white;
	color: #003399;
	padding-top: 24px;
}

#panel-1-ctrl:checked ~ #tabs-list #li-for-panel-1 label.panel-label::after
	{
	height: 6px;
}

#panel-2-ctrl:checked ~ #tabs-list #li-for-panel-2 {
	pointer-events: none;
	cursor: default;
	-webkit-transform: translate3d(0, 1px, 0);
	transform: translate3d(0, 1px, 0);
	box-shadow: none;
	border-right: none;
}

#panel-2-ctrl:checked ~ #tabs-list #li-for-panel-2.last {
	border-right: 1px solid transparent;
}

#panel-2-ctrl:checked ~ #tabs-list #li-for-panel-2+li {
	border-left: 1px solid #dfdfdf;
}

#panel-2-ctrl:checked ~ #tabs-list #li-for-panel-2 label.panel-label {
	background-color: white;
	color: #003399;
	padding-top: 24px;
}

#panel-2-ctrl:checked ~ #tabs-list #li-for-panel-2 label.panel-label::after
	{
	height: 6px;
}

#panel-3-ctrl:checked ~ #tabs-list #li-for-panel-3 {
	pointer-events: none;
	cursor: default;
	-webkit-transform: translate3d(0, 1px, 0);
	transform: translate3d(0, 1px, 0);
	box-shadow: none;
	border-right: none;
}

#panel-3-ctrl:checked ~ #tabs-list #li-for-panel-3.last {
	border-right: 1px solid transparent;
}

#panel-3-ctrl:checked ~ #tabs-list #li-for-panel-3+li {
	border-left: 1px solid #dfdfdf;
}

#panel-3-ctrl:checked ~ #tabs-list #li-for-panel-3 label.panel-label {
	background-color: white;
	color: #003399;
	padding-top: 24px;
}

#panel-3-ctrl:checked ~ #tabs-list #li-for-panel-3 label.panel-label::after
	{
	height: 6px;
}

#panel-4-ctrl:checked ~ #tabs-list #li-for-panel-4 {
	pointer-events: none;
	cursor: default;
	-webkit-transform: translate3d(0, 1px, 0);
	transform: translate3d(0, 1px, 0);
	box-shadow: none;
	border-right: none;
}

#panel-4-ctrl:checked ~ #tabs-list #li-for-panel-4.last {
	border-right: 1px solid transparent;
}

#panel-4-ctrl:checked ~ #tabs-list #li-for-panel-4+li {
	border-left: 1px solid #dfdfdf;
}

#panel-4-ctrl:checked ~ #tabs-list #li-for-panel-4 label.panel-label {
	background-color: white;
	color: #003399;
	padding-top: 24px;
}

#panel-4-ctrl:checked ~ #tabs-list #li-for-panel-4 label.panel-label::after
	{
	height: 6px;
}

ul#tabs-list {
	display: flex;
	justify-content: center;
	list-style: none;
	text-align: center;
	border-bottom: 1px solid #dfdfdf;
	margin: 0;
	padding: 0;
	text-align: center;
	border-bottom: 1px solid #dfdfdf;
}

ul#tabs-list li {
	display: flex;
	text-align: center;
	font-size: 0.875em;
	width: 18%;
	box-shadow: 0px -2px 2px rgba(0, 0, 0, 0.05);
	border-right: 1px solid #dfdfdf;
	position: relative;
}

ul#tabs-list li:hover {
	-webkit-transition: none;
	transition: none;
	border-right: none;
}

ul#tabs-list li:hover.last {
	border-right: 1px solid transparent;
}

ul#tabs-list li:hover+li {
	border-left: 1px solid #dfdfdf;
}

ul#tabs-list li label.panel-label {
	position: relative;
	padding: 24px 0;
	font-size: 0.875em;
}

ul#tabs-list li label.panel-label::after {
	content: "";
	position: absolute;
	width: 100%;
	left: 0;
	bottom: 100%;
	background-color: #b7acac;
	height: 0;
	-webkit-transition-property: height;
	transition-property: height;
	-webkit-transition-duration: 200ms;
	transition-duration: 200ms;
}

ul#tabs-list li label.panel-label:hover {
	padding-top: 24px;
}

ul#tabs-list li label.panel-label:hover::after {
	height: 6px;
}

main {
	width: 70%;
	margin: 0 auto;
}

.panel-radios {
	display: none;
}

body {
	color: #444;
}

main p {
	line-height: 1.8;
}

.table-1{
	position: relative;
	height: auto;

}
.table-2{
	position: absolute;
	width: 92%;
	bottom: 25%;

}

td{
	text-align: center;

}

pmydate{
	height: auto;

}

</style>
</head>
<body>

	<!-- Header -->
	<jsp:include page="header.jsp"></jsp:include>

	<!-- Main -->
	<section id="main" class="wrapper style1">

		<div class="container">

			<!-- Content -->
			<section id="content">

				<!-- Text -->
				<section>
					<div class="maintop">
						<div class="mainimg">
							<img src="resources/jchart/com.png">
						</div>
						<div class="maintext">
							<br>
							<h3>SCIT</h3>
							<p>LAST UPDATE</p>

						</div>
						<div class="mainbutton">
							<a href="#" class="button special">블로그 가기</a> <a href="#"
								class="button">블로그 편집</a>
							</div>
							<div class="neighbor">
				<p>1111111111111111111111111</p>
				</div>
						<hr />
					</div>
				</section>
			</section>
			<div>
				<hr />
			</div>
			<header>

				<div class="a">
					<h2 align="left">일간 현황</h2>
					<p align="center" id="timer">
						 ${stat.statRegDate}
					</p>
					<div class="c" ><img src="resources/jchart/calendar.png" class="calendar"></div>
					<div id="pmydate">
						<div id="mydate" style=" width: 250px; height:  340px; margin: 0 auto;"> 
						 <hr/>
						</div>	
				</div>		
					<div class="b">
						<input type="button" class="button small" id='dd' value="일간"> <input type="button"
							class="button small" id='week' value="주간"> <input type="button" class="button small" id='mm' value="월간">
					</div>
				
				</div>
				<hr />
				<div class="box">
					<div class="one">
						<p align="center">오늘 조회수</p>
					<c:if test="${empty stat.statBlogCount}">
					<h3 align="center">0</h3>
					</c:if>
					<c:if test="${not empty stat.statBlogCount}">
					<h3 align="center">${stat.statBlogCount}</h3>
					</c:if>
					</div>
					<div class="two">
						<p align="center">공감수</p>
						<c:if test="${empty stat.statBlogCount}">
					<h3 align="center">0</h3>
					</c:if>
						<c:if test="${not empty stat.statBlogCount}">
						<h3 align="center">${stat.statBlogCount}</h3>
						</c:if>
					</div>
					<div class="three">
						<p align="center">댓글수</p>
						<c:if test="${empty stat.statReplyCount}">
					<h3 align="center">0</h3>
					</c:if>
						<c:if test="${not empty stat.statReplyCount}">
						<h3 align="center">${stat.statReplyCount}</h3>
						</c:if>
						
					</div>
					<div class="four">
						<p align="center">구독 증감수</p>
						<c:if test="${empty stat.statSubscribe}">
					<h3 align="center">0</h3>
					</c:if>
						<c:if test="${not empty stat.statSubscribe}">
						<h3 align="center">${stat.statSubscribe}</h3>
						</c:if>
					</div>


				</div>

				<hr />
				<div></div>
				<div>
					<!-- TAB CONTROLLERS -->
					<input id="panel-1-ctrl" class="panel-radios" type="radio"
						name="tab-radios" checked> <input id="panel-2-ctrl"
						class="panel-radios" type="radio" name="tab-radios"> <input
						id="panel-3-ctrl" class="panel-radios" type="radio"
						name="tab-radios"> <input id="panel-4-ctrl"
						class="panel-radios" type="radio" name="tab-radios"> 

					<!-- TABS LIST -->
					<ul id="tabs-list">
						<!-- MENU TOGGLE -->
						<li id="li-for-panel-1"><label class="panel-label"
							for="panel-1-ctrl">블로그조회수</label></li>
						<li id="li-for-panel-2"><label class="panel-label"
							for="panel-2-ctrl">게시글조회수</label></li>
						<li id="li-for-panel-3"><label class="panel-label"
							for="panel-3-ctrl">댓글수</label></li>
						<li id="li-for-panel-4"><label class="panel-label"
							for="panel-4-ctrl">구독자</label></li>
						
					</ul>

					<!-- THE PANELS -->
					<article id="panels">
						<div class="container">
							<section id="panel-1">
								<main>
								<p align="left" id="clock">기준</p>
								<canvas id="chart1"></canvas>
								</main>
							</section>
							<section id="panel-2">
								<main>
								<p align="left" id="clock2">기준</p>
								<canvas id="chart2"></canvas> </main>
							</section>
							<section id="panel-3">
								<main>
								<p align="left" id="clock3">기준</p>
								<canvas id="chart3"></canvas>
								 </main>
							</section>
							<section id="panel-4">
								<main>
								<p align="left" id="clock4">기준</p>
								<canvas id="chart4"></canvas>
								 </main>
							</section>
							<section id="panel-5">
								<main>
								<p align="left" id="clock5">기준</p>
								<canvas></canvas>
								</main>
							</section>
						</div>
					</article>

				</div>

			</header>


			<div class="table-1">
				
				<table class="mytable">
					<thead>
						<tr>
							<th style="text-align: center;">날짜</th>
							<th style="text-align: center;">블로그조회수</th>
							<th style="text-align: center;">게시판조회수</th>
							<th style="text-align: center;">구독자증감수 <p align="right" style="color: gray; font-size: x-small;">단위:건</p></th>
							
						</tr>
						
						
					</thead>
					<tbody class="datein">
					
					</tbody>

				</table>
				</div>
			</div>
			
		
	</section>


	<!-- Footer -->
	<footer id="footer">
		<ul class="icons">
			<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
			<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
			<li><a href="#" class="icon fa-instagram"><span
					class="label">Instagram</span></a></li>
			<li><a href="#" class="icon fa-dribbble"><span class="label">Dribbble</span></a></li>
			<li><a href="#" class="icon fa-envelope"><span class="label">Envelope</span></a></li>
		</ul>
		<ul class="menu">
			<li><a href="#">FAQ</a></li>
			<li><a href="#">Terms of Use</a></li>
			<li><a href="#">Privacy</a></li>
			<li><a href="#">Contact</a></li>
		</ul>
		<span class="copyright"> &copy; Deco Blog </span>
	</footer>

	<!-- Scripts -->
	<script src="pixelarity/assets/js/jquery.min.js"></script>
	<script src="pixelarity/assets/js/jquery.dropotron.min.js"></script>
	<script src="pixelarity/assets/js/jquery.scrollgress.min.js"></script>
	<script src="pixelarity/assets/js/jquery.scrolly.min.js"></script>
	<script src="pixelarity/assets/js/jquery.slidertron.min.js"></script>
	<script src="pixelarity/assets/js/skel.min.js"></script>
	<script src="pixelarity/assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="pixelarity/assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="pixelarity/assets/js/main.js"></script>
	<script src="resources/jchart/jquery.mtz.monthpicker.js"></script>
	<script type="text/javascript" src="resources/jchart/jquery-ui.min.js"></script>
	<script src = "https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.bundle.js"></script>
	<script src = "https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.bundle.min.js"></script>
	<script src = "https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.js"></script>
	<script src = "https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js"></script>
	<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.3/jquery-ui.min.js"></script>
	
	
	<script type="text/javascript">
	
	$.datepicker.regional['ko'] = {

			  closeText: '닫기',

			  prevText: '이전달',

			  nextText: '다음달',

			  currentText: '오늘',

			  monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],

			  monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],

			  dayNames: ['일','월','화','수','목','금','토'],

			  dayNamesShort: ['일','월','화','수','목','금','토'],

			  dayNamesMin: ['일','월','화','수','목','금','토'],

			  weekHeader: 'Wk',

			  dateFormat: 'yy-mm-dd',

			  firstDay: 0,

			  isRTL: false,

			  duration:200,

			  showAnim:'show',

			  showMonthAfterYear: true,

			  yearSuffix:'년'

			 };

			 


			 $.datepicker.setDefaults($.datepicker.regional['ko']);
			
	 $.datepicker.setDefaults({
	        dateFormat: 'yy-mm-dd',
	        prevText: '이전 달',
	        nextText: '다음 달',
	        monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	        monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	        dayNames: ['일', '월', '화', '수', '목', '금', '토'],
	        dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
	        dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
	        showMonthAfterYear: true,
	        yearSuffix: '년'
	    });
	 
	 
	 
	 var currentYear = (new Date()).getFullYear();

	   var startYear = currentYear-10;

	   

	

	   
		function printTime() {

            var clock = document.getElementById("clock");
            var clock2 = document.getElementById("clock2");
            var clock3 = document.getElementById("clock3");
            var clock4 = document.getElementById("clock4");
            var clock5 = document.getElementById("clock5");

            var now = new Date();                                                  // 현재시간

            var nowTime = now.getFullYear() + "년" + (now.getMonth()+1) + "월" + now.getDate() + "일" + now.getHours() + "시" + now.getMinutes() + "분";

            clock.innerHTML = nowTime;           // 현재시간을 출력
            clock2.innerHTML = nowTime;
            clock3.innerHTML = nowTime;
            clock4.innerHTML = nowTime;
            clock5.innerHTML = nowTime;
            
            setTimeout("printTime()",1000);         // setTimeout(“실행할함수”,시간) 시간은1초의 경우 1000

			}
		
		
	// 일간 클릭시 실행
			$('#dd').on('click', function() {
				tablereset();
				$("#timer").html(cal);
				$(".box").html(div2);
				$("#panel-1").html(chart2);
				$("#panel-2").html(chart3);
				$("#panel-3").html(chart4);
				$("#panel-4").html(chart5);
				$("#pmydate").html(mydate);
				ddate();
				Chartdate();
	            ChartBBsdate();
	            Chartreplydate();
	            Chartsubdate();
				 $("#mydate").datepicker({ onSelect: function(dateText) {  
						
				    	
				    	var send = dateText;
				    	var senddate = {'statRegDate':send}
				    	
				    	 $.ajax({
						    	method : 'POST'
								, url  : 'selectday'
								, data : JSON.stringify(senddate)
								, dataType : 'json'
								, contentType : 'application/json; charset:utf-8' 
								, success : function(resp){
									var succ = '<p align="center">조회수</p>'
										succ += '<h3 align="center">'+resp.statBlogCount+'</h3>';
									$(".one").html(succ);
									var succ2 = '<p align="center">공감수예정</p>'
										succ2 += '<h3 align="center">'+resp.statBbsCount+'</h3>';
									$(".two").html(succ2);
									var succ3 = '<p align="center">댓글수</p>'
										succ3 += '<h3 align="center">'+resp.statReplyCount+'</h3>';
									$(".three").html(succ3);
									var sub = ${stat.statSubscribe}-resp.statSubscribe;
									var succ4 = '<p align="center">구독 중감수</p>'
										succ4 += '<h3 align="center">'+sub+'</h3>';
									$(".four").html(succ4);
								}
							});
				    	  }
				    	});  
			})
    // 월간 클릭시 실행
			$('#mm').on('click', function() {
				tablereset();
				mdate();
				$("#timer").html(cal3);
				$(".box").html(div3);
				$("#panel-1").html(chart2);
				$("#panel-2").html(chart3);
				$("#panel-3").html(chart4);
				$("#panel-4").html(chart5);
				MChartdate();
	            MChartBBsdate();
	            MChartreplydate();
	            MChartsubdate();
				
				var datepicker_default = {
			            
			            prevText : "이전달",
			            nextText : "다음달",
			            changeMonth: true,
			            changeYear: true,
			            monthNames : [ "1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월" ],
			            monthNamesShort : [ "1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월" ],
			            isRTL : false,
			            showMonthAfterYear : true,
			            viewMode: "months", 
			            minViewMode: "months"
			            
			        }
					
			        datepicker_default.closeText = "선택";
			        datepicker_default.dateFormat = "yy-mm";
			        datepicker_default.onClose = function (dateText, inst) {
			            var month = $("#ui-datepicker-div .ui-datepicker-month :selected").val();
			            var year = $("#ui-datepicker-div .ui-datepicker-year :selected").val();
			            $(this).datepicker( "option", "defaultDate", new Date(year, month, 1) );
			            $(this).datepicker('setDate', new Date(year, month, 1));
			        }
			       datepicker_default.beforeShow = function () {
			            var selectDate = $("#sdate").val().split("-");
           			            var year = Number(selectDate[0]);
			            var month = Number(selectDate[1]) - 1;
			            alert(month);
			            $(this).datepicker( "option", "defaultDate", new Date(year, month, 1) );
			            $(this).datepicker({
			                viewMode: 'months',
			                format: 'yyyy-mm'
			           });
			            console.log( $("#sdate").val()); 
			           	alert($("#sdate").val());
			        }
			        $("#pmydate").html(mydate3);
			$("#sdate").datepicker(datepicker_default);
			
			});
	// 주간 클릭시 실행
			$('#week').on('click', function() {
				
				tablereset();
				wdate();
				$("#timer").html(cal2);
				$(".box").html(div4);
				$("#panel-1").html(chart2);
				$("#panel-2").html(chart3);
				$("#panel-3").html(chart4);
				$("#panel-4").html(chart5);
				$("#pmydate").html(mydate2);
				 WChartsubdate();
				 WChartdate();
		         WChartBBsdate();
		         WChartreplydate();
		            
				//주 간 달 력
				 $('#week-picker').datepicker( {
				        showOtherMonths: true,
				        selectOtherMonths: true,
						selectWeek:true,
				        onSelect: function(dateText, inst) { 
				            var date = $(this).datepicker('getDate');
				            startDate = new Date(date.getFullYear(), date.getMonth(), date.getDate() - date.getDay() );
				            endDate = new Date(date.getFullYear(), date.getMonth(), date.getDate() - date.getDay() + 6);
							var dateFormat = 'yy/mm/dd'
				            startDate = $.datepicker.formatDate( dateFormat, startDate, inst.settings );
				            endDate = $.datepicker.formatDate( dateFormat, endDate, inst.settings );

							$('#week-picker').val(startDate + '~' + endDate);
				            setTimeout("applyWeeklyHighlight()", 100);
				            var send = startDate+'~'+endDate;
				            var senddate = {'statRegDate':send};
				            alert(JSON.stringify(senddate));
				            $.ajax({
						    	method : 'POST'
								, url  : 'selectweek'
								, data : JSON.stringify(senddate)
								, dataType : 'json'
								, contentType : 'application/json; charset:utf-8' 
								, success : function(resp){
									var succ = '<p align="center">조회수</p>'
										succ += '<h3 align="center">'+resp.statBlogCount+'</h3>';
									$(".one").html(succ);
									var succ2 = '<p align="center">공감수예정</p>'
										succ2 += '<h3 align="center">'+resp.statBbsCount+'</h3>';
									$(".two").html(succ2);
									var succ3 = '<p align="center">댓글수</p>'
										succ3 += '<h3 align="center">'+resp.statReplyCount+'</h3>';
									$(".three").html(succ3);
									var sub = ${stat.statSubscribe}-resp.statSubscribe;
									var succ4 = '<p align="center">구독 중감수</p>'
										succ4 += '<h3 align="center">'+sub+'</h3>';
									$(".four").html(succ4);
									
								}
				            })
				        },
						beforeShow : function() {
							setTimeout("applyWeeklyHighlight()", 100);
						}
				    });
			});
			// 캘 린 더 클 릭 시 보 이 고 숨 기 기
			 $('.calendar').on('click',function(){
				 if($("#pmydate").css("display") == "none"){   
					 $("#pmydate").show(); 
				    } else {  
				    	$("#pmydate").hide();
				    }  
			});
			
			 var mydate =  '<div id="mydate" style=" width: 250px; height:  340px; margin: 0 auto;">';  
				 mydate += '<hr/>';
				 mydate += '</div>';	
				
				 var mydate2 =  '<input type="text" id ="week-picker">';
				 var mydate3 =  '<input type="text" id ="sdate">';
				
				
		
			
			
		var div2 = '<div class="one">';
		div2 +=	'<p align="center">오늘 조회수</p>';
		div2 +=	'<h3 align="center">${stat.statBlogCount}</h3>'
		div2 +=	'</div>'
		div2 += '<div class="two">'
		div2 +=	'<p align="center">공감수</p>'
		div2 +=	'<h3 align="center">${stat.statBlogCount}</h3>'
		div2 +=	'</div>'
	    div2 +=	'<div class="three">'
	    div2 +=	'<p align="center">댓글수</p>'
	    div2 +=	'<h3 align="center">${stat.statReplyCount}</h3>'
	    div2 +=	'</div>'
	    div2 +=	'<div class="four">'
	    div2 +=	'<p align="center">구독 증감수</p>'
	    div2 +=	'<h3 align="center">${stat.statSubscribe}</h3>'
	    div2 +=	'</div>'
	   
	    var cal="${stat.statRegDate}"
	    
	    var cal2= "${wwdate}&nbsp;~&nbsp;${stat.statRegDate}"
	    
	    var cal3= "${mmdate}"
	    	
	    
	    var div3 = '<div class="one">';
		div3 +=	'<p align="center">이번 달 조회수</p>';
		div3 +=	'<h3 align="center">${mstat.statBlogCount}</h3>'
		div3 +=	'</div>'
		div3 += '<div class="two">'
		div3 +=	'<p align="center">공감수</p>'
		div3 +=	'<h3 align="center">${mstat.statBlogCount}</h3>'
		div3 +=	'</div>'
	    div3 +=	'<div class="three">'
	    div3 +=	'<p align="center">댓글수</p>'
	    div3 +=	'<h3 align="center">${mstat.statReplyCount}</h3>'
	    div3 +=	'</div>'
	    div3 +=	'<div class="four">'
	    div3 +=	'<p align="center">구독 증감수</p>'
	    div3 +=	'<h3 align="center">${mstat.statSubscribe}</h3>'
	    div3 +=	'</div>'
	    
	    
	    	var div4 = '<div class="one">';
		div4 +=	'<p align="center">이번 달 조회수</p>';
		div4 +=	'<h3 align="center">${wstat.statBlogCount}</h3>'
		div4 +=	'</div>'
		div4 += '<div class="two">'
		div4 +=	'<p align="center">공감수</p>'
		div4 +=	'<h3 align="center">${wstat.statBlogCount}</h3>'
		div4 +=	'</div>'
	    div4 +=	'<div class="three">'
	    div4 +=	'<p align="center">댓글수</p>'
	    div4 +=	'<h3 align="center">${wstat.statReplyCount}</h3>'
	    div4 +=	'</div>'
	    div4 +=	'<div class="four">'
	    div4 +=	'<p align="center">구독 증감수</p>'
	    div4 +=	'<h3 align="center">${wstat.statSubscribe}</h3>'
	    div4 +=	'</div>'
	    
	    var chart2 =  '<main>'
			chart2 += '<p align="left">기준</p>'
			chart2 += '<canvas id="chart1"></canvas>'
			chart2 += '</main>'
			
		 var chart3 =  '<main>'
			 chart3 += '<p align="left">기준</p>'
			 chart3 += '<canvas id="chart2"></canvas>'
			 chart3 += '</main>'	
			 
		 var chart4 =  '<main>'
			 chart4 += '<p align="left">기준</p>'
			 chart4 += '<canvas id="chart3"></canvas>'
			 chart4 += '</main>'	 
		
		 var chart5 =  '<main>'
			 chart5 += '<p align="left">기준</p>'
			 chart5 += '<canvas id="chart4"></canvas>'
			 chart5 += '</main>'
					 
					 
				  var currentYear = (new Date()).getFullYear();

		    var startYear = currentYear-10;

		    
		   
		    window.onload = function() {                         // 페이지가 로딩되면 실행
				
	            printTime();
	         	
	            $("#pmydate").hide();
	            $('#mydate').datepicker({
			        altField : '#getdate'
			        
			    });
	            ddate();
	            Chartdate();
	            ChartBBsdate();
	            Chartreplydate();
	            Chartsubdate();
			    }
		    
	   
		    function applyWeeklyHighlight() {

		    	$('.ui-datepicker-calendar tr').each(function() {

		    		if ($(this).parent().get(0).tagName == 'TBODY') {
		    			$(this).mouseover(function() {
		    				$(this).find('a').css({
		    					'background' : '#ffffcc',
		    					'border' : '1px solid #dddddd'
		    				});
		    				$(this).find('a').removeClass('ui-state-default');
		    				$(this).css('background', '#ffffcc');
		    			});
		    			
		    			$(this).mouseout(function() {
		    				$(this).css('background', '#ffffff');
		    				$(this).find('a').css('background', '');
		    				$(this).find('a').addClass('ui-state-default');
		    			});
		    		}

		    	});
		    }
		    
		    var startDate;
		    var endDate;
		    
		    
		    var send = $('.getdate').val();
		    var senddate = {"slday":send}
		    
		   
		    
		    
		    
		    
		    
		    
		    $("#mydate").datepicker({ onSelect: function(dateText) {  
				var send = dateText;
		    	var senddate = {'statRegDate':send}
		    	$.ajax({
				    	method : 'POST'
						, url  : 'selectday'
						, data : JSON.stringify(senddate)
						, dataType : 'json'
						, contentType : 'application/json; charset:utf-8' 
						, success : function(resp){
							var succ = '<p align="center">조회수</p>'
								succ += '<h3 align="center">'+resp.statBlogCount+'</h3>';
							$(".one").html(succ);
							var succ2 = '<p align="center">공감수예정</p>'
								succ2 += '<h3 align="center">'+resp.statBbsCount+'</h3>';
							$(".two").html(succ2);
							var succ3 = '<p align="center">댓글수</p>'
								succ3 += '<h3 align="center">'+resp.statReplyCount+'</h3>';
							$(".three").html(succ3);
							var sub = ${stat.statSubscribe}-resp.statSubscribe;
							var succ4 = '<p align="center">구독 중감수</p>'
								succ4 += '<h3 align="center">'+sub+'</h3>';
							$(".four").html(succ4)
						}
						
					});
		    	  }
		    	});
			// 일간 데이터 출력
		    function ddate() {
				$.ajax({
					method : 'GET'
				 , url  : 'selectchart'
				 , dataType : 'json'
				 , success : function(data) {
					var c = data.length;
				
					 
						 
					$.each(data, function(i, arrjson) {
						var a = data[i].statRegDate;
						var res = a.substring(0, 10)
						
						$('<tr>').html("<td>" + res+ "</td>"+
							 "<td >" +  data[i].statBlogCount+ "</td>"+
							  "<td >" +  data[i].statBbsCount+ "</td>"+
							 "<td >" +  data[i].statSubscribe + "</td>").appendTo('.datein');
							
				
					})
				 }
				})
			}
			// 주간 데이터 출력
		    function wdate() {
				$.ajax({
					method : 'GET'
				 , url  : 'selectchart2'
				 , dataType : 'json'
				 , success : function(data) {
					
						 
					$.each(data, function(i, arrjson) {
						var a = data[i].statRegDate;
						var res = a.substring(0, 10)
						
						var formattedDate = new Date(a); 
						var d = formattedDate.getDate(); d += 6;
						var m = formattedDate.getMonth();
						var ma = ("0" + (m + 1)).slice(-2);
						
						var y = formattedDate.getFullYear(); 
						var ers = y + "-" + ma + "-" + d;

						$('<tr>').html("<td>" +res+ "&nbsp "+'~'+ "&nbsp "+ers+ "</td>"+
							 "<td >" +  data[i].statBlogCount+ "</td>"+
							  "<td >" +  data[i].statBbsCount+ "</td>"+
							 "<td >" +  data[i].statSubscribe + "</td>").appendTo('.datein');
					
							 }
							
						)
					
				 }
				
					})
				}
		
			
		    //월 간 데이터 출력
		    function mdate() {
				$.ajax({
					method : 'GET'
				 , url  : 'selectchart3'
				 , dataType : 'json'
				 , success : function(data) {
					
						 
					$.each(data, function(i, arrjson) {
						var a = data[i].statRegDate;
						var res = a.substring(0, 7)
					

						$('<tr>').html("<td>" +res+ "</td>"+
							 "<td >" +  data[i].statBlogCount+ "</td>"+
							  "<td >" +  data[i].statBbsCount+ "</td>"+
							 "<td >" +  data[i].statSubscribe + "</td>").appendTo('.datein');
					
							 }
							
						)
					
				 }
				
					})
				}
		    
		    
		   // 테이블 리셋
		    function tablereset() {
		       $( '.mytable > tbody').empty();
		        }
			
		   
		   	// 일간 블로그 조회수 차트 
		   	function Chartdate() {
		   		var data2 = new Array();
				var labal = new Array(); 
				var dchart = $("#chart1")[0].getContext('2d');	 
				$.ajax({
					method : 'GET'
				 , url  : 'selectchart'
				 , dataType : 'json'
				 , success : function(data) {
					var c = data.length;
					
					$.each(data, function(i, arrjson) {
						var a = data[i].statRegDate;
						var res = a.substring(0, 10)
						labal.push(res);
						data2.push(data[i].statBlogCount)
						
					})
					
				 }
				})
				
				new Chart(dchart, {
					type: 'line',
				    data: {

				        labels: labal,

				        datasets: [{

				            label: "블로그조회수",
				            fillColor: "rgba(220,220,220,0.2)",
				            strokeColor: "rgba(220,220,220,1)",
				            pointColor: "rgba(220,220,220,1)",
				            pointStrokeColor: "#fff",
				            pointHighlightFill: "#fff",
				            pointHighlightStroke: "rgba(220,220,220,1)",
				            data: data2
				         
						
						 }]

				    },
				    options: {
				    	 responsive: true,
				    	    
				    	    scales: { yAxes: [{ ticks: { beginAtZero:true } }] }  
				    	
				    	
				    }
				});
				
			}
		   	
		 // 일간 게시글 조회수 차트 
		   	function ChartBBsdate() {
		   		var data2 = new Array();
				var labal = new Array(); 
				var dchart = $("#chart2")[0].getContext('2d');	 
				$.ajax({
					method : 'GET'
				 , url  : 'selectchart'
				 , dataType : 'json'
				 , success : function(data) {
					var c = data.length;
					
					$.each(data, function(i, arrjson) {
						var a = data[i].statRegDate;
						var res = a.substring(0, 10)
						labal.push(res);
						data2.push(data[i].statBbsCount)
						
					})
					
				 }
				})
				
				new Chart(dchart, {
					type: 'line',
				    data: {

				        labels: labal,

				        datasets: [{

				            label: "블로그조회수",
				            fillColor: "rgba(220,220,220,0.2)",
				            strokeColor: "rgba(220,220,220,1)",
				            pointColor: "rgba(220,220,220,1)",
				            pointStrokeColor: "#fff",
				            pointHighlightFill: "#fff",
				            pointHighlightStroke: "rgba(220,220,220,1)",
				            data: data2
				         
						
						 }]

				    },
				    options: {
				    	 responsive: true,
				    	    
				    	    scales: { yAxes: [{ ticks: { beginAtZero:true } }] }  
				    	
				    	
				    }
				});
				
			}
		 
		    // 일간 댓글 조회수 차트 
		   	function Chartreplydate() {
		   		var data2 = new Array();
				var labal = new Array(); 
				var dchart = $("#chart3")[0].getContext('2d');	 
				$.ajax({
					method : 'GET'
				 , url  : 'selectchart'
				 , dataType : 'json'
				 , success : function(data) {
					var c = data.length;
					
					$.each(data, function(i, arrjson) {
						var a = data[i].statRegDate;
						var res = a.substring(0, 10)
						labal.push(res);
						data2.push(data[i].statReplyCount)
						
					})
					
				 }
				})
				
				new Chart(dchart, {
					type: 'line',
				    data: {

				        labels: labal,

				        datasets: [{

				            label: "댓글조회수",
				            fillColor: "rgba(220,220,220,0.2)",
				            strokeColor: "rgba(220,220,220,1)",
				            pointColor: "rgba(220,220,220,1)",
				            pointStrokeColor: "#fff",
				            pointHighlightFill: "#fff",
				            pointHighlightStroke: "rgba(220,220,220,1)",
				            data: data2
				         
						
						 }]

				    },
				    options: {
				    	 responsive: true,
				    	    
				    	    scales: { yAxes: [{ ticks: { beginAtZero:true } }] }  
				    	
				    	
				    }
				});
				
			}
		    // 일간 댓글 조회수 차트 
		   	function Chartsubdate() {
		   		var data2 = new Array();
				var labal = new Array(); 
				var dchart = $("#chart4")[0].getContext('2d');	 
				$.ajax({
					method : 'GET'
				 , url  : 'selectchart'
				 , dataType : 'json'
				 , success : function(data) {
					var c = data.length;
					
					$.each(data, function(i, arrjson) {
						var a = data[i].statRegDate;
						var res = a.substring(0, 10)
						labal.push(res);
						data2.push(data[i].statSubscribe)
						
					})
					
				 }
				})
				
				new Chart(dchart, {
					type: 'line',
				    data: {

				        labels: labal,

				        datasets: [{

				            label: "구독자",
				            fillColor: "rgba(220,220,220,0.2)",
				            strokeColor: "rgba(220,220,220,1)",
				            pointColor: "rgba(220,220,220,1)",
				            pointStrokeColor: "#fff",
				            pointHighlightFill: "#fff",
				            pointHighlightStroke: "rgba(220,220,220,1)",
				            data: data2
				         
						
						 }]

				    },
				    options: {
				    	 responsive: true,
				    	    
				    	    scales: { yAxes: [{ ticks: { beginAtZero:true } }] }  
				    	
				    	
				    }
				});
				
			}
		
		    
		    // 주간 댓글 조회수 차트 
		   	function WChartsubdate() {
		   		var data2 = new Array();
				var labal = new Array(); 
				var dchart = $("#chart4")[0].getContext('2d');	 
				$.ajax({
					method : 'GET'
				 , url  : 'selectchart2'
				 , dataType : 'json'
				 , success : function(data) {
					var c = data.length;
					
					$.each(data, function(i, arrjson) {
						var a = data[i].statRegDate;
						var res = a.substring(0, 10)
						labal.push(res);
						data2.push(data[i].statSubscribe)
						
					})
					
				 }
				})
				
				new Chart(dchart, {
					type: 'line',
				    data: {

				        labels: labal,

				        datasets: [{

				            label: "주간구독자",
				            fillColor: "rgba(220,220,220,0.2)",
				            strokeColor: "rgba(220,220,220,1)",
				            pointColor: "rgba(220,220,220,1)",
				            pointStrokeColor: "#fff",
				            pointHighlightFill: "#fff",
				            pointHighlightStroke: "rgba(220,220,220,1)",
				            data: data2
				         
						
						 }]

				    },
				    options: {
				    	 responsive: true,
				    	    
				    	    scales: { yAxes: [{ ticks: { beginAtZero:true } }] }  
				    	
				    	
				    }
				});
				
			}
		 	// 주간 블로그 조회수 차트 
		   	function WChartdate() {
		   		var data2 = new Array();
				var labal = new Array(); 
				var dchart = $("#chart1")[0].getContext('2d');	 
				$.ajax({
					method : 'GET'
				 , url  : 'selectchart2'
				 , dataType : 'json'
				 , success : function(data) {
					var c = data.length;
					
					$.each(data, function(i, arrjson) {
						var a = data[i].statRegDate;
						var res = a.substring(0, 10)
						labal.push(res);
						data2.push(data[i].statBlogCount)
						
					})
					
				 }
				})
				
				new Chart(dchart, {
					type: 'line',
				    data: {

				        labels: labal,

				        datasets: [{

				            label: "주간블로그조회수",
				            fillColor: "rgba(220,220,220,0.2)",
				            strokeColor: "rgba(220,220,220,1)",
				            pointColor: "rgba(220,220,220,1)",
				            pointStrokeColor: "#fff",
				            pointHighlightFill: "#fff",
				            pointHighlightStroke: "rgba(220,220,220,1)",
				            data: data2
				         
						
						 }]

				    },
				    options: {
				    	 responsive: true,
				    	    
				    	    scales: { yAxes: [{ ticks: { beginAtZero:true } }] }  
				    	
				    	
				    }
				});
				
			}
		   	
		 // 주간 게시글 조회수 차트 
		   	function WChartBBsdate() {
		   		var data2 = new Array();
				var labal = new Array(); 
				var dchart = $("#chart2")[0].getContext('2d');	 
				$.ajax({
					method : 'GET'
				 , url  : 'selectchart2'
				 , dataType : 'json'
				 , success : function(data) {
					var c = data.length;
					
					$.each(data, function(i, arrjson) {
						var a = data[i].statRegDate;
						var res = a.substring(0, 10)
						labal.push(res);
						data2.push(data[i].statBbsCount)
						
					})
					
				 }
				})
				
				new Chart(dchart, {
					type: 'line',
				    data: {

				        labels: labal,

				        datasets: [{

				            label: "주간블로그조회수",
				            fillColor: "rgba(220,220,220,0.2)",
				            strokeColor: "rgba(220,220,220,1)",
				            pointColor: "rgba(220,220,220,1)",
				            pointStrokeColor: "#fff",
				            pointHighlightFill: "#fff",
				            pointHighlightStroke: "rgba(220,220,220,1)",
				            data: data2
				         
						
						 }]

				    },
				    options: {
				    	 responsive: true,
				    	    
				    	    scales: { yAxes: [{ ticks: { beginAtZero:true } }] }  
				    	
				    	
				    }
				});
				
			}
		 
		    // 주간간 댓글 조회수 차트 
		   	function WChartreplydate() {
		   		var data2 = new Array();
				var labal = new Array(); 
				var dchart = $("#chart3")[0].getContext('2d');	 
				$.ajax({
					method : 'GET'
				 , url  : 'selectchart2'
				 , dataType : 'json'
				 , success : function(data) {
					var c = data.length;
					
					$.each(data, function(i, arrjson) {
						var a = data[i].statRegDate;
						var res = a.substring(0, 10)
						labal.push(res);
						data2.push(data[i].statReplyCount)
						
					})
					
				 }
				})
				
				new Chart(dchart, {
					type: 'line',
				    data: {

				        labels: labal,

				        datasets: [{

				            label: "주간댓글조회수",
				            fillColor: "rgba(220,220,220,0.2)",
				            strokeColor: "rgba(220,220,220,1)",
				            pointColor: "rgba(220,220,220,1)",
				            pointStrokeColor: "#fff",
				            pointHighlightFill: "#fff",
				            pointHighlightStroke: "rgba(220,220,220,1)",
				            data: data2
				         
						
						 }]

				    },
				    options: {
				    	 responsive: true,
				    	    
				    	    scales: { yAxes: [{ ticks: { beginAtZero:true } }] }  
				    	
				    	
				    }
				});
				
			}
		    
		    //월간
		     // 월간 댓글 조회수 차트 
		   	function MChartsubdate() {
		   		var data2 = new Array();
				var labal = new Array(); 
				var dchart = $("#chart4")[0].getContext('2d');	 
				$.ajax({
					method : 'GET'
				 , url  : 'selectchart3'
				 , dataType : 'json'
				 , success : function(data) {
					var c = data.length;
					
					$.each(data, function(i, arrjson) {
						var a = data[i].statRegDate;
						var res = a.substring(0, 10)
						labal.push(res);
						data2.push(data[i].statSubscribe)
						
					})
					
				 }
				})
				
				new Chart(dchart, {
					type: 'line',
				    data: {

				        labels: labal,

				        datasets: [{

				            label: "월간구독자",
				            fillColor: "rgba(220,220,220,0.2)",
				            strokeColor: "rgba(220,220,220,1)",
				            pointColor: "rgba(220,220,220,1)",
				            pointStrokeColor: "#fff",
				            pointHighlightFill: "#fff",
				            pointHighlightStroke: "rgba(220,220,220,1)",
				            data: data2
				         
						
						 }]

				    },
				    options: {
				    	 responsive: true,
				    	    
				    	    scales: { yAxes: [{ ticks: { beginAtZero:true } }] }  
				    	
				    	
				    }
				});
				
			}
		 	// 월간 블로그 조회수 차트 
		   	function MChartdate() {
		   		var data2 = new Array();
				var labal = new Array(); 
				var dchart = $("#chart1")[0].getContext('2d');	 
				$.ajax({
					method : 'GET'
				 , url  : 'selectchart3'
				 , dataType : 'json'
				 , success : function(data) {
					var c = data.length;
					
					$.each(data, function(i, arrjson) {
						var a = data[i].statRegDate;
						var res = a.substring(0, 10)
						labal.push(res);
						data2.push(data[i].statBlogCount)
						
					})
					
				 }
				})
				
				new Chart(dchart, {
					type: 'line',
				    data: {

				        labels: labal,

				        datasets: [{

				            label: "월간블로그조회수",
				            fillColor: "rgba(220,220,220,0.2)",
				            strokeColor: "rgba(220,220,220,1)",
				            pointColor: "rgba(220,220,220,1)",
				            pointStrokeColor: "#fff",
				            pointHighlightFill: "#fff",
				            pointHighlightStroke: "rgba(220,220,220,1)",
				            data: data2
				         
						
						 }]

				    },
				    options: {
				    	 responsive: true,
				    	    
				    	    scales: { yAxes: [{ ticks: { beginAtZero:true } }] }  
				    	
				    	
				    }
				});
				
			}
		   	
		 // 주간 게시글 조회수 차트 
		   	function MChartBBsdate() {
		   		var data2 = new Array();
				var labal = new Array(); 
				var dchart = $("#chart2")[0].getContext('2d');	 
				$.ajax({
					method : 'GET'
				 , url  : 'selectchart3'
				 , dataType : 'json'
				 , success : function(data) {
					var c = data.length;
					
					$.each(data, function(i, arrjson) {
						var a = data[i].statRegDate;
						var res = a.substring(0, 10)
						labal.push(res);
						data2.push(data[i].statBbsCount)
						
					})
					
				 }
				})
				
				new Chart(dchart, {
					type: 'line',
				    data: {

				        labels: labal,

				        datasets: [{

				            label: "월간블로그조회수",
				            fillColor: "rgba(220,220,220,0.2)",
				            strokeColor: "rgba(220,220,220,1)",
				            pointColor: "rgba(220,220,220,1)",
				            pointStrokeColor: "#fff",
				            pointHighlightFill: "#fff",
				            pointHighlightStroke: "rgba(220,220,220,1)",
				            data: data2
				         
						
						 }]

				    },
				    options: {
				    	 responsive: true,
				    	    
				    	    scales: { yAxes: [{ ticks: { beginAtZero:true } }] }  
				    	
				    	
				    }
				});
				
			}
		 
		    // 주간간 댓글 조회수 차트 
		   	function MChartreplydate() {
		   		var data2 = new Array();
				var labal = new Array(); 
				var dchart = $("#chart3")[0].getContext('2d');	 
				$.ajax({
					method : 'GET'
				 , url  : 'selectchart3'
				 , dataType : 'json'
				 , success : function(data) {
					var c = data.length;
					
					$.each(data, function(i, arrjson) {
						var a = data[i].statRegDate;
						var res = a.substring(0, 10)
						labal.push(res);
						data2.push(data[i].statReplyCount)
						
					})
					
				 }
				})
				
				new Chart(dchart, {
					type: 'line',
				    data: {

				        labels: labal,

				        datasets: [{

				            label: "월간댓글조회수",
				            fillColor: "rgba(220,220,220,0.2)",
				            strokeColor: "rgba(220,220,220,1)",
				            pointColor: "rgba(220,220,220,1)",
				            pointStrokeColor: "#fff",
				            pointHighlightFill: "#fff",
				            pointHighlightStroke: "rgba(220,220,220,1)",
				            data: data2
				         
						
						 }]

				    },
				    options: {
				    	 responsive: true,
				    	    
				    	    scales: { yAxes: [{ ticks: { beginAtZero:true } }] }  
				    	
				    	
				    }
				});
				
			}
</script>
</html>