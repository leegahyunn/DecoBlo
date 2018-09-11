<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>DecoBlo - Create Your Own Blog</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="pixelarity/assets/css/main.css" />
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

.showbox .thumbnails-wrapper {
	width: 100%;
	height: 40%;
}

.showbox .thumbnails-wrapper .img {
	width: 100%;
	height: 100%;
}

.post-thumbnails {
	width: 20%;
    height: 100%;
}

.post-contents {
	text-overflow: ellipsis;
	height: 100%;
	overflow: hidden;
	 
	white-space: normal; 
	line-height: 1.2; 
	
	text-align: left; 
	word-wrap: break-word; 
	display: -webkit-box; 
	-webkit-line-clamp: 3; 
	-webkit-box-orient: vertical;

}
.hot-contents {
	text-overflow: ellipsis;
	height: 30%;
	overflow: hidden;
	 
	white-space: pre; 
	line-height: 1.2; 
	 
	text-align: left; 
	word-wrap: break-word; 
	display: -webkit-box;
	-webkit-box-orient: vertical;
	-webkit-line-clamp: 3; 
}

.subscribe-new .top .ttext {
	padding: 5px;
}

.show-box .hot-title, .show-box .hot-content {
	padding: 5px;
	margin: 5px;
	
}
.hot-content{
	text-overflow: ellipsis;
	height: 48%;
	overflow: hidden;
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
					<div class="showbox">
						<h2>HOT ISSUE</h2>
						<a class="prev" onclick="plusSlides(-1)"></a>
						<div class="slideshow">
							<div class="thumbnails-wrapper">
								<img width="100%" height="100%" src="resources/images/sample1.jpg">
							</div>
							<h3 class="hot-title">
								Lorem Ipsum
							</h3>
							<p class="hot-content">
								Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
								Nunc vitae iaculis ex, ut feugiat enim. Fusce vitae arcu magna. 
								Nunc interdum ullamcorper blandit. Suspendisse pharetra dui 
								vel augue posuere tincidunt. Integer fringilla nec tortor nec 
								dignissim. Integer egestas, sem id ornare sollicitudin, nunc 
								metus aliquet lorem, quis porta orci dolor at justo. 
							</p>
						</div>
						<div class="slideshow2">
							<div class="thumbnails-wrapper">
								<img width="100%" height="100%" src="resources/images/sample2.jpg">
							</div>
							<h3 class="hot-title">
								Lorem Ipsum
							</h3>
							<p class="hot-content">
								Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
								Nunc vitae iaculis ex, ut feugiat enim. Fusce vitae arcu magna. 
								Nunc interdum ullamcorper blandit. Suspendisse pharetra dui 
								vel augue posuere tincidunt. Integer fringilla nec tortor nec 
								dignissim. Integer egestas, sem id ornare sollicitudin, nunc 
								metus aliquet lorem, quis porta orci dolor at justo. 
							</p>
						</div>
						<div class="slideshow3">
							<div class="thumbnails-wrapper">
								<img width="100%" height="100%" src="resources/images/sample3.jpg">
							</div>
							<h3 class="hot-title">
								Lorem Ipsum
							</h3>
							<p class="hot-content">
								Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
								Nunc vitae iaculis ex, ut feugiat enim. Fusce vitae arcu magna. 
								Nunc interdum ullamcorper blandit. Suspendisse pharetra dui 
								vel augue posuere tincidunt. Integer fringilla nec tortor nec 
								dignissim. Integer egestas, sem id ornare sollicitudin, nunc 
								metus aliquet lorem, quis porta orci dolor at justo. 
							</p>
						</div>

					</div>
				</section>
			</section>

			<header>
				<div class="a"></div>


				<hr />
				<div class="box"></div>
			</header>

			
			<h2>이웃 새글</h2>
			<div class="subscribe-new">
				<div class="top">
					<div class="ttext">
						<h3 class="post-title">
							Lorem Ipsum
						</h3>
						<p class="post-content">
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nunc vitae iaculis ex, ut feugiat enim. Fusce vitae arcu magna. 
							Nunc interdum ullamcorper blandit. Suspendisse pharetra dui 
							vel augue posuere tincidunt. Integer fringilla nec tortor nec 
							dignissim. Integer egestas, sem id ornare sollicitudin, nunc 
							metus aliquet lorem, quis porta orci dolor at justo. 
						</p>
					</div>
					<div class="timg post-thumbnails">
						<img width="100%" height="100%" src="resources/images/sample3.jpg">
					</div>
				</div>
				<hr />
				<div class="top">
					<div class="ttext">
						<h3 class="post-title">
							Lorem Ipsum
						</h3>
						<p class="post-content">
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nunc vitae iaculis ex, ut feugiat enim. Fusce vitae arcu magna. 
							Nunc interdum ullamcorper blandit. Suspendisse pharetra dui 
							vel augue posuere tincidunt. Integer fringilla nec tortor nec 
							dignissim. Integer egestas, sem id ornare sollicitudin, nunc 
							metus aliquet lorem, quis porta orci dolor at justo. 
						</p>
					</div>
					<div class="timg post-thumbnails">
						<img width="100%" height="100%" src="resources/images/sample3.jpg">
					</div>
				</div>
				<hr />
				<div class="top">
					<div class="ttext">
						<h3 class="post-title">
							Lorem Ipsum
						</h3>
						<p class="post-content">
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
							Nunc vitae iaculis ex, ut feugiat enim. Fusce vitae arcu magna. 
							Nunc interdum ullamcorper blandit. Suspendisse pharetra dui 
							vel augue posuere tincidunt. Integer fringilla nec tortor nec 
							dignissim. Integer egestas, sem id ornare sollicitudin, nunc 
							metus aliquet lorem, quis porta orci dolor at justo. 
						</p>
					</div>
					<div class="timg post-thumbnails">
						<img width="100%" height="100%" src="resources/images/sample3.jpg">
					</div>
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