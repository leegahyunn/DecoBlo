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
</div>

<script src="resources/library/js/jquery-3.3.1.min.js"></script>
<script src="templates/block-1.js"></script>

</body>
</html>