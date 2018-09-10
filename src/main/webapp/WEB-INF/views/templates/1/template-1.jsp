<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Untitled</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"/>
<link rel="stylesheet" href="templates/common.css" />
<link rel="stylesheet" href="templates/block-1.css" />
<link rel="stylesheet" href="templates/block-2.css" />
</head>
<body>
<div class="menu-wrapper">
	<!-- ------------------ -->
	<!-- 메뉴 블록, block-1 -->
	<!-- ------------------ -->
	<div class="block-wrapper">
		<div class="block-1">
			<div class="titleleft">
				<h1><a href="#">Deco <span>Blo</span></a></h1>
			</div>
			
			<div class="titleright">
				<nav id="nav">
					<ul>
						<li><a href="#">Home</a></li>
						<li class="dropdown-menu">
							<a href="#"><i class="fa fa-angle-down"></i> Layouts</a>
							<ul class="dropdown-opt">
								<li><a href="#">Left Sidebar</a></li>
								<li><a href="#">Right Sidebar</a></li>
								<li><a href="#">No Sidebar</a></li>							
							</ul>
						</li>
						<li><a href="elements.html">Elements</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</div>
	<!-- ------------------- -->
	<!-- /메뉴 블록, block-1 -->
	<!-- ------------------- -->
	<!-- ---------------------- -->
	<!-- 쇼케이스 블록, block-2 -->
	<!-- ---------------------- -->
	<div class="block-wrapper">
		<div class="block-2">
			<div class="temp-space">
			</div>
			<h2 class="showcase-title">
				Lorem Ipsum
			</h2>
			<p class="showcase-content">
				Neque porro quisquam est qui dolorem ipsum quia dolor sit amet
			</p>
			<div class="start-btn-wrapper">
				<button class="start-btn">Start</button>
			</div>
		</div>
	</div>
	<!-- ----------------------- -->
	<!-- /쇼케이스 블록, block-2 -->
	<!-- ----------------------- -->
	<!-- ---------------------- -->
	<!-- 쇼케이스 블록, block-3 -->
	<!-- ---------------------- -->
	<div class="block-wrapper">
		<div class="block-3">
			<div class="temp-space">
			</div>
			<h2 class="showcase-title">
				Lorem Ipsum
			</h2>
			<p class="showcase-content">
				Neque porro quisquam est qui dolorem ipsum quia dolor sit amet
			</p>
			<div class="start-btn-wrapper">
				<button class="start-btn">Start</button>
			</div>
		</div>
	</div>
	<!-- ----------------------- -->
	<!-- /쇼케이스 블록, block-3 -->
	<!-- ----------------------- -->
	<section id="one" class="wrapper style1">
		<div class="container">
			<header class="major">
				<h2>마우스 클릭만으로 만들어지는 블로그</h2>
				<p>여러가지의 블록들과 템플릿을 이용하여 만드는 나만의 블로그</p>
			</header>
			<div class="slider">
				<span class="nav-previous"></span>
				<div class="viewer">
					<div class="reel">
						<div class="slide">
							<img src="resources/images/sample_blog.png" alt="" />
						</div>
						<div class="slide">
							<img src="resources/images/sample2.jpg" alt="" />
						</div>
						<div class="slide">
							<img src="resources/images/sample3.jpg" alt="" />
						</div>
					</div>
				</div>
				<span class="nav-next"></span>
			</div>
		</div>
	</section>
</div>
<!-- Scripts -->
<script src="resources/library/js/jquery-3.3.1.min.js"></script>
<script src="templates/block-1.js"></script>
<script src="templates/block-2.js"></script>
<script src="pixelarity/assets/js/jquery.min.js"></script>
<script src="pixelarity/assets/js/jquery.dropotron.min.js"></script>
<script src="pixelarity/assets/js/jquery.scrollgress.min.js"></script>
<script src="pixelarity/assets/js/jquery.scrolly.min.js"></script>
<script src="pixelarity/assets/js/jquery.slidertron.min.js"></script>
<script src="pixelarity/assets/js/skel.min.js"></script>
<script src="pixelarity/assets/js/util.js"></script>
<script src="pixelarity/assets/js/main.js"></script>
<script src="decoblo/js/index.js"></script>

</body>
</html>