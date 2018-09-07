<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="decoblo/css/blockSetting.css">
<link rel="stylesheet" href="decoblo/css/blockTemplate.css">
<link rel="stylesheet" href="decoblo/css/blockConfig.css">
<link rel="stylesheet" href="decoblo/css/menuConfig.css">
<link rel="stylesheet" href="pixelarity/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="http://www.jqueryscript.net/css/jquerysctipttop.css">

<script src="library/js/jquery-3.3.1.min.js"></script>
<script src="library/js/jquery-ui.min.js"></script>
<script src="library/js/colpickRmx.js"></script>
<script src="decoblo/js/blockConfig.js"></script>
<script src="decoblo/js/jquery.nestable.js"></script>
<script src="resources/library/js/wcolpick.js"></script>
<script src="decoblo/js/blockConfig.js"></script>
<script src="decoblo/js/menuConfig.js"></script>
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
	z-index: 8000;
}

/* left-menu : menu-config & site-config */
body#body-config #header .left-menu {
	width: 300px;
	height: 100%;
	display: inline-block;
	border-right: 1px solid #333e4e;
	float: left;
	padding-top: 10px;
	font-size:12px;
	text-align: center;
}

body#body-config #header .left-menu div {
	width: 250px;
	margin: 0 auto;
	display: inline-block;
}

/* right-menu */
body#body-config #header .right-menu {
	width: 100px;
	height: 100%;
	display: inline-block;
	border-right: 1px solid #333e4e;
	float: right;
	padding-top: 10px;
	font-size:12px;
	text-align: center;
}

body#body-config #header .right-menu div {
	width: 100px;
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
 	border: 1px solid white;
 	background-color: #FFF;
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
.menu-config-flip, .menu-flip, .menu-panel, .site-config-panel, .site-config-flip {
	padding: 5px;
}
.menu-config-panel, .menu-panel, .site-config-panel{
    display: none;
}

#header div.folder {
	background-color: #556273;
}

#header div.unfolder {
	background-color: #4789E7;
}



/**************/
/*메뉴 드래그앤드롭*/
/**************/
.dd { position: relative; }

.dd-list { display: block; position: relative; }
.dd-list .dd-list { padding-left: 30px; }


.dd-item,
.dd-empty,
.dd-placeholder { display: block; position: relative; margin: 0; padding: 0; min-height: 20px; font-size: 13px; line-height: 20px; }

.aa-handle { display: block; margin: 5px 0; padding: 5px 10px;   font-weight: bold; 
    background: -webkit-linear-gradient(top, #FFFFFF 0%, #FFF 100%);
    background:    -moz-linear-gradient(top, #FFFFFF 0%, #FFF 100%);
    background:         linear-gradient(top, #FFFFFF 0%, #FFF 100%);
    -webkit-border-radius: 0;
            border-radius: 0;
    box-sizing: border-box; -moz-box-sizing: border-box;
    border-bottom: 1px solid #CCC;
}

.aa-handle:hover { color: #000; background: #fff;}
.aa-handle .deletebtn:hover, .aa-handle .editbtn:hover { color: #2ea8e5; background: #fff;}

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
.dd-dragel > .dd-item .aa-handle { margin-top: 0; }
.dd-dragel .aa-handle {
    -webkit-box-shadow: 2px 4px 6px 0 rgba(0,0,0,.1);
            box-shadow: 2px 4px 6px 0 rgba(0,0,0,.1);
}

.nestable-lists { display: block; clear: both; padding: 30px 0; width: 100%; border: 0; border-top: 2px solid #ddd; border-bottom: 2px solid #ddd; }

#nestable2 .aa-handle {
    color: #fff;
    border: 1px solid #999;
    background: #bbb;
    background: -webkit-linear-gradient(top, #bbb 0%, #999 100%);
    background:    -moz-linear-gradient(top, #bbb 0%, #999 100%);
    background:         linear-gradient(top, #bbb 0%, #999 100%);
}
#nestable2 .aa-handle:hover { background: #bbb; }
#nestable2 .dd-item > button:before { color: #fff; }

.dd-hover > .aa-handle { background: #2ea8e5 !important; }
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

.hi:hover { color: red; }


/* 파일 업로드 */
input.upload {  
	opacity: 0;  
  	position: relative;
  	width: 0;
  	height: 0;
}

/* /* menu-block */
.menu-block{  
	float:right;
} */

body { margin: 0; }
.menu-bar {
  background: #f2f2f2;
  display: inline-block;
  width: 100%;
}
.menu-block { margin: 0; padding: 0; }
.menu-block li {
  float: left;
  list-style:none;
  position: relative;
}
.menu-block li:hover { background: black; }
.menu-block li:hover>a { color: white; }
.menu-block a {
  color: black;
  display: block;
  padding: 10px 20px;
  text-decoration: none;
}
.menu-block ul {
  background: #eee;
  border: 1px solid silver;
  display: none;
  padding: 0;
  position: absolute;
  left: 0;
  top: 100%;
  width: 180px;
}
.menu-block ul li { float: none; }
.menu-block ul li:hover { background: #ddd; }
.menu-block ul li:hover a { color: black; }
.menu-block ul a { color: black; }
.menu-block ul ul { left: 100%; top: 0; }


.dropdown:hover .dropdown-menu {
    display: block;
    margin-top: 0;
}
.main-menu-block{  
   float:left;
} 


.main-menu-block { margin: 0; padding: 0; }
.main-menu-block li {
  float: left;
  list-style:none;
  position: relative;
}
.main-menu-block li:hover { background: black; }
.main-menu-block li:hover>a { color: white; }
.main-menu-block a {
  color: black;
  display: block;
  padding: 10px 20px;
  text-decoration: none;
}
.main-menu-block ul {
  background: #eee;
  border: 1px solid silver;
  display: none;
  padding: 0;
  position: absolute;
  left: 0;
  top: 100%;
  width: 180px;
}
.main-menu-block ul li { float: none; }
.main-menu-block ul li:hover { background: #ddd; }
.main-menu-block ul li:hover a { color: black; }
.main-menu-block ul a { color: black; }
.main-menu-block ul ul { left: 100%; top: 0; }

</style>
<script type="text/javascript">

</script>


</head>
<body id="body-config">
<header id="header">
	<div class="left-menu menu-config-flip folder">
		<div>메뉴 설정1</div>
		<i class="fa fa-chevron-down"></i>
	</div>
	<div class="left-menu site-config-flip folder">
		<div>사이트 설정</div>
		<i class="fa fa-chevron-down"></i>
	</div>
	
	<!-- right-menu -->
	<div class="right-menu">
		<div><i class="fa fa-share"></i>  편집끝내기</div>
	</div>
	<div class="right-menu">
		<div><i class="fa fa-arrow-circle-up"></i>  사이트게시</div>
	</div>
	<div class="right-menu">
		<div><i class="fa fa-desktop"></i>  미리보기</div>
	</div>
	<div class="right-menu">
		<div><i class="fa fa-question"></i>  가이드</div>
	</div>
	<div class="right-menu">
		<div><i class="fa fa-user"></i>  1:1문의</div>
	</div>
	
</header>
<div class="panel-config">
<div id="nav-container">
	<nav id="menu-config-nav">
      <!-- config-section -->
      <div class="menu-config-panel dd" id="nestable" >
          <!-- 메뉴 불러오는 곳 -->
      </div>
      <!-- /config-section -->
   </nav>
	
	<nav id="site-config-nav" style="
    border-right-width: 0px;
    border-bottom-width: 0px;
    border-left-width: 0px;"
	>
		<div class="block-config-section site-config-panel"><!-- site-panel 클래스 추가 -->
			<div class="default-config">
				<div class="outer-config blog-title">
					<span>타이틀 - </span><span class="blogTitle"></span>
					<i class="fa right-icon fa-pencil blog-title-edit"></i>
				</div>
				<div class="fold outer-config blog-title-editbox" style="display:none;">
					<input type="text" style="width:200px;">
					<i class="right-icon fa fa-check blog-title-check"></i>
				</div>
			</div>
			<div class="default-config">
				<div class="fold outer-config">
					<span>메타태그</span> 
					<i class="fa fa-chevron-right right-icon fold-icon"></i>
				</div>
				<div class="inner-config">
					<div class="config-row">
						<table>
							<tr>
								<th>제작자 이름</th>
								<td>
									<input class="metaAuthor" type="text"/>
								</td>
							</tr>
							
							<tr>
								<th>사이트 제목</th>
								<td>
									<span class="blogTitle"></span>
									
								</td>
							</tr>
							
							<tr>
								<th>사이트 설명</th>
								<td>
									<input class="metaDescription" type="text"/>
								</td>
							</tr>
						
							<tr>
								<th>키워드</th>
								<td>
									<input class="metaKeyword" type="text"/>
								</td>
							</tr>
							<tr>
								<th colspan="2">
									<input class="btn btn-secondary" type="button" value="확인" onclick = "metaEdit()"/>
								</th>
							</tr>
						</table>
					</div>	
				</div>
			</div>
			<div class="default-config">
				<div class="outer-config">
					<span>원페이지 스타일</span> 
					<label class="switch right-icon">
  						<input class="configOnepageStyle" type="checkbox"/>
  						<span class="slider round"></span>
					</label>
				</div>
			</div>
			<div class="default-config">
				<div class="fold outer-config">
					<span>우클릭/드래그 방지</span> 
					<label class="switch right-icon">
  						<input class="configRightClickable" type="checkbox"/>
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
						<input type="color" class="color color-picker transparent" value="#888888">
						<button id="example3"></button>
					</div>
					<div class="config-row">
						<form id="fileForm" action="fileUpload" method="post" enctype="multipart/form-data">
					        <input type="file" id="fileUp" name="fileUp"/>
					   	 	<input type="button" value="전송하기" onClick="fileSubmit();" />
					    </form>
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
						<input type="color" class="color color-picker transparent" value="#888888">
						<button id="example3"></button>
					</div>
					<div class="config-row">
						<label>폰트명</label>
						<select class="blogFont">
							<option value="Gothic">고딕</option>
							<option value="Dotum">돋움</option>
							<option value="Batang">바탕</option>
							<option value="Gungsuh">궁서</option>
							<option value="Malgun Gothic">맑은고딕</option>
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
	</nav>
</div>
</div>
<!-- menu-bar -->
<div class="menu-wrapper">
   <div class="block-wrapper">
      <div class='menu-bar'>
         <ul class = "main-menu-block">
         </ul>
         <ul class = "menu-block">
         </ul>
      </div>
   </div>
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
		<li class="">
			<img  alt="게시판" src="resources/images/blockSettingimg/icon-forum.png">
			<div>게시판</div>
		</li>
	</ul>
	<!--  썸네일 쌓이는 부분 -->
	<ul class="block-thumnail">
		
	</ul>
	<ul class="blockMenu-sidebar-close">
		<li id="blockMenu-sidebar-close">
			<img alt="close" src="resources/images/blockSettingimg/btn_close.png">
		</li>
	</ul>
</div>
</nav>

<div id="mask"></div>
<!-- 전체 블록 section 시작 -->
<section id="blog-wrapper">
	<div class="templates-wrapper">
	
	<c:if test="${empty blockList}" var="seletedBlockList">
		<div class="intro-block-wrapper" id="intro-block-wrapper">
			<div class="text-shadow">
				<div>
					<img alt="추가" src="resources/images/blockSettingimg/addblock.png"/>
				</div>
				<b>${menuName} 메뉴가 비어있습니다. 블럭을 추가하시려면 여기를 클릭하세요.</b>
			</div>
		</div>
	</c:if>
	
	<c:if test="${!empty blockList}">
		
		<section class="menu-wrapper" >
		<c:forEach items="${blockList}" var="blockList">
			<ul class='add-button ${blockList.blockSeq}' id='${blockList.blockSeq}'>
				<li class='add-button-li'>
					<div class='add-block'>
					<img alt='Plus' src='resources/images/blockSettingimg/fa_plus_icon.png'/>
					</div>
				</li>
			</ul>
			<section class="block-wrapper" data-block-seq="${blockList.blockSeq}">
			${blockList.blockContent}
			<div class="mask2" id="mask-2-${blockList.blockSeq}"></div>
			<div class="settingIcon ${blockList.blockSeq}" id='${blockList.blockSeq}'>
				<div class="settingButton">
				<img alt="+" src="resources/images/blockSettingimg/settingButton.png">
				</div>
			</div>
			
			<div class="block-config ${blockList.blockSeq}" id="${blockList.blockSeq}">
				<div class="block-config-header">
					<i class="fa fa-cog"></i> <span>블럭 설정</span><i class="fa fa-times" id="block-config-close"></i>
				</div>
				
				
				<!-- config-section -->
				<div class="block-config-section">
					<!-- 여백 -->
					<div class="default-config margin-config">
						<div class="fold outer-config">
							<span>여백</span> 
							<i class="fa fa-chevron-right right-icon fold-icon"></i>
						</div>
						<div class="inner-config">
							<div class="config-row">
								<label>좌우여백</label>
								<label class="switch">
			  						<input type="checkbox" checked>
			  						<span class="slider round"></span>
								</label>
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
					<!-- /여백 -->
					<!-- 배경 -->
					<div class="default-config background-config">
						<div class="fold outer-config">
							<span>배경</span> 
							<i class="fa fa-chevron-right right-icon fold-icon"></i>
						</div>
						<div class="inner-config">
							<div class="config-row">
								<label>색상</label>
								<input type="color" class="color color-picker transparent">
							</div>
							<div class="config-row filebox">
								<label>이미지</label>
								<label for="backgroundfile" class="bg-label"><i class="fa fa-folder-open"></i></label>
								<input type="file" id="backgroundfile">
								<span id="backgroundfile-name"></span>
							</div>	
							<div class="config-row additional-option background">
								<label>POSITION</label>
								<select>
									<option>sss</option>
								</select>
							</div>	
							<div class="config-row additional-option background">
								<label>REPEAT</label>
								<select>
									<option>sss</option>
								</select>
							</div>
							<div class="config-row additional-option background">
								<label>SIZE</label>
								<select>
									<option>sss</option>
								</select>
							</div>		
						</div>
					</div>
					<!-- /배경 -->
					<!-- 선 색상 -->
					<div class="optional-config line-config">
						<div class="fold outer-config">
							<span>선 색상</span> 
							<i class="fa fa-chevron-right right-icon fold-icon"></i>
						</div>
						<div class="inner-config">
							<div class="config-row">
								<label>색상</label>
								<input type="color" class="color color-picker transparent">
							</div>
						</div>
					</div>
					<!-- /선 색상 -->
					<!-- 버튼 색상 -->
					<div class="optional-config button-config">
						<div class="fold outer-config">
							<span>버튼 색상</span> 
							<i class="fa fa-chevron-right right-icon fold-icon"></i>
						</div>
						<div class="inner-config">
							<div class="config-row">
								<label>색상</label>
								<input type="color" class="color color-picker transparent">
							</div>
						</div>
					</div>
					<!-- /버튼 색상 -->
					<!-- 슬라이드 지연시간 -->
					<div class="optional-config slide-delay-config">
						<div class="fold outer-config">
							<span>슬라이드 지연시간</span> 
							<i class="fa fa-chevron-right right-icon fold-icon"></i>
						</div>
						<div class="inner-config">
							<div class="config-row">
								<label>지연시간</label>
								<input type="text">
							</div>
						</div>
					</div>
					<!-- /슬라이드 지연시간 -->
					<!-- /블럭링크 -->
					<div class="default-config block-link-config">
						<div class="fold outer-config">
							<span>블럭 링크(앵커)</span> 
							<i class="fa fa-chevron-right right-icon fold-icon"></i>
						</div>
						<div class="inner-config">
							<div class="config-row">
								<label>블럭링크</label>
								<label class="switch">
			  						<input type="checkbox" checked>
			  						<span class="slider round"></span>
								</label>
							</div>
							<div class="config-row">
								<label>블럭이름</label>
								<input type="text">
							</div>
						</div>
					</div>
				</div>
				<!-- /config-section -->
				
				<!-- footer -->
				<div class="block-config-footer">
					<div class="block-move">			
						<i class="fa fa-sort"></i>
						<span>블럭이동</span>
					</div>
					<div class="block-copy" data-block-seq="${blockList.blockSeq}" data-block-blockNo="${blockList.blockNo }">
						<i class="fa fa-files-o"></i>
						<span>블럭복제</span>
					</div>
					<div class="block-html-css">
						<i class="fa fa-file-code-o"></i>
						<span>HTML/CSS</span>
					</div>
					<div class="block-remove" data-block-seq="${blockList.blockSeq }">
						<i class="fa fa-trash-o"></i>
						<span>블럭삭제</span>
					</div>
					
				</div>
				<!-- /footer -->
			</div>
			
			</section>
			
			<ul class='add-button ${blockList.blockSeq}' id='${blockList.blockSeq+1}'>
				<li class='add-button-li'>
					<div class='add-block'>
					<img alt='Plus' src='resources/images/blockSettingimg/fa_plus_icon.png'/>
					</div>
				</li>
			</ul>
			
			</c:forEach>
		</section>
	</c:if>
		<div class="block-preview">
				<!-- 사용하기 버튼 -->
					<!-- 블록 코드 미리보기 -->
		</div>
		<div class="delete-confirm">
			<button class="confirm-close" onclick="deleteCancle()">
				<span>
					<img alt="close" src="resources/images/blockSettingimg/confirm-close.png">
				</span>
			</button>
			<div class="confirm-boddy">
				<h3 class="confirm-title">delete block</h3>
				"블럭을 삭제하시면 변경한 내용이 삭제됩니다."
				<br>
				"삭제하시겠습니까 ?"
			</div>
			<div class="confirm-footer">
				<button type="button" class="delete-confirm-cancle" onclick="deleteCancle()">취소</button>
				<button type="button" class="delete-confirm-ok">확인</button>
			</div>
		</div>
</div>	
</section>
</body>
</html>