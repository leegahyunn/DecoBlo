<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

.b {
	position: absolute;
	right: 30px;
	top: 10px;
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

#panel-5-ctrl:checked ~ #panels #panel-5 main {
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

#panel-5-ctrl:checked ~ #tabs-list #li-for-panel-5 {
	pointer-events: none;
	cursor: default;
	-webkit-transform: translate3d(0, 1px, 0);
	transform: translate3d(0, 1px, 0);
	box-shadow: none;
	border-right: none;
}

#panel-5-ctrl:checked ~ #tabs-list #li-for-panel-5.last {
	border-right: 1px solid transparent;
}

#panel-5-ctrl:checked ~ #tabs-list #li-for-panel-5+li {
	border-left: 1px solid #dfdfdf;
}

#panel-5-ctrl:checked ~ #tabs-list #li-for-panel-5 label.panel-label {
	background-color: white;
	color: #003399;
	padding-top: 24px;
}

#panel-5-ctrl:checked ~ #tabs-list #li-for-panel-5 label.panel-label::after
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
	height: 200px;

}
.table-2{
	position: absolute;
	width: 50%;

}

.table-3{
	position: absolute; right: 1px;
	width: 50%;
	
}

</style>
</head>
<body>

	<!-- Header -->
	<header id="header">
		<h1>
			<a href="index.html">Deco <span>Blong</span></a>
		</h1>
		<nav id="nav">
			<ul>
				<li><a href="#" class="icon fa-angle-down">이준호님</a>
					<ul>
						<li><a href="#">내 블로그</a></li>
						<li><a href="#">계정설정</a></li>
						<li><a href="#">1대1 문의</a></li>
						<li><a href="#">로그아웃</a></li>
					</ul>
				<li><a href="#" class="icon fa-angle-down">한국어(KO)</a>

					<ul>
						<li><a href="#">한국어(KO)</a></li>
						<li><a href="#">日本語(JP)</a></li>
					</ul></li>
				<li><a href="#">고객센터</a></li>



			</ul>

		</nav>
	</header>

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
					<p align="center">
						<a href="#"><</a> ${stat.statRegDate} <a href="#">달력</a> <a href="#">></a>
					</p>
					<div id="mydate">   </div>
					
					<div class="b">
						<input type="button" class="button small" id='dd' value="일간"> <input type="button"
							class="button small" id='week' value="주간"> <input type="button" class="button small" id='mm' value="월간">
					</div>
				</div>


				<hr />
				<div class="box">
					<div class="one">
						<p align="center">오늘 조회수</p>
						<h3 align="center">${stat.statBlogCount}</h3>
					</div>
					<div class="two">
						<p align="center">공감수</p>
						<h3 align="center">0</h3>
					</div>
					<div class="three">
						<p align="center">댓글수</p>
						<h3 align="center">0</h3>
					</div>
					<div class="four">
						<p align="center">구독 증감수</p>
						<h3 align="center">0</h3>

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
						class="panel-radios" type="radio" name="tab-radios"> <input
						id="panel-5-ctrl" class="panel-radios" type="radio"
						name="tab-radios">

					<!-- TABS LIST -->
					<ul id="tabs-list">
						<!-- MENU TOGGLE -->
						<li id="li-for-panel-1"><label class="panel-label"
							for="panel-1-ctrl">조회수</label></li>
						<li id="li-for-panel-2"><label class="panel-label"
							for="panel-2-ctrl">방문횟수</label></li>
						<li id="li-for-panel-3"><label class="panel-label"
							for="panel-3-ctrl">조회수순위</label></li>
						<li id="li-for-panel-4"><label class="panel-label"
							for="panel-4-ctrl">유입 경로</label></li>
						<li id="li-for-panel-5"><label class="panel-label"
							for="panel-5-ctrl">성별 연령분포</label></li>
					</ul>

					<!-- THE PANELS -->
					<article id="panels">
						<div class="container">
							<section id="panel-1">
								<main>
								<p align="left" id="clock">기준</p>
								chart </main>
							</section>
							<section id="panel-2">
								<main>
								<p align="left" id="clock2">기준</p>
								chart </main>
							</section>
							<section id="panel-3">
								<main>
								<p align="left" id="clock3">기준</p>
								chart </main>
							</section>
							<section id="panel-4">
								<main>
								<p align="left" id="clock4">기준</p>
								chart </main>
							</section>
							<section id="panel-5">
								<main>
								<p align="left" id="clock5">기준</p>
								chart </main>
							</section>
						</div>
					</article>

				</div>

			</header>


			<div class="table-1">
				<div class="table-2">
				<table>
					<thead>
						<tr>
							<th style="text-align: center;">날짜</th>
							<th style="text-align: center;">조회수</th>
							
						</tr>
					</thead>
					<tbody>
						<tr>
							<td></td>
							<td></td>
							
						</tr>
						<tr>
							<td></td>
							<td></td>
							
						</tr>
						<tr>
							<td></td>
							<td></td>
							
						</tr>
						<tr>
							<td></td>
							<td></td>
							
						</tr>
						<tr>
							<td></td>
							<td></td>
							
						</tr>
					</tbody>

				</table>
				</div>
				
				<div class="table-3">
				<table>
					<thead>
						<tr>
							<th style="text-align: center;">날짜</th>
							<th style="text-align: center;">조회수</th>
							
						</tr>
					</thead>
					<tbody>
						<tr>
							<td></td>
							<td></td>
							
						</tr>
						<tr>
							<td></td>
							<td></td>
							
						</tr>
						<tr>
							<td></td>
							<td></td>
							
						</tr>
						<tr>
							<td></td>
							<td></td>
							
						</tr>
						<tr>
							<td></td>
							<td></td>
							
						</tr>
					</tbody>

				</table>
				</div>
				<p align="right">단위:건</p>
			</div>
			<div>이웃관리</div>
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
	
	<script type="text/javascript" src="resources/jchart/jquery-ui.min.js"></script>
	
	<script type="text/javascript">
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
		
		
		$('#mm').on('click', function() {
			$(".box").html(div2);
		});

			window.onload = function() {                         // 페이지가 로딩되면 실행

            printTime();
            $("#mydate").datepicker();

				}
			
			$('#dd').on('click', function() {
				$(".box").html(div2);
				$("#panel-1").html(chart2);
				$("#panel-2").html(chart2);
				$("#panel-3").html(chart2);
				$("#panel-4").html(chart2);
			});

			$('#mm').on('click', function() {
				$(".box").html(div2);
				$("#panel-1").html(chart2);
				$("#panel-2").html(chart2);
				$("#panel-3").html(chart2);
				$("#panel-4").html(chart2);
			});
	
			$('#week').on('click', function() {
				$(".box").html(div2);
				$("#panel-1").html(chart2);
				$("#panel-2").html(chart2);
				$("#panel-3").html(chart2);
				$("#panel-4").html(chart2);
			});
	
			
			
		
			
			
		var div2 = '<div class="one">';
		div2 +=	'<p align="center">오늘 조회수</p>';
		div2 +=	'<h3 align="center">0</h3>'
		div2 +=	'</div>'
		div2 += '<div class="two">'
		div2 +=	'<p align="center">공감수</p>'
		div2 +=	'<h3 align="center">0</h3>'
		div2 +=	'</div>'
	    div2 +=	'<div class="three">'
	    div2 +=	'<p align="center">댓글수</p>'
	    div2 +=	'<h3 align="center">0</h3>'
	    div2 +=	'</div>'
	    div2 +=	'<div class="four">'
	    div2 +=	'<p align="center">구독 증감수</p>'
	    div2 +=	'<h3 align="center">0</h3>'
	    div2 +=	'</div>'
	    
	    var chart2 =  '<main>'
			chart2 += '<p align="left">기준</p>'
			chart2 += '변경차트</main>'
		


</script>
</html>