<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Untitled</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"/>
<link rel="stylesheet" href="/www/templates/common.css" />

<style>
.menu-wrapper {
}

/* block-7 */
.block-7 {
	height: 100px;
	overflow: hidden;	
}

.block-7 .upper-bar {
	height: 10px;
	background-color: #006341;
}

.block-7 .logo {
	height: 80px;
	width: 80px;
	margin: 5px;
	float: left;
 	background-image: url("https://freeiconshop.com/wp-content/uploads/edd/coffee-takeaway-flat.png");
 	background-size: cover;
}

.block-7 .menubar {
	margin: 60px 0 0 40px;
	float: left;
	font-size: 1.3em;
}

.block-7 .menubar ul li {
	display: inline-block;
	margin-right: 30px;
	color: #020202	;
}

/* block-8 */
.block-8 {	
	background-color: #6D6059;	
}

.block-8 .contents-wrapper {
	padding: 100px 0 ;
	color: #FDFDFD;
	overflow: hidden;
}
.block-8 .contents {
	width: 45%;
	margin-left: 10%;
	margin-right: 20px;
	float: left;
}

.block-8 .contents h2 {
	font-size: 3em;
}

.block-8 .contents p {
	line-height: 1.5em;
	font-size: 1.2em;
	margin: 30px 0;
}

.block-8 button {
	padding: 10px 30px;
	background: rgba(255, 255, 255, 0);
	color: #FDFDFD;
	border: 1px solid #FDFDFD;
	border-radius: 3px;
}

.block-8 button:hover {
	background: rgba(255, 255, 255, 0.3);
}

.block-8 .showcase-image{
	width: 20%;
	margin-left: 10%;
	height: 300px;
	float: left;
	background-image: url(https://m.media-amazon.com/images/S/aplus-media/vc/1c8a1f2f-7718-4de8-96e5-b3c695fba410._SL300__.jpg);
	background-size: cover;
}

/* block-9 */
.block-9 {
	background-image: url(https://media.istockphoto.com/photos/paper-texture-background-picture-id469252888?k=6&m=469252888&s=612x612&w=0&h=GADXQDtdPgmNQim1IXCl9wLurVWk3mK2YyhcF8mGhys=);
	background-size: cover;
	overflow: hidden;
	padding: 10%;
}

.block-9 .contents-wrapper {
	width: 40%;
	float: left;	
}

.block-9 .contents-wrapper h3 {
	font-size: 2em;
	font-weight: bold;
}

.block-9 .contents-wrapper p {
	font-size: 1.2em;
	line-height: 1.5em;
	margin: 30px 0;
}

.block-9 .contents-wrapper a {
	font-size: 1.3em;
	line-height: 1.5em;
	margin: 10px 0;
	color: #020202;
	display: inline-block;
	text-decoration: dotted;
	text-decoration-line: underline;
}

.block-9 .contents-wrapper a:hover {
	text-decoration-style: solid;
	background-color: rgba(255, 255, 255, 0.3);
}

.block-9 .image {
	background-image: url(https://www.incimages.com/uploaded_files/image/1940x900/getty_504333530_361153.jpg);
	background-size: cover;
	width: 50%;
	height: 300px;
	float: left;
	margin: 0 5%;
}

/* block-10 */
.block-10 {
	background-image: url(/www/templates/coffee_background_1.png);
	background-size: cover;
	padding: 8% 0 3% 0;
}

.block-10 .contents-wrapper {
	overflow: hidden;
}

.block-10	.contents-wrapper .inside-image {
		width: 13%;
	height: 200px;
	margin: 0 22%;
	display: inline-block;
	float: left;
	background-image: url(/www/templates/circle_r.png);
	background-size: contain;
	background-repeat: no-repeat;
}

.block-10	.contents-wrapper .contents {
	width: 35%;
	float: left;
	color: #FDFDFD;
	display: inline-block;
}

.block-10	.contents-wrapper .contents h3 {
	font-size: 2em;
	font-weight: bold;
}

.block-10 .contents-wrapper .contents p {
	font-size: 1.2em;
	line-height: 1.5em;
	margin: 30px 0;
}

/* block-11 */
.block-11 {
	padding: 3%;
}
.block-11 h3 {
	font-size: 2em;
	font-weight: bold;
	text-align: center;
}

.block-11 p {
	font-size: 1.2em;
	line-height: 1.5em;
	margin: 30px 0;
	text-align: center;
}

.block-11 .line {
	border-bottom: 2px solid #DDD; 
	width:5%; 
	margin: 0 auto; 
	padding:10px
}

</style>

</head>
<body>
<div class="menu-wrapper">
	<!-- menu, block-7 -->
	<div class="block-wrapper">
		<div class="block-7">
			<div class="upper-bar"></div>
			<div class="logo"></div>
			<div class="menubar">
				<ul>
					<li>COFFEE</li>
					<li>TEA</li>
					<li>MENU</li>
					<li>COFFEEHOUSE</li>					
				</ul>
			</div>
		</div>
	</div>
	<!-- /menu, block-7 -->
	
	<!-- showcase, block-8 -->
	<div class="block-wrapper">
		<div class="block-8">
			<div class="contents-wrapper">
				<div class="contents">
					<h2 class="editable">The art of blending through the eyes of artists</h2>
					<p class="editable">
						Our four-part series, Coffee Stories, continues with chapter three, 
						“Blending.” See how coffee blending inspired muralists Jessie and Katey 
						to create the art for this original, limited-edition packaging for our 
						signature smooth and balanced Pike Place® Roast.
					</p>
					<button class="editable">READ THE FULL STORY</button>
				</div>
				<!-- 움직여야 돼 -->
				<div class="showcase-image">
				</div>
			</div>
		</div>
	</div>
	<!-- /showcase, block-8 -->
	
	<!-- contents, block-9 -->
	<div class="block-wrapper">
		<div class="block-9">
			<div class="contents-wrapper">
				<h3 class="editable">THE BEST COFFEE. STARBUCKS COFFEE FINDER.</h3>
				<p class="editable">
					Our coffee masters have distilled their years of tasting knowledge down to three simple 
					questions to help you find a Starbucks coffee you’re sure to love.
				</p>
				<a href="#" class="editable">
					Explore our coffees
				</a>
				<br>
				<a href="#" class="editable">
					Browse our coffees
				</a>
			</div>
			<div class="image">
			</div>
		</div>
	</div>
	<!-- /contents, block-9 -->	
	
	
	<!-- contents, block-10 -->
	<div class="block-wrapper">
		<div class="block-10">
			<div class="contents-wrapper">
				<div>
					<div class="inside-image">
					</div>		
					<div class="contents">			
						<h3 class="editable">OUR RAREST COFFEES, SMALL-BATCH ROASTED IN SEATTLE</h3>
						<p class="editable">
							We travel the world in search of great coffee. In the process, we discover beans 
							so special and rare that we can’t wait to bring them home and share. Each of these 
							small-lot coffees has its own story to tell, and we meticulously develop a signature 
							roast for every one of them
						</p>				
					</div>
				</div>
			</div>			
		</div>
	</div>
	<!-- /contents, block-10 -->
	
	<!-- text, block-11 -->
	<div class="block-wrapper">
		<div class="block-11">
			<h3>Explore the range in every roast.</h3>
			<div class="line"></div>
			<p>
				Each Starbucks® roast boasts a variety of tastes and flavors 
				<br>
				so you can bring home a new favorite.
			</p>
		</div>
	</div>
	<!-- /text, block-11 -->	
	
</div>

<script src="/www/resources/library/js/jquery-3.3.1.min.js"></script>
</body>
</html>