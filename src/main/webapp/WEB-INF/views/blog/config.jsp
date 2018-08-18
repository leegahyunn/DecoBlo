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
<link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="decoblo/js/jquery.nestable.js"></script>
<script type="text/javascript" src="http://pagead2.googlesyndication.com/pagead/show_ads.js"> </script>
<script src="resources/library/js/jquery-ui.min.js"></script>
<script src="resources/library/js/wcolpick.js"></script>
<script src="resources/library/js/colpickRmx.js"></script>
<script src="decoblo/js/blockConfig.js"></script>
<script src="decoblo/js/menuConfig.js"></script>

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

/**************/
/* On/Off 버튼 */
/**************/
.switch {
  position: relative;
  display: inline-block;
  width: 30px;
  height: 17px;
}
.switch input {display:none;}
.slider {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #ccc;
  -webkit-transition: .2s;
  transition: .2s;
}
.slider:before {
  position: absolute;
  content: "";
  height: 13px;
  width: 13px;
  left: 2px;
  bottom: 2px;
  background-color: white;
  -webkit-transition: .2s;
  transition: .2s;
}
input:checked + .slider {
  background-color: #2196F3;
}
input:focus + .slider {
  box-shadow: 0 0 0.5px #2196F3;
}
input:checked + .slider:before {
  -webkit-transform: translateX(13px);
  -ms-transform: translateX(13px);
  transform: translateX(13px);
}
.slider.round {
  border-radius: 17px;
}
.slider.round:before {
  border-radius: 50%;
}
div label.right-icon{
	float: right;
}

/**************/
/*   드롭다운     */
/**************/
.menu-flip, .menu-panel, .site-panel, .site-flip {
	padding: 5px;
}
.menu-panel, .site-panel{
    display: none;
}


/**************/
/*메뉴 드래그앤드롭*/
/**************/
.dd { position: relative; display: block;}

.dd-list { display: block; position: relative; }
.dd-list .dd-list { padding-left: 30px; }


.dd-item,
.dd-empty,
.dd-placeholder { display: block; position: relative; margin: 0; padding: 0; min-height: 20px; font-size: 13px; line-height: 20px; }

.dd-handle { display: block; margin: 5px 0; padding: 5px 10px;   font-weight: bold; border: 1px solid #ccc;
    background: #fafafa;
    background: -webkit-linear-gradient(top, #fafafa 0%, #eee 100%);
    background:    -moz-linear-gradient(top, #fafafa 0%, #eee 100%);
    background:         linear-gradient(top, #fafafa 0%, #eee 100%);
    -webkit-border-radius: 3px;
            border-radius: 3px;
    box-sizing: border-box; -moz-box-sizing: border-box;
}
.dd-handle:hover { color: #2ea8e5; background: #fff; }

.dd-item > button { display: block; position: relative; cursor: pointer; float: left; width: 25px; height: 20px; margin: 5px 0; padding: 0; text-indent: 100%; white-space: nowrap; overflow: hidden; border: 0; background: transparent; font-size: 12px; line-height: 1; text-align: center; font-weight: bold; }
.dd-item > button:before { content: '+'; display: block; position: absolute; width: 100%; text-align: center; text-indent: 0; }
.dd-item > button[data-action="collapse"]:before { content: '-'; }

.dd-placeholder,
.dd-empty { margin: 5px 0; padding: 0; min-height: 30px; background: #f2fbff; border: 1px dashed #b6bcbf; box-sizing: border-box; -moz-box-sizing: border-box; }
.dd-empty { border: 1px dashed #bbb; min-height: 100px; background-color: #e5e5e5;
    background-image: -webkit-linear-gradient(45deg, #fff 25%, transparent 25%, transparent 75%, #fff 75%, #fff),
                      -webkit-linear-gradient(45deg, #fff 25%, transparent 25%, transparent 75%, #fff 75%, #fff);
    background-image:    -moz-linear-gradient(45deg, #fff 25%, transparent 25%, transparent 75%, #fff 75%, #fff),
                         -moz-linear-gradient(45deg, #fff 25%, transparent 25%, transparent 75%, #fff 75%, #fff);
    background-image:         linear-gradient(45deg, #fff 25%, transparent 25%, transparent 75%, #fff 75%, #fff),
                              linear-gradient(45deg, #fff 25%, transparent 25%, transparent 75%, #fff 75%, #fff);
    background-size: 60px 60px;
    background-position: 0 0, 30px 30px;
}

.dd-dragel { position: absolute; pointer-events: none; z-index: 9999; }
.dd-dragel > .dd-item .dd-handle { margin-top: 0; }
.dd-dragel .dd-handle {
    -webkit-box-shadow: 2px 4px 6px 0 rgba(0,0,0,.1);
            box-shadow: 2px 4px 6px 0 rgba(0,0,0,.1);
}

.nestable-lists { display: block; clear: both; padding: 30px 0; width: 100%; border: 0; border-top: 2px solid #ddd; border-bottom: 2px solid #ddd; }

#nestable2 .dd-handle {
    color: #fff;
    border: 1px solid #999;
    background: #bbb;
    background: -webkit-linear-gradient(top, #bbb 0%, #999 100%);
    background:    -moz-linear-gradient(top, #bbb 0%, #999 100%);
    background:         linear-gradient(top, #bbb 0%, #999 100%);
}
#nestable2 .dd-handle:hover { background: #bbb; }
#nestable2 .dd-item > button:before { color: #fff; }

.dd-hover > .dd-handle { background: #2ea8e5 !important; }
.dd3-content { display: block; height: 30px; margin: 5px 0; padding: 5px 10px 5px 40px; color: #333; text-decoration: none; font-weight: bold; border: 1px solid #ccc;
    background: #fafafa;
    background: -webkit-linear-gradient(top, #fafafa 0%, #eee 100%);
    background:    -moz-linear-gradient(top, #fafafa 0%, #eee 100%);
    background:         linear-gradient(top, #fafafa 0%, #eee 100%);
    -webkit-border-radius: 3px;
            border-radius: 3px;
    box-sizing: border-box; -moz-box-sizing: border-box;
}
.dd3-content:hover { color: #2ea8e5; background: #fff; }

.dd-dragel > .dd3-item > .dd3-content { margin: 0; }

.dd3-item > button { margin-left: 30px; }

.dd3-handle { position: absolute; margin: 0; left: 0; top: 0; cursor: pointer; width: 30px; text-indent: 100%; white-space: nowrap; overflow: hidden;
    border: 1px solid #aaa;
    background: #ddd;
    background: -webkit-linear-gradient(top, #ddd 0%, #bbb 100%);
    background:    -moz-linear-gradient(top, #ddd 0%, #bbb 100%);
    background:         linear-gradient(top, #ddd 0%, #bbb 100%);
    border-top-right-radius: 0;
    border-bottom-right-radius: 0;
}
.dd3-handle:before { content: '≡'; display: block; position: absolute; left: 0; top: 3px; width: 100%; text-align: center; text-indent: 0; color: #fff; font-size: 20px; font-weight: normal; }
.dd3-handle:hover { background: #ddd; }


/* 드래그 앤 드롭 Custom Css */
.dd-item{
	overflow: hidden;
}
.dd-item .dd-titles {
	width: 200px;
	float: left;
}

.dd-item .dd-buttons {
	width: 40px;
	float: left;
	padding-top: 14px;
}


/* 파일 업로드 */
input.upload {  
  opacity: 0;  
  position: relative;
  width: 0;
  height: 0;
}

</style>
<script type="text/javascript">
$(function(){

	/**************/
	/*    타이틀      */
	/**************/
	$(".titleBtn").click(function(){
		$(".title").css('display','none');
		$(".titleEdit").css('display','block');
	})
	$(".checkBtn").click(function(){
		$(".titleEdit").css('display','none');
		$(".title").css('display','block');
	})
	
	/**************/
	/*    메뉴수정     */
	/**************/
	$(".menuEdit").click(function(){
		alert("항")
		$(".menu").css('display','none');
		$(".menuEdit").css('display','block');
	})
	$(".menuCheck").click(function(){
		$(".menuEdit").css('display','none');
		$(".menu").css('display','block');
	})
	
	
	/**************/
	/*   메타태그     */
	/**************/
	$(".metaBtn").click(function(){
		  window.open("metaEdit", "metaEdit", "top=120, left=700, width=400, height=400")
	})
	
	/**************/
	/*    드롭다운     */
	/**************/
	$(".menu-flip").click(function(){
	      $(".menu-panel").slideToggle("slow");
	});
	$(".site-flip").click(function(){
	      $(".site-panel").slideToggle("slow");
	});
	
	/**************/
	/*메뉴 드래그앤드롭*/
	/**************/	
	var updateOutput = function(e)
	{
		var list   = e.length ? e : $(e.target),
	    output = list.data('output');
	};
	$('#nestable').nestable({
		group: 1
	})
	.on('change', updateOutput);
});

</script>
<script type="text/javascript">
/**************/
/*메뉴 드래그앤드롭*/
/**************/
var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-36251023-1']);
_gaq.push(['_setDomainName', 'jqueryscript.net']);
_gaq.push(['_trackPageview']);
(function() {
	var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
 })();
</script>
</head>
<body id="body-config">
<header id="header">
	<div class="left-menu menu-flip"><!-- menu-flip 클래스 추가-->
		<div>메뉴s 설정</div>
		<i class="fa fa-chevron-down"></i>
	</div>
	<div class="left-menu site-flip"><!-- site-flip 클래스 추가-->
		<div>사이트 설정</div>
		<i class="fa fa-chevron-down"></i>
	</div>
</header>

<div id="nav-container">
	<nav id="menu-config-nav">
		<!-- config-section -->
		<div class="menu-panel dd" id="nestable">
			 <ol class="dd-list"> 
			 	<li class="dd-item" data-id="1">
					<div class="default-config dd-titles dd-handle">
						<div class="outer-config menu">
							<span>about1</span> 
						</div>
					</div>
					<div class="dd-buttons">
						<i class="fa right-icon fa-trash"></i>
						<i class="fa right-icon fa-pencil menuEdit"></i>
						<i class="fa right-icon fa-eye"></i>
					</div>
					<div class="fold outer-config menuEdit" style="display:none;">
						<input type="text" value="title" style="width:200px;">
						<i class="right-icon fa fa-check menuCheck"></i>
					</div>
				</li>
				<li class="dd-item" data-id="2">
					<div class="default-config dd-titles dd-handle">
						<div class="outer-config">
							<span>contact</span> 
						</div>
					</div>
					<div class="dd-buttons">
							<i class="fa right-icon fa-trash"></i>
							<i class="fa right-icon fa-pencil menuEdit"></i>
							<i class="fa right-icon fa-eye"></i>
					</div>
				</li>
				<li class="dd-item" data-id="3">
					<div class="default-config dd-titles dd-handle">
						<div class="outer-config">
							<span>portfolio</span> 
							
						</div>
					</div>
					<div class="dd-buttons">
							<i class="fa right-icon fa-trash"></i>
							<i class="fa right-icon fa-pencil menuEdit"></i>
							<i class="fa right-icon fa-eye"></i>
					</div>
				</li>
			</ol>
			<div class="default-config">
				<div class="outer-config">
					<span>메뉴추가</span> 
					<i class="fa fa-plus"></i>
				</div>
			</div>
		</div>
		<!-- /config-section -->
	</nav>
	
	<nav id="site-config-nav">
	<form enctype="multipart/form-data">
		<div class="block-config-section site-panel"><!-- site-panel 클래스 추가 -->
			<div class="default-config">
				<div class="outer-config title"><!-- title 클래스 추가-->
					<span>타이틀</span> 
					<i class="fa right-icon fa-pencil titleBtn"></i><!-- 수정아이콘 titleBtn 클래스 추가 -->
				</div>
				<div class="fold outer-config titleEdit" style="display:none;"><!-- titleEdit 클래스 추가 -->
					<input type="text" value="title" style="width:200px;">
					<i class="right-icon fa fa-check checkBtn"></i><!-- 체크아이콘 checkBtn 클래스 추가 -->
				</div>
			</div>
			<div class="default-config">
				<div class="outer-config">
					<span>메타태그</span> 
					<i class="fa right-icon fa-pencil metaBtn"></i><!-- metaBtn 클래스 추가 -->
				</div>
			</div>
			<div class="default-config">
				<div class="outer-config">
					<span>원페이지 스타일</span> 
					<label class="switch right-icon">
  						<input type="checkbox" checked>
  						<span class="slider round"></span>
					</label>
				</div>
			</div>
			<div class="default-config">
				<div class="fold outer-config">
					<span>우클릭/드래그 방지</span> 
					<label class="switch right-icon">
  						<input type="checkbox" checked>
  						<span class="slider round"></span>
					</label>
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
						<input type="file" name = "upload" class="upload"/> 
						<i class="fa fa-folder-open"></i>
						
					</div>	
					<div class="config-row">
						<label>position</label>
						<select>
							<option>left top</option>
							<option>left center</option>
							<option>left bottom</option>
							<option>right top</option>
							<option>right center</option>
							<option>right bottom</option>
							<option>center top</option>
							<option>center center</option>
							<option>center bottom</option>
						</select>
					</div>	
					<div class="config-row">
						<label>repeat</label>
						<select>
							<option>repeat:x</option>
							<option>repeat:y</option>
							<option>no-repeat</option>
						</select>
					</div>	
					<div class="config-row">
						<label>size</label>
						<select>
							<option>original</option>
							<option>cover</option>
							<option>contain</option>
						</select>
					</div>	
				</div>
			</div>
			<div class="default-config">
				<div class="fold outer-config">
					<span>기본폰트</span> 
					<i class="fa fa-chevron-right right-icon fold-icon"></i>
				</div>
				<div class="inner-config">
					<div class="config-row">
						<label>색상</label>
						<input type="color" class="color color-picker transparent">
						<button id="example3"></button>
					</div>
					<div class="config-row">
						<label>폰트명</label>
						<select>
							<option>고딕</option>
							<option>돋움</option>
							<option>맑은고딕</option>
						</select>
					</div>	
				</div>
			</div>
			<div class="default-config">
				<div class="fold outer-config">
					<span>파비콘</span> 
					<i class="fa fa-chevron-right right-icon fold-icon"></i>
				</div>
				<div class="inner-config">
					<div class="config-row">
						<label>이미지</label>
						<input type="file" name = "upload" class="upload"/> 
						<i class="fa fa-folder-open"></i>
					</div>	
				</div>
			</div>
		</div>
		</form>
	</nav>
	
	
</div>


<nav id="config-block-nav">

</nav>

<section id="blog-wrapper">
</section>

</body>
</html>