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

<style>
.top {
	position: relative;
	height: 120px;
}

.timg {
	position: absolute;
	right: 20px;
	height: 120px;
	width: 180px;
}

.ttext {
	position: absolute;
	width: 650px;
	height: 120px;
	text-overflow: ellipsis;
}

.ttext p {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	width: 650px;
	height: 120px;
}

.ttext hr {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	width: 650px;
	height: 40px;
}

.slider {
	width: 50%;
	margin: 100px auto;
}

.slick-slide {
	margin: 0px 20px;
}

.slick-slide img {
	width: 100%;
}

.slick-prev:before, .slick-next:before {
	color: black;
}

.slideshow {
	
	position: absolute;
	width: 300px;
	height: 400px;
	left:50px;
	padding: 0px;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.4);
}

.slideshow2 {
	
	position: absolute;
	width: 300px;
	height: 400px;
	left:400px;
	padding: 0px;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.4);
}

.slideshow3 {
	
	position: absolute;
	width: 300px;
	height: 400px;
	left:750px;
	padding: 0px;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.4);
}
.showbox{
	position: relative;
	height: 450px;
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
				<li><a href="#" class="icon fa-angle-down">${loginName}님</a>
					<ul>
						<li><a href="user/profile">계정설정</a></li>
						<li><a href="#">내 블로그</a></li>
						<li><a href="#">대시보드</a></li>
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
					<div class="showbox">
						<h2>HOT ISSUE</h2>
						<a class="prev" onclick="plusSlides(-1)"></a>
						<div class="slideshow">
						</div>
						<div class="slideshow2">
						</div>
						<div class="slideshow3">
						</div>

					</div>
				</section>
			</section>

			<header>
				<div class="a"></div>


				<hr />
				<div class="box"></div>


			</header>



			<div>
				<h3>이웃새글</h3>
				<hr />
				<div class="top">
					<div class="ttext">글씨</div>
					<div class="timg">이미지</div>



				</div>

				<hr />
				<div class="top">
					<div class="ttext">글씨</div>
					<div class="timg">이미지</div>



				</div>



				<hr />
				<div class="top">
					<div class="ttext">글씨</div>
					<div class="timg">이미지</div>



				</div>
				<hr />
				<div class="top">
					<div class="ttext">글씨</div>
					<div class="timg">이미지</div>

				</div>
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
	
		
	
</html>