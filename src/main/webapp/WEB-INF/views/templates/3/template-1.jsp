<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Insert title here</title>
<link rel="stylesheet" href="/www/templates/common.css" />
<style>
.block-12{
	border:none;
	border:0px;
	margin:0px;
	padding:0px;
	font: 67.5% "Lucida Sans Unicode", "Bitstream Vera Sans", "Trebuchet Unicode MS", "Lucida Grande", Verdana, Helvetica, sans-serif;
	font-size:14px;
	font-weight:bold;
}
.block-12 ul{
	background: rgb(109,109,109);
	height:50px;
	list-style:none;
	margin:0;
	padding:0;
}

.block-12 li{
	float:left;
	padding:0px;
}

.block-12 li a{
	background: rgb(109,109,109);
	color:#cccccc;
	display:block;
	font-weight:normal;
	line-height:50px;
	margin:0px;
	padding:0px 25px;
	text-align:center;
	text-decoration:none;
}

.block-12 li a:hover, .block-12 ul li:hover a{
	background: rgb(71,71,71);
	color:#FFFFFF;
	text-decoration:none;
}

.block-12 li ul{
	background: rgb(109,109,109);
	display:none; /* 평상시에는 드랍메뉴가 안보이게 하기 */
	height:auto;
	padding:0px;
	margin:0px;
	border:0px;
	position:absolute;
	width:200px;
	z-index:200;
}

.block-12 li:hover ul{
	display:block; /* 마우스 커서 올리면 드랍메뉴 보이게 하기 */
}

.block-12 li li {
	background: rgb(109,109,109);
	display:block;
	float:none;
	margin:0px;
	padding:0px;
	width:200px;
}

.block-12 li:hover li a{
	background:none;
}

.block-12 li ul a{
	display:block;
	height:50px;
	font-size:12px;
	font-style:normal;
	margin:0px;
	padding:0px 10px 0px 15px;
	text-align:left;
}

.block-12 li ul a:hover, .block-12 li ul li:hover a{
	background: rgb(71,71,71);
	border:0px;
	color:#ffffff;
	text-decoration:none;
}

.block-12 p{
	clear:left;
}

/******************************************************/
.block-13 {
    position: relative;
    display: inline-block;
}
.block-13 div {
    position: absolute;    
    height: 100%;
    text-align: center;    
    width: 100%;
}
.block-13 div:before {
   content: '';
   display: inline-block;
   height: 100%;
   vertical-align: middle;
}
.block-13 span {
   display: inline-block;
   font-size: 20px; /*or whatever you want*/
   color: #FFF;   
}
.block-13 img {
  display: block;
  max-width: 100%;
  width:1600px;
  height: auto;
}

/******************************************************/
.block-14{
	text-align: center;
	font-family:'Georgia', serif; 
	font-style:italic; 
}

/******************************************************/
.block-15{
	text-align: center;
	font-family:'Georgia', serif; 
	font-style:italic; 
}

/******************************************************/
.block-16{
	text-align: center;
	font-family:'Georgia', serif; 
	font-style:italic; 
}

/******************************************************/
.block-17{
	margin:0 auto;
	width:74%;
	overflow: hidden;
}
.block-17 .left-box{
	float:left;
	padding:10px;
}
.block-17 .right-box{
	 display:inline-block; 
	 width:45%;
	 padding:10px;
}
.block-17 img {
	max-width: 100%;
 	width:100%;
}

/******************************************************/
.block-18{
	margin:0 auto;
	width:74%;
    overflow: hidden;
}
.block-18 .left-box{
	width:50%;
	float:left;
}
.block-18 .right-box{
	display:inline-block; 
	float:right;
}
.block-18 img {
	max-width: 100%;
 	width:100%;
}

/******************************************************/
.block-19{
	text-align: center;
	font-family:'Georgia', serif; 
	font-style:italic; 
}

/******************************************************/
.block-20{
	margin:0 auto;
	width:74%
}
.block-20 .left-box {
	border: 1px solid gold; 
	float: left; 
	width: 30%; 
	padding:10px;
	
}

.block-20 .left-box img{
	max-width: 100%;
 	width:100%;
}

.block-20 .center-box {
	border: 1px solid red; 
	float: left; 
	width: 30%; 
	padding:10px;
}

.block-20 .center-box img{
	max-width: 100%;
 	width:100%;
}

.block-20 .right-box {
	border: 1px solid blue; 
	float: left; 
	width: 30%; 
	padding:10px;
}
.block-20 .right-box img{
	max-width: 100%;
 	width:100%;
}

.block-20 .img-wrapper img {
	width: 33%;
}

</style>
</head>
<body>
<section class="menu-wrapper">
	<section class="block-wrapper">
		<!-- 메뉴 -->
		<div class="block-12">
			 <ul>
			 	<li><a href="#">Home</a></li>
			 	<li><a href="#" id="current">Products</a>
				 	<ul>
				 		<li><a href="#">Sliders</a></li>
				 		<li><a href="#">Galleries</a></li>
				 		<li><a href="#">Apps</a></li>
						<li><a href="#">Extensions</a></li>
					</ul>
					</li>
				<li><a href="#">Company</a></li>
					<li><a href="#">Address</a></li>
			</ul>
		</div>
		<!-- 쇼케이스 -->
		<div class="block-13">
			<div>
				<span class="text-editable">Your Text is responsive and centered</span>
			</div>
			<img src="resources/images/blockThumnail/block702.png"/>
		</div>
		
		<!-- 타이틀 -->
		<div class="block-14">
			<br>
			<hr>
			<br>
			<h3><span class="text-editable">A B O U T&nbsp;&nbsp;&nbsp;C O M P A N Y</span></h3>
			<br>
			<hr>
		</div>
		
		<!-- 텍스트 -->
		<div class="block-15">
			<br><br>
			<h6><span class="text-editable"><strong>E D U C A T I O N</strong></span></h6><br>
            <p><span class="text-editable">2011  Brand New Awards 2011<br>2010  Communication Arts Annual 52<br>2010  If They Can Make it Here<br></span></p><br><br>
            
            <h6><span class="text-editable"><strong>A W A R D S</strong></span></h6><br>
            <p><span class="text-editable">2015  30 Brightest Design Stars Under 30<br>2014  Print New Visual Artists Review<br>2013  ADC Young Guns 9<br></span></p><br><br>
		</div>
		
		<!-- 타이틀 -->
		<div class="block-16">
			<br>
			<hr>
			<br>
			<h3><span class="text-editable">M E N U</span></h3>
			<br>
			<hr>
		</div>
		
		<!-- 켄텐츠 -->
		<div class="block-17">
			<div class="left-box">
				<img src="resources/images/blockThumnail/block706.png"/>
			</div>
			<div class="right-box">
				<h5><em>Etiam ut egestas</em></h5><br>
                <h2><span>SHORT HISTORY11111</span></h2><br>
                <hr>
                <p>In tempor, nisi eget iaculis facilisis, mauris nunc congue risus, a placerat turpis  nibh eget elit. Proin interdum laoreet nisl eget fringilla. Etiam dapibus magna elementum, tempus urna non, pulvinar nulla. Proin varius mauristempus lorem fringilla. Integer augue orci, facilisis quis vestibulum id, feugiat a odio. Nunc vel eleifend eros, vel volutpat ligula. Sed pulvinar vulputate sagittis. Nam id tellus in quam.</p>
			</div>
		</div>
		
		<!-- 켄텐츠 -->
		<div class="block-18">
			<div class="left-box">
				<h5><em>Etiam ut egestas</em></h5><br>
                <h2><span class="fsize30">SHORT HISTORY</span></h2><br>
                <hr>
                <p>In tempor, nisi eget iaculis facilisis, mauris nunc congue risus, a placerat turpis nibh eget elit. Proin interdum laoreet nisl eget fringilla. Etiam dapibus magna elementum, tempus urna non, pulvinar nulla. Proin varius mauris tempus lorem fringilla. Integer augue orci, facilisis quis vestibulum id, feugiat a odio. Nunc vel eleifend eros, vel volutpat ligula. Sed pulvinar vulputate sagittis. Nam id tellus in quam.</p>
			</div>
			<div class="right-box">
				<img src="resources/images/blockThumnail/block707.png"/>
			</div>
		</div>
		
		<!-- 타이틀 -->
		<div class="block-19">
			<br>
			<hr>
			<br>
			<h3><span class="text-editable">P I C T U R E</span></h3>
			<br>
			<hr>
		</div>
		
		<!-- 이미지 -->
		<div class="block-20">
			<div class="img-wrapper" style="text-align: center">
				<img src="www/resources/images/blockThumnail/block708_1.png"/>
				<img src="www/resources/images/blockThumnail/block708_2.png"/>
				<img src="www/resources/images/blockThumnail/block708_3.png"/>
			</div>
		</div>
	</section>
</section>
</body>
</html>