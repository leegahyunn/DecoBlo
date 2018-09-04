<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DecoBlo - Config</title>
<link rel="stylesheet" type="text/css" href="pixelarity/assets/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="http://www.jqueryscript.net/css/jquerysctipttop.css">
<link rel="stylesheet" type="text/css" href="decoblo/css/blockConfig.css">
<link rel="stylesheet" type="text/css" href="decoblo/css/menuConfig.css">
<link rel="stylesheet" type="text/css" href="decoblo/css/blockSetting.css">

<script src="resources/library/js/jquery-3.3.1.min.js"></script>
<script src="resources/library/js/jquery-ui.min.js"></script>
<script src="decoblo/js/jquery.nestable.js"></script>
<script src="resources/library/js/wcolpick.js"></script>
<script src="resources/library/js/colpickRmx.js"></script>
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
/* input.upload {  
	opacity: 0;  
  	position: relative;
  	width: 0;
  	height: 0;
} */

/* menu-block */
.menu-block{  
	float:right;
} 

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
</style>
<script type="text/javascript">
/*******************/
/*  메뉴 블럭 불러오기    */
/*******************/
menuConfig();
siteConfig();
function menuConfig() {
	$.ajax({
		method   : 'post'
		, url    : 'menuConfig'
		, contentType : 'application/json; charset=UTF-8'
		, success: function(resp) {
			var menuJson = JSON.parse(resp);
			var result2 = '';
			var result1 = '';
			
			result2 += '<ol class="dd-list">';
			$.each(menuJson, function(mainIndex, mainMenu){
				$.each(mainMenu.Menu, function(subIndex, subMenu){
					/* menu-bar */
					if(subMenu.menuDepth==0){
						result1 += '</ul></li><li data-parent="'+ subMenu.menuParent+'"><a href="#">'+ subMenu.menuName +'</a><ul>';
					} else if(subMenu.menuDepth==1){
						result1 += '<li><a href="#">'+ subMenu.menuName +'</a></li>'
					}
					
					if (subIndex == 1 && mainMenu.Menu.length != 1) {
						result2 += '<ol class="dd-list">';
					}
					
					result2 += '<li class="dd-item '; 
					
					if (subIndex == 0) {
						result2 += 'mainMenuWrapper';
					} 
					
					result2 += '" data-rno="'+ subMenu.menuNo + '" data-parent="'+ subMenu.menuParent+ '" data-menu-seq="'+ subMenu.menuSeq +'" data-menu-depth="'+ subMenu.menuDepth +'" data-menu-parent-seq="'+ subMenu.menuParentSeq +'">';
					result2 += '<div class="default-config">';
					result2 += '<div class="outer-config aa-handle">';
					result2 += '<div class="dd-handle" style="display: inline-block; width: 80%;">';
					result2 += '<span>' + subMenu.menuName + '</span>';
					result2 += '</div>';
					result2 += '<div class="outer-config"  style="display: inline-block;">';
					result2 += '<i class="fa fa-trash deletebtn" data-rno="'+ subMenu.menuNo + '" data-parent="'+ subMenu.menuParent+'"></i>';
					result2 += '<i class="fa fa-pencil editbtn" data-rno="'+ subMenu.menuNo + '" data-parent="'+ subMenu.menuParent+'"></i>';
					
					if(subMenu.menuVisible == 1){
						result2 += '<i style="color:#2ea8e5"class="fa fa-eye hidebtn" data-rno="'+ subMenu.menuNo + '" data-parent="'+ subMenu.menuParent+'"></i>';
					} else {
						result2 += '<i class="fa fa-eye hidebtn" data-rno="'+ subMenu.menuNo + '" data-parent="'+ subMenu.menuParent+'"></i>';
					}	 
					//result2 += '<i class="fa fa-eye hidebtn" data-rno="'+ subMenu.menuNo + '" data-parent="'+ subMenu.menuParent+'"></i>';
					
					result2 += '</div>';
					result2 += '<div class="fold outer-config" style="display:none;">';
					result2 += '<input type="text" style="width:200px;">';
					result2 += '<i class="right-icon fa fa-check checkbtn" data-rno="'+ subMenu.menuNo + '" data-parent="'+ subMenu.menuParent+'"></i>';
					result2 += '</div>';
					result2 += '</div>';
					result2 += '</div>';
					
					if (subIndex == mainMenu.Menu.length - 1 && mainMenu.Menu.length != 1) {
						result2 += '</ol>';
						result2 += '</li>';
					}
					
					if (mainMenu.Menu.length == 1) {
						result2 += '</li>';
					}
					
				});
			});
			result2 += '</ol>';
			result2 +='<div class="default-config" style="text-align: right; padding-right: 5px">';
			result2 +='<div class="outer-config"  style="display: inline-block;">';
			result2 +='<span style="font-size: 14px;">메뉴추가</span> ';
			result2 +='<i class="fa fa-plus menu-plus"></i>';
			result2 +='</div>';
			result2 +='<div class="fold outer-config menu-plus-box" style="display:none;">';
			result2 +='<input type="text" style="width:200px;">';
			result2 +='<i class="right-icon fa fa-check menu-plus-check"></i>';
			result2 +='</div>';
			result2 +='</div>';
			
			$('.menu-config-panel').html(result2);
			
			result1 += '</ul></li>';
			$('.menu-block').html(result1);
		} 
	});
}
function siteConfig() {
	$.ajax({
		method   : 'post'
		, url    : 'siteConfig'
		, contentType : 'application/json; charset=UTF-8'
		, success: function(resp) {
			$('title').text("DecoBlo - " + resp.blogTitle);
			$('.blogTitle').html(resp.blogTitle);
			$('.menu-config-flip').css('background-color', resp.configBackgroundColor)
			$('.metaAuthor').val(resp.metaAuthor);
			$('.metaKeyword').val(resp.metaKeyword);
			$('.metaDescription').val(resp.metaDescription);
			$('.menu-config-flip').css('font-family', resp.configBasicFont)
		}
	});
}
function metaEdit() {
	var metaAuthor = $('.metaAuthor').val();
	var metaKeyword = $('.metaKeyword').val();
	var metaDescription = $('.metaDescription').val();
	var sendData = {"metaAuthor" : metaAuthor
					,"metaKeyword" : metaKeyword
					,"metaDescription" : metaDescription};
	
	$.ajax({
		method : 'post'
		, url  : 'metaEdit'
		, data : JSON.stringify(sendData)
		, dataType : 'text'
		, contentType : 'application/json; charset=UTF-8'
		, success: function(resp) {
			siteConfig();
		}
	});
}



$(function(){
	$(document).on('change', '.color-picker', function(){
		var configBackgroundColor = $(this).val()
		
		var sendData = {"configBackgroundColor" : configBackgroundColor};
		$.ajax({
			method : 'post'
			, url  : 'updateBackgroundColor'
			, data : JSON.stringify(sendData)
			, dataType : 'text'
			, contentType : 'application/json; charset=UTF-8'
			, success: function(resp) {
				siteConfig();
			}
		}); 
	});
	
	$(document).on('change', '.blogFont', function(){
		var configBasicFont = $(this).val()
		//alert(configBasicFont)
		
		var sendData = {"configBasicFont" : configBasicFont};
		$.ajax({
			method : 'post'
			, url  : 'updateBlogFont'
			, data : JSON.stringify(sendData)
			, dataType : 'text'
			, contentType : 'application/json; charset=UTF-8'
			, success: function(resp) {
				siteConfig();
			}
		});  
	});
	
	/**********************/
	/* 메뉴블럭 마우스오버   */
	/**********************/
	$(document).on('mouseenter', '.menu-block li', function(){
		$('ul:first',this).show();
	});
	
	$(document).on('mouseleave', '.menu-block li', function(){
		$('ul:first',this).hide();
	});
	
	/**************/
	/*    드롭다운     */
	/**************/
	$(".site-config-flip").click(function(){
	    $(".site-config-panel").slideToggle("slow")
	    $(".site-config-panel").css("border-bottom","1px solid #333e4e").css("border-left","1px solid #333e4e").css("border-right","1px solid #333e4e")
	  	
	});
	
	$(".menu-config-flip").click(function(){
		$(".menu-config-panel").slideToggle("slow")
	    $(".menu-config-panel").css("border-bottom","1px solid #333e4e").css("border-left","1px solid #333e4e").css("border-right","1px solid #333e4e")
	  	
	});
	 
	$(document).on('click', 'div.folder', function() {
		$(this).removeClass('folder').addClass('unfolder');
		$(this).children('i.fa-chevron-right').removeClass('fa-chevron-right').addClass('fa-chevron-down');	
	});
	$(document).on('click', 'div.unfolder', function() {
		$(this).removeClass('unfolder').addClass('folder');
		$(this).children('i.fa-chevron-down').removeClass('fa-chevron-down').addClass('fa-chevron-right');	
	});
	
	/**************/
	/*메뉴 드래그앤드롭*/
	/**************/
	var target;
	
	var updateOutput = function(e){
	        
	    var menuNo = $(target).parents('li').data('rno');//누른 애의 menuNo, 옮겨져도 바뀌지 않음
	    var newMenuParent = $(target).parents('li').parents('li').data('rno');//누른 애 부모의 menuNo 옮겨지면 새 부모 menuNo로 바뀜 대메뉴일 경우 undefined
	    var newMenuSeq;
	    var menuParent = $(target).parents('li').data('parent');
	    var menuSeq = $(target).parents('li').data('menu-seq')
	    var menuDepth = $(target).parents('li').data('menu-depth')
	    var menuParentSeq = $(target).parents('li').data('menu-parent-seq');
	    var newMenuParentSeq;
	    var newMenuDepth;
		$(target).parents('li').addClass("changed");
		
// 			대메뉴
		if ($(target).parents('ol').length == 1) {
			$.each($($(target).parents('ol')[0]).children('li'), function(index, item){
				if ($(item).hasClass('changed')){
					newMenuSeq = index + 1;
					newMenuDepth = 0
				//	newMenuParentSeq = index + 1;
					$(item).removeClass("changed");
				}
			});
// 			소메뉴	
		} else if ($(target).parents('ol').length == 2) {
			$.each($($(target).parents('ol')[0]).children('li'), function(index, item){
				if ($(item).hasClass('changed')){
					// menuSeq
					newMenuSeq = index + 1;
					newMenuDepth = 1
				//	newMenuParentSeq = newMenuParent
					$(item).removeClass("changed");
				}
			});
		}
		
		var sendData = {
				"menuNo" : menuNo
				, "menuParent" : menuParent
				, "menuSeq" : menuSeq
				, "menuParentSeq" : menuParentSeq
				, "menuDepth" : menuDepth
				, "newMenuParent" : newMenuParent
				, "newMenuSeq" : newMenuSeq
				, "newMenuDepth" : newMenuDepth
			};
		
	
		$.ajax({
			method   : 'post'
			, url    : 'updateMenu'
			, data   : JSON.stringify(sendData)
			, dataType : 'json'
			, contentType : 'application/json; charset=UTF-8'
			, success: function(resp) {
				console.log(resp);
			} 
		});
		
	};
	
	
	
	$('#nestable').nestable({
		group: 1
	})
	.on('change', updateOutput);
	
	// output initial serialised data
    updateOutput($('#nestable').data('output', $('#nestable-output')));
	

	$('#nestable')
	.on('mousedown', '.outer-config', function(){
		target = $(this);
	});

	$(document).on('click', '.blog-title-edit', function(){
		$(this).parent().css('display','none');
		$(this).parent().prev().css('display','none');
		$(this).parent().next().css('display','block');
	});
	$(document).on('click', '.blog-title-check', function(){
		var blogTitle = $(this).prev().val();
		//alert(blogTitle)
		
		var sendData = {"blogTitle" : blogTitle};
		$.ajax({
			method : 'post'
			, url  : 'editBlogTitle'
			, data : JSON.stringify(sendData)
			, dataType : 'text'
			, contentType : 'application/json; charset=UTF-8'
			, success: function(resp) {
				//alert("꺄~!")
				//console.log($(this))
				$('.blog-title-editbox').css('display', 'none')
				$('.blog-title').css('display', 'block')
				siteConfig();
				
			}
		}); 
		
	});
	/*********************/
	/*메뉴 수정 버튼 이벤트*/
	/*********************/
	$(document).on('click', '.deletebtn', function(){
		
	});
	
	$(document).on('click', '.editbtn', function(){
		$(this).parent().css('display','none');
		$(this).parent().prev().css('display','none');
		$(this).parent().next().css('display','block');
	});
	
	$(document).on('click', '.hidebtn', function(){
		
	}); 
	$(document).on('click', '.menu-plus', function(){
		
	}); 
	$(document).on('click', '.checkbtn', function(){
		var menuname = $(this).prev().val();
		var menuno  = $(this).attr("data-rno");
		var sendData = {"menuName" : menuname,  "menuNo" : menuno};
		$.ajax({
			method : 'post'
			, url  : 'editMenu'
			, data : JSON.stringify(sendData)
			, dataType : 'text'
			, contentType : 'application/json; charset=UTF-8'
			, success: function(resp) {
				menuConfig();
			} 
		});
		
	});
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

<!-- 파일 업로드 -->
<script>
    function fileSubmit() {
        var formData = new FormData($("#fileForm")[0]);
        console.log($("#fileForm")[0]);
        $.ajax({
            type : 'post',
            url : 'fileUpload',
            data : formData,
            processData : false,
            contentType : false,
            success : function(html) {
                alert("파일 업로드하였습니다.");
            },
            error : function(error) {
                alert("파일 업로드에 실패하였습니다.");
                console.log(error);
                console.log(error.status);
            }
        });
    }
</script>
</head>
<body id="body-config">

<header id="header">
	<div class="left-menu menu-config-flip folder"><!-- menu-flip 클래스 추가-->
		<div>메뉴 설정1</div>
		<i class="fa fa-chevron-down"></i>
	</div>
	<div class="left-menu site-config-flip folder"><!-- site-flip 클래스 추가-->
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
			<ul class = "menu-block">
			</ul>
		</div>
	</div>
</div>
<!-- 테스트 출력창 -->

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
	
	<ul class="add-button" id="add-button-top">
		<li class="add-button-li">
			<div class="add-block">
				<img alt='Plus' src='resources/images/blockSettingimg/fa_plus_icon.png'/>
			</div>
		</li>
	</ul>
	<!-- 블록이 쌓이는 section -->
	<section class="block" id="blockNo-2">
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
</section>

</body>
</html>