<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DecoBlo - Config</title>
<link rel="stylesheet" href="pixelarity/assets/css/font-awesome.min.css">
<link type="text/css" rel="stylesheet" href="decoblo/css/blockConfig.css">
<link type="text/css" rel="stylesheet" href="decoblo/css/menuConfig.css">
<link type="text/css" rel="stylesheet" href="decoblo/css/blockSetting.css">
<script src="resources/library/js/jquery-3.3.1.min.js"></script>
<script src="resources/library/js/jquery-ui.min.js"></script>
<script src="resources/library/js/wcolpick.js"></script>
<script src="resources/library/js/colpickRmx.js"></script>
<script src="decoblo/js/blockConfig.js"></script>
<script src="decoblo/js/blockSetting.js"></script>

<style>
/**********/
/* Config */
/**********/
* {
	margin: 0;
	padding: 0;
}

/* header */
body#body-config #header {
	background-color: #556273;
	color: #FFFFFF;
	height: 35px;
	overflow: hidden;
}

/* left-menu : menu-config & site-config */
body#body-config #header .left-menu {
	width: 300px;
	height: 100%;
	display: inline-block;
	border: 1px solid #333e4e;
	float: left;
	padding-top: 5px;
	text-align: center;
}

body#body-config #header .left-menu div {
	width: 250px;
	margin: 0 auto;
	display: inline-block;
}


/**************/
/* Navigation */
/**************/
#nav-container{
	overflow: hidden;
}
#menu-config-nav, #site-config-nav{
	width: 300px;
	float: left;
 	border: 1px solid black;
}

</style>
</head>
<body id="body-config">

<header id="header">
	<div class="left-menu">
		<div>메뉴 설정</div>
		<i class="fa fa-chevron-down"></i>
	</div>
	<div class="left-menu">
		<div>사이트 설정</div>
		<i class="fa fa-chevron-down"></i>
	</div>
</header>

<div id="nav-container">
	
	<nav id="menu-config-nav">
		<!-- config-section -->
		<div class="block-config-section">
			<div class="default-config">
				<div class="fold outer-config">
					<span>여백</span> 
					<i class="fa fa-chevron-right right-icon fold-icon"></i>
				</div>
				<div class="inner-config">
					<div class="config-row">
						<label>좌우여백</label>
					</div>
					<div class="config-row">
						<label>상<span class="slider-result">0</span>px</label>
						<div class="range-slider">
						</div>
					</div>
					<div class="config-row">
						<label>하<span class="slider-result">0</span>px</label>
						<span class="range-slider">
						</span>
					</div>
					
				</div>
			</div>
			<div class="default-config">
				<div class="fold outer-config">
					<span>배경</span> 
					<i class="fa fa-chevron-right right-icon fold-icon"></i>
				</div>
				<div class="inner-config">
					<div class="config-row">
						<label>색상</label>
						<input type="color" class="color color-picker transparent">
						<button id="example3"></button>
					</div>
					<div class="config-row">
						<label>이미지</label>
					</div>				
				</div>
			</div>
			<div class="default-config">
				<div class="fold outer-config">
					<span>블럭 링크(앵커)</span> 
					<i class="fa fa-chevron-right right-icon fold-icon"></i>
				</div>
				<div class="inner-config">
					<label>aaaa</label>
				</div>
			</div>
		</div>
		<!-- /config-section -->
	</nav>
	
	<nav id="site-config-nav">
		<div class="block-config-section">
			<div class="default-config">
				<div class="fold outer-config">
					<span id="title">타이틀</span> 
					<input id="editTitle" type="text" value="title" style="width:130px;">
					<i id="titlePencil" class="fa right-icon fa-pencil"></i><!-- 타이틀 수정 버튼 -->
					<i id="check" class="fa fa-check" style=""></i>
				</div>
			</div>
			<ul>
				<li class="fold outer-config">
					<span id="title">타이틀</span> 
					<input id="editTitle" type="text" style="width:130px; display:none">
					<i id="titlePencil" class="fa right-icon fa-pencil"></i><!-- 타이틀 수정 버튼 -->
					<i id="check" class="fa fa-check" style="display:none"></i>
				</li>
				
				<li class="fold outer-config">
					<span>메타태그</span> 
					<i id="metaPencil" class="fa right-icon fa-pencil"></i>
				</li>
					
				<li class="fold outer-config">
					<span>원페이지 스타일</span> 
					<input type="checkbox" id="switch1" checked switch="none" /> 
   					<label for="switch1" data-on-label="On" data-off-label="Off"></label>
				</li>
					
				<li class="fold outer-config">
					<span>우클릭/드래그 방지</span> 
					<input type="checkbox" id="switch2" checked switch="none" /> 
   					<label for="switch2" data-on-label="On" data-off-label="Off"></label>
				</li>
				
				<li class="fold outer-config">
					<span>배경</span> 
					<i class="fa fa-chevron-right right-icon fold-icon"></i>
					<ul class="inner-config">
						<li> dkdk </li>
					</ul>
				</li>
				
				<li class="fold outer-config">
					<span>기본 폰트</span> 
					<i class="fa fa-chevron-right right-icon fold-icon"></i>
					<ul class="inner-config">
						<li> dkdk </li>
					</ul>
				</li>
				
				<li class="fold outer-config">
					<span>파비콘</span> 
					<i class="fa fa-chevron-right right-icon fold-icon"></i>
					<ul class="inner-config">
						<li> dkdk </li>
					</ul>
				</li>
			</ul>
		</div>
	</nav>
</div>


<nav id="block-config-nav">
<div class="blockMenu-sidebar-div">
	<ul class="blockMenu-sidebar-ul">
		<li class="">
			<img  alt="쇼케이스" src="resources/images/blockSettingimg/icon-showcase.png">
			<div>쇼케이스</div>
		</li>
		<li class="">	
			<img alt="타이틀" src="resources/images/blockSettingimg/icon-header.png">
			<div>타이틀</div>
		</li >				
		<li class="">
			<img  alt="컨텐츠" src="resources/images/blockSettingimg/icon-content.png">
			<div>컨텐츠</div>
		</li>
		<li class="">
			<img  alt="텍스트" src="resources/images/blockSettingimg/icon-text.png">
			<div>텍스트</div>
		</li>
		<li class="">
			<img  alt="이미지" src="resources/images/blockSettingimg/icon-image.png">
			<div>이미지</div>
		</li>			
		<li class="">
			<img  alt="구분선" src="resources/images/blockSettingimg/icon-divider.png">
			<div>구분선</div>
		</li>
	</ul>
	<ul class="blockMenu-sidebar-close">
		<li id="blockMenu-sidebar-close">
			<img alt="close" src="resources/images/blockSettingimg/btn_close.png">
		</li>
	</ul>
</div>
</nav>
<!-- 전체 블록 section 시작 -->
<section id="blog-wrapper">
	<!-- 블록 추가 버튼 top -->
	<ul class="add-button" id="add-button-top">
		<li class="add-button-li">
			<div class="add-block">
				<img alt='Plus' src='resources/images/blockSettingimg/fa_plus_icon.png'/>
			</div>
		</li>
	</ul>
	<!-- 블록이 쌓이는 section -->
	<section class="block" id="blockNo">
		<div class="block-setting-cover"></div>
	</section>
	<!-- 블록 추가 버튼 bottom -->
	<ul class="add-button" id="add-button-bottom">
		<li class="add-button-li">
			<div class="add-block">
				<img alt='Plus' src='resources/images/blockSettingimg/fa_plus_icon.png'/>
			</div>
		</li>
	</ul>
	
	<section class="block" id="blockNo">
	
	</section>
</section>

</body>
</html>