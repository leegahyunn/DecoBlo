<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<style type="text/css">
<!-- 메뉴 -->
.block-801 {
	height:22%;
	background-color: white;
	overflow: hidden;
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
	
}
<!-- 메뉴 -->
/* Title */
.block-801 h1 {
	color: inherit;
	padding: 0.7em;
	line-height: inherit;
	font-weight: 700;
	letter-spacing: -0.01em;
	float: left;
}

.block-801 h1 span {
	font-weight: 300;
}



.block-801 nav {
	padding: 3em;	
	height: inherit;
	line-height: inherit;
	vertical-align: middle;
	display: block;
	float: right;
	font-size: 20px;
	font-weight: bold;
	
}

.block-801 nav > ul {
	list-style: none;
	margin: 0;
	padding-left: 0;
}

.block-801 nav > ul > li {
	border-radius: 0.5em;
	display: inline-block;
	margin-left: 2em;
	padding-left: 0;
	color: gray;
}


.block-801 a{ 

	text-decoration:none 

}
<!-- 쇼케이스 -->
.block-803{
  height: 60%;
  width: auto;

}
	
* {box-sizing:border-box}

body {font-family: Verdana,sans-serif;margin:0}


.slideshow-container {

width: 100%;

height: 300px;

position: static;

margin: auto;

margin-top: 50px;

}

.main_slideImg{

width: 100%; 

height: 510px; 

top : 100px;

}



.prev, .next {

  cursor: pointer;

  position: absolute;

  text-align : center;

  top: 0;

  top: 60%;

  width: 3%;

  padding: 16px;

  margin-top: -22px;

  color: white;

  font-weight: bold;

  font-size: 18px;

  transition: 0.6s ease;

  border-radius: 0 3px 3px 0;

  z-index: 100;

}



.next {

  right: 0;

  border-radius: 3px 0 0 3px;

}



.prev:hover, .next:hover {

  background-color: rgba(0,0,0,0.8);

}

.numbertext {

  color: #f2f2f2;

  font-size: 12px;

  padding: 8px 12px;

  position: absolute;

  top: 0;

}
.dot {

  cursor:pointer;

  height: 13px;

  width: 13px;

  margin: 0 2px;

  background-color: #bbb;

  border-radius: 50%;

  display: inline-block;

  transition: background-color 0.6s ease;

}

.active, .dot:hover {

  background-color: #717171;

}


.fade2 {

  -webkit-animation-name: fade;

  -webkit-animation-duration: 0.5s;

  animation-name: fade;

  animation-duration: 5s;

}

@-webkit-keyframes fade2 {

  from {opacity: .4}

  to {opacity: 1}

}

@keyframes fade2 {

  from {opacity: .4}

  to {opacity: 1}

}


@media only screen and (max-width: 300px) {

  .slprev, .slnext,.text {font-size: 11px}

}

.showbutton{
	position: absolute;
	bottom: 8%;
	left: 48%;

}
	<!-- 쇼케이스 -->
	<!-- 컨테츠 박스 -->
.block-804{
	position:relative;
	height: 50%;
	clear: both;
	
}

.block-804 img{
	
	width: 100%;
	height: 488px;
	
}	
.titlebox{
	position: absolute;
	width: 48%;
	top:97%;
	left: 52%;
}	

.titlebox h2{
	font-size: 32px;
	font-weight: bold;
	font-style: italic;

}
.textbox{
	position: absolute;
	width: 45%;
	top:100%;
	left:52%;
	margin-top: 100px;
}
.textbox span{
	font-weight: bolder;
	color: 392f31;

}
.imgbox{
	position: absolute;
	width: 48%;
	top:100%;
	left: 2%;
	

}
.conimg{
	opacity: 0.4;

}
	
	<!-- 컨테츠 박스 -->
</style>
<meta  charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Insert title here</title>
</head>
<body>

<section class="menu-wrapper">
 <section class="block_wrapper">
   <!-- 메뉴 -->
   <div class="block-801">
   	 <div class="titleleft">
		<a href="#" ><img  src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/24/LEGO_logo.svg/330px-LEGO_logo.svg.png" style="width: 10%; height:5%; ">
			</a>
				<nav id="nav">	
					<ul>
				<li><a href="#">게시판</a></li>
				<li><a href="#">DecoBlo</a></li>
				<li><a href="#">고객센터</a></li>
				</ul>
			</nav>
	  </div>
   </div>
   <!-- 구분선 -->
   <div class="block-802">
   		<hr style="border: outset 10px red;"/>
   			</div>
   	<!-- 쇼케이스 -->
   <div class="block-803">
   			<div class="mySlides fade2">
				<img class="main_slideImg" src="http://www.gamingrespawn.com/wp-content/uploads/2018/04/incredibles_legos.jpg">
						</div>
			<div class="mySlides fade2">
				<img class="main_slideImg" src="https://www.mindmeister.com/images/download/35785147">
						</div>
			<div class="mySlides fade2">
				<img class="main_slideImg" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ59BwGMzYT8NtSM8yeMCgrzf7aEU4LjtucYdA1vhthx8DkGwKaMg">
						</div>
			<a class="prev" onclick="plusSlides(-1)">❮</a>
			<a class="next"onclick="plusSlides(1)">❯</a>
	<div class="showbutton">
			<span class="dot" onclick="currentSlide(1)"></span> 
			<span class="dot" onclick="currentSlide(2)"></span>
			<span class="dot" onclick="currentSlide(3)"></span>
			</div>	
		</div>
		<!-- 컨테츠 박스 -->
	<div class="block-804">
	<img src="https://www.mindmeister.com/images/download/35785147" class="conimg">
	
		<div class="titlebox">
		<h2>title 입니다만?</h2>
					</div>
		<div class="imgbox">
			<img src= "https://i.ytimg.com/vi/vPdJBs7GVGQ/maxresdefault.jpg" style="height: 420px;">
				</div>
			<div class="textbox">
			<span>A full belly is the mother of all evil.
				배부른 것이 모든 악의 어머니이다.
				Love your neighbor as yourself.
				네 이웃을 네 몸처럼 사랑하여라
				It is a wise father that knows his own child.
				자기 자식을 아는 아버지는 현명한 아버지이다.
				By doubting we come at the truth.
				의심함으로써 우리는 진리에 도달한다
				Absence makes the heart grow fonder.
				떨어져 있으면 정이 더 깊어진다
				Habit is second nature.
				습관은 제2의 천성이다.
				</span>
		</div>
	</div>		
</section>
</section>
</body>
<script src="/www/resources/library/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
<!-- 쇼케이스 -->
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
	if (n > slides.length) {slideIndex = 1}
	if (n < 1) {slideIndex = slides.length}
	for (i = 0; i < slides.length; i++) {
		slides[i].style.display = "none";
	}
	for (i = 0; i < dots.length; i++) {
		dots[i].className = dots[i].className.replace(" active", "");
	}
	slides[slideIndex-1].style.display = "block";
	dots[slideIndex-1].className += " active";
	}

</script>
</html>