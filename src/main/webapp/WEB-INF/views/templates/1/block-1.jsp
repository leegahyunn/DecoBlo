<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Untitled</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"/>
<!-- <link rel="stylesheet" href="./block-1.css" /> -->
<style>
/**********/
/* 초기화 */
/**********/
html, body, div, span, applet, object, iframe,
h1, h2, h3, h4, h5, h6, p, blockquote, pre,
a, abbr, acronym, address, big, cite, code,
del, dfn, em, img, ins, kbd, q, s, samp,
small, strike, strong, sub, sup, tt, var,
b, u, i, center,
dl, dt, dd, ol, ul, li,
fieldset, form, label, legend,
table, caption, tbody, tfoot, thead, tr, th, td,
article, aside, canvas, details, embed, 
figure, figcaption, footer, header, hgroup, 
menu, nav, output, ruby, section, summary,
time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
}
/* HTML5 display-role reset for older browsers */
article, aside, details, figcaption, figure, 
footer, header, hgroup, menu, nav, section {
	display: block;
}
body {
	line-height: 1;
}
ol, ul {
	list-style: none;
}
blockquote, q {
	quotes: none;
}
blockquote:before, blockquote:after,
q:before, q:after {
	content: '';
	content: none;
}
table {
	border-collapse: collapse;
	border-spacing: 0;
}

a {
	color: #fff; 
	text-decoration: none; 
	outline: none
}

	a:hover, a:active {
		text-decoration: none; 
		color:#fff; 
	}

/**********************/
/* 메뉴 블록, block-1 */
/**********************/
/* delete */
body{
}

.block-1 {
}

/* Title */
.block-1 h1 {
	color: inherit;
	padding: 0.7em;
	line-height: inherit;
	font-weight: 700;
	letter-spacing: -0.01em;
	float: left;
}

.block-1 h1 span {
	font-weight: 300;
}

/* Navigation */
.block-1 nav {
	padding: 0.7em;	
	height: inherit;
	line-height: inherit;
	vertical-align: middle;
	display: block;
	float: right;
}

.block-1 nav > ul {
	list-style: none;
	margin: 0;
	padding-left: 0;
}

.block-1 nav > ul > li {
	border-radius: 0.5em;
	display: inline-block;
	margin-left: 2em;
	padding-left: 0;
}

/* drop down */
.block-1 nav .dropdown-menu .dropdown-opt {
	display: inline-block;
	user-select: none;
    position: absolute;
    z-index: 1000;
    left: 0px;
    top: 0px;
    opacity: 1;
    display: none;
    background-color: #ECECEC;
    padding: 5px;    
}
.block-1 nav .dropdown-menu .dropdown-opt li {
	padding: 10px;
}
.block-1 nav .dropdown-menu .dropdown-opt li a {
	color: #232323;
}


/*********************/
/* 쇼케이스, block-2 */
/*********************/
.block-2 {
	background-image: url('./resources/images/images.jpg'); 
	background-size: cover; 
	background-repeat: no-repeat; 
	height: 300px;
}

.block-2 .title-wrapper {
		
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
			<div class="title-wrapper">
				<h2 class="showcase-title vertical-center">
					Lorem Ipsum
				</h2>
			</div>
		</div>
	</div>
	<!-- ----------------------- -->
	<!-- /쇼케이스 블록, block-1 -->
	<!-- ----------------------- -->
</div>

<script src="resources/library/js/jquery-3.3.1.min.js"></script>
<script>
/***********/
/* Block 1 */
/***********/

/* 메뉴 드롭다운 */
$('.block-1 nav').on('mouseenter', 'li.dropdown-menu', function(){
	var top = $(this).offset().top + $(this).height() + 30;
	var left = $(this).offset().left + $(this).width() - $(this).children('ul.dropdown-opt').width();
	$(this).children('ul.dropdown-opt').css({
		'display' : 'block',
		'left' : left,
		'top' : top
	});
});

$('.block-1 nav').on('mouseleave', 'li.dropdown-menu', function(){
	var target = $(this); 
	setTimeout(function(){
		target.children('ul.dropdown-opt').css({
			'display' : 'none',
		});
	}, 500);
});

$('.block-1 nav').on('mouseleave', '.dropdown-opt', function(){
	$(this).css({
		'display' : 'block',
	});
});

$('.block-1 nav').on('mouseleave', '.dropdown-opt', function(){
	var target = $(this); 
	setTimeout(function(){
		target.children('ul.dropdown-opt').css({
			'display' : 'none',
		});
	}, 500);
});

console.log($('.vertical-center').top());
</script>

</body>
</html>