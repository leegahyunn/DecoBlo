<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Untitled</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" />
<link rel="stylesheet" href="templates/common.css" />
<link rel="stylesheet" href="templates/block-1.css" />
<link rel="stylesheet" href="templates/block-2.css" />
<style type="text/css">
.photo {
	width: 300px;
	height: 280px;
	object-fit: cover;
	object-position: bottom;
	border-radius: 50%;
	margin-right: 50px;
	margin-left: 100px;
	margin-top: 10px;
	margin-bottom: 10px;
}

.block-3 {
	background-size: cover;
	background-repeat: no-repeat;
	height: 600px;
	background-color: #D8D8D8;
}

.showcase {
	width: 800px;
	height: 600px;
	padding: 30px;
	margin-bottom: 30px;
	margin-top: 30px;
	margin-left: 250px;
	margin-right: 0px;
}

.left {
	float: left;
	width: auto;
	height: auto;
}

* {
	box-sizing: border-box
}

body {
	font-family: Verdana, sans-serif;
	margin: 0
}

.mySlides {
	display: none
}

.slideshow-container {
	max-width: 1000px;
	position: relative;
	width: 1000px;
	height: auto;
	padding: 30px;
	margin-bottom: 30px;
	margin-top: 30px;
	margin-left: 250px;
	margin-right: 0px;
}

.prev, .next {
	cursor: pointer;
	position: absolute;
	top: 50%;
	width: auto;
	padding: 16px;
	margin-top: -22px;
	color: white;
	font-weight: bold;
	font-size: 18px;
	transition: 0.6s ease;
	border-radius: 0 3px 3px 0;
}

.next {
	right: 0;
	border-radius: 3px 0 0 3px;
}

.dot {
	cursor: pointer;
	height: 15px;
	width: 15px;
	margin: 0 2px;
	background-color: #bbb;
	border-radius: 50%;
	display: inline-block;
	transition: background-color 0.6s ease;
}

.active, .dot:hover {
	background-color: #717171;
}

.fade {
	-webkit-animation-name: fade;
	-webkit-animation-duration: 1.5s;
	animation-name: fade;
	animation-duration: 1.5s;
}

@
-webkit-keyframes fade {
	from {opacity: .4
}

to {
	opacity: 1
}

}
@
keyframes fade {
	from {opacity: .4
}

to {
	opacity: 1
}

}
@media only screen and (max-width: 300px) {
	.prev, .next, .text {
		font-size: 11px
	}
}

.block-4 {
	background-repeat: no-repeat;
	height: 900px;
	background-size: cover;
}

.imgs1 {
	display: flex;
	height: 300px;
	background-image:
		url("https://t1.daumcdn.net/cfile/tistory/274BC649563899A622");
}

.img1 {
	flex-basis: 515px;
}

.img2 {
	flex-basis: 515px;
}

.img3 {
	flex-basis: 515px;
}

.imgs2 {
	display: flex;
	height: 300px;
	background-image:
		url("https://t1.daumcdn.net/cfile/tistory/274BC649563899A622");
}

.img4 {
	flex-basis: 515px;
}

.img6 {
	flex-basis: 515px;
}

.img5 {
	flex-basis: 515px;
}

.imgs3 {
	display: flex;
	height: 300px;
	background-image:
		url("https://t1.daumcdn.net/cfile/tistory/274BC649563899A622");
}

.img7 {
	flex-basis: 515px;
}

.img8 {
	flex-basis: 515px;
}

.img9 {
	flex-basis: 515px;
}

.block-5 {
	background-size: cover;
	background-repeat: no-repeat;
	height: 300px;
	border: 2px solid black;
}

.picter {
	height: 90%;
	width: 38%;
	float: left;
	margin-top: 1%;
	margin-left: 1%;
}

.ptitle {
	height: 30%;
	width: 40%;
	margin-left: 40%;
	margin-right: 30%;
	margin-top: 1%;
	text-overflow: ellipsis;
}

.pbonmon {
	height: 59%;
	width: 60%;
	margin-right: 30%;
	margin-left: 40%;
	margin-top: 0.3%;
	font-size: 13px;
	font-style: inherit;
	text-overflow: ellipsis;
}

.picimg {
	width: 100%;
	height: 100%;
}

.ptfont {
	font-size: 80px;
	font-style: italic;
	color: gray;
	font-weight: bold;
	height: auto;
	overflow: hidden;
	text-overflow: ellipsis;
}

.block-6 {
	background-size: 100%;
	background-image:url("http://ojsfile.ohmynews.com/STD_IMG_FILE/2017/0926/IE002223822_STD.jpg");
	background-repeat: no-repeat;
	height: 600px;
	font-size: 200px;
	color: white;
	text-align: center;
	font-style: italic;
}


</style>
</head>
<body>
	<div class="menu-wrapper">
		<!-- ------------------ -->
		<!-- 메뉴 블록, block-1 -->
		<!-- ------------------ -->
		<div class="block-wrapper">
			<div class="block-1">
				<div class="titleleft">
					<h1>
						<a href="#">Deco <span>Blo</span></a>
					</h1>
				</div>

				<div class="titleright">
					<nav id="nav">
						<ul>
							<li><a href="#">Home</a></li>
							<li class="dropdown-menu"><a href="#"><i
									class="fa fa-angle-down"></i> Layouts</a>
								<ul class="dropdown-opt">
									<li><a href="#">Left Sidebar</a></li>
									<li><a href="#">Right Sidebar</a></li>
									<li><a href="#">No Sidebar</a></li>
								</ul></li>
							<li><a href="elements.html">Elements</a></li>
						</ul>
					</nav>
				</div>
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
			<div class="temp-space"></div>
			<h2 class="showcase-title">Lorem Ipsum</h2>
			<p class="showcase-content">Neque porro quisquam est qui dolorem
				ipsum quia dolor sit amet</p>
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
			<div class="slideshow-container">

				<div class="mySlides fade">

					<img
						src="https://post-phinf.pstatic.net/MjAxODAxMTVfMjQ4/MDAxNTE2MDA3Mjk1NTc0.trofpy35cywF7usTPQLpNa2TDwglm2QLXlB8YRCtcXkg.ntDPMI3ayEXTFisVKzX1_e1PWyi0TESajPzU1PfoEdcg.PNG/07_%EB%A9%94%EA%B0%80%EB%A6%AC%EC%9E%90%EB%AA%BD-%ED%94%BC%EC%B9%B4%EC%B8%84final2.png?type=w1200"
						style="width: 100%; height: 500px;">

				</div>

				<div class="mySlides fade">

					<img
						src="http://123emoji.com/wp-content/uploads/2017/08/sticker-5-225.png"
						style="width: 100%; height: 500px;">

				</div>

				<div class="mySlides fade">

					<img
						src="http://dh.aks.ac.kr/Edu/wiki/images/3/3a/%ED%94%BC%EC%B9%B4.jpg"
						style="width: 100%; height: 500px;">
				</div>
				<div class="left">
					<a class="prev" onclick="plusSlides(-1)" style="left: 30px;"><i
						class="fas fa-chevron-circle-left"
						style="font-size: 50px; color: black;"></i></a>
				</div>
				<div class="right">
					<a class="next" onclick="plusSlides(1)" style="right: 30px;"><i
						class="fas fa-chevron-circle-right"
						style="font-size: 50px; color: black;"></i></a>
				</div>
			</div>
		</div>
 
		<br>

		<div style="text-align: center">
			<span class="dot" onclick="currentSlide(1)"></span> <span class="dot"
				onclick="currentSlide(2)"></span> <span class="dot"
				onclick="currentSlide(3)"></span>
		</div>
		<hr />
		<!-- ----------------------- -->
		<!-- /쇼케이스 블록, block-3 -->
		<!-- ----------------------- -->
		<!-- ---------------------- -->
		<!-- 쇼케이스 블록, block-4 -->
		<!-- ---------------------- -->
		<div class="block-4">
			<div class="imgs1">
				<div class="img1">
					<img
						src="https://pbs.twimg.com/profile_images/877379845176541184/-sgYExQd_400x400.jpg"
						class="photo" alt="Norway">
				</div>
				<div class="img2">
					<img
						src="data:image/jpeg;base64,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"
						class="photo" alt="Norway">
				</div>
				<div class="img3">
					<img
						src="https://pbs.twimg.com/profile_images/877379845176541184/-sgYExQd_400x400.jpg"
						class="photo" alt="Norway">
				</div>
			</div>
			<div class="imgs2">
				<div class="img4">
					<img
						src="https://pbs.twimg.com/profile_images/877379845176541184/-sgYExQd_400x400.jpg"
						class="photo" alt="Norway">
				</div>
				<div class="img5">
					<img
						src="https://pbs.twimg.com/profile_images/877379845176541184/-sgYExQd_400x400.jpg"
						class="photo" alt="Norway">
				</div>
				<div class="img6">
					<img
						src="https://pbs.twimg.com/profile_images/877379845176541184/-sgYExQd_400x400.jpg"
						class="photo" alt="Norway">
				</div>
			</div>
			<div class="imgs3">
				<div class="img7">
					<img
						src="https://pbs.twimg.com/profile_images/877379845176541184/-sgYExQd_400x400.jpg"
						class="photo" alt="Norway">
				</div>
				<div class="img8">
					<img
						src="https://pbs.twimg.com/profile_images/877379845176541184/-sgYExQd_400x400.jpg"
						class="photo" alt="Norway">
				</div>
				<div class="img9">
					<img
						src="https://pbs.twimg.com/profile_images/877379845176541184/-sgYExQd_400x400.jpg"
						class="photo" alt="Norway">
				</div>
			</div>
			<!-- ---------------------- -->
			<!-- /쇼케이스 블록, block-4 -->
			<!-- ---------------------- -->
			<!-- ---------------------- -->
			<!-- 쇼케이스 블록, block-5 -->
			<!-- ---------------------- -->
		</div>
		<div class="block-5">
			<div class="picter">
				<img
					src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdZih8a5nOuKze6zGEFVqcDpV5ZDthvt64Ywv69821VFyVRa_eBA"
					class="picimg">
			</div>
			<div class="ptitle">
				<p class="ptfont" id="ptfont" contenteditable="true"
					onkeyup="lengthlow();">초밥먹고 싶다</p>
				<hr />
			</div>

			<div class="pbonmon" contenteditable="true">In tempor, nisi
				eget iaculis facilisis, mauris nunc congue risus, a placerat turpis
				nibh eget elit. Proin interdum laoreet nisl eget fringilla. Etiam
				dapibus magna elementum, tempus urna non, pulvinar nulla. Proin
				varius mauris tempus lorem fringilla. Integer augue orci, facilisis
				quis vestibulum id, feugiat a odio. Nunc vel eleifend eros, vel
				volutpat ligula. Sed pulvinar vulputate sagittis. Nam id tellus in
				quam.</div>
		</div>
		<!-- ---------------------- -->
		<!-- /쇼케이스 블록, block-5 -->
		<!-- ---------------------- -->
		<!-- ---------------------- -->
		<!-- 쇼케이스 블록, block-6 -->
		<!-- ---------------------- -->
		<div class="block-6" id="block-6" style="align-content: center;">
		
		</div>
	</div>
	<!-- Scripts -->
	<script src="resources/library/js/jquery-3.3.1.min.js"></script>
	<script src="templates/block-1.js"></script>
	<script src="templates/block-2.js"></script>
	<script src="pixelarity/assets/js/jquery.min.js"></script>
	<script src="pixelarity/assets/js/jquery.dropotron.min.js"></script>
	<script src="pixelarity/assets/js/jquery.slidertron.min.js"></script>
	<script src="pixelarity/assets/js/skel.min.js"></script>
	<script src="pixelarity/assets/js/util.js"></script>
	<script src="pixelarity/assets/js/main.js"></script>
	<script src="decoblo/js/index.js"></script>
	<script src="templates/slides.min.jquery.js"></script>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript">
		window.onload = function(){
			startTime();
			
		}
	
		var slideIndex = 1;
		showSlides(slideIndex);

		function plusSlides(n) {
			showSlides(slideIndex += n);
		}

		function currentSlide(n) {
			showSlides(slideIndex = n);
		}

		function showSlides(n) {
			var i;
			var slides = document.getElementsByClassName("mySlides");
			var dots = document.getElementsByClassName("dot");
			if (n > slides.length) {
				slideIndex = 1
			}
			if (n < 1) {
				slideIndex = slides.length
			}
			for (i = 0; i < slides.length; i++) {
				slides[i].style.display = "none";
			}
			for (i = 0; i < dots.length; i++) {
				dots[i].className = dots[i].className.replace(" active", "");
			}
			slides[slideIndex - 1].style.display = "block";
			dots[slideIndex - 1].className += " active";
		}
		function lengthlow() {
			var leng = document.getElementById("ptfont").innerHTML
			var length = leng.length;
			if (length > 7) {
				alert("타이틀은 최대 10자까지만 입력가능합니다");

			}
		}
		function startTime() {
			var today = new Date();
			var h = today.getHours();
			var m = today.getMinutes();
			var s = today.getSeconds();
			m = checkTime(m);
			s = checkTime(s);
			var dd = today.getDate();
			var mm = today.getMonth()+1; //January is 0!
			var yyyy = today.getFullYear();
			var form;

			if(dd<10) {
			    dd='0'+dd
			} 

			if(mm<10) {
			    mm='0'+mm
			} 
			
			document.getElementById('block-6').innerHTML ='<br/>'+ h + ":" + m + ":" + s + '<br/>'+'<p style="font-size: 50px;" >' + yyyy+'년 '+mm+'월 '+dd+'일 '+'<p/>';
			var t = setTimeout(startTime, 500);
			
		}
		function checkTime(i) {
			if (i < 10) {
				i = "0" + i;
			}
			
			return i;
		}
		
		
	</script>


</body>
</html>