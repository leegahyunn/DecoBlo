<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="library/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
$(function(){
	firstcss();
	/*블록 마우스 이벤트*/
	$('.block_wrapper').on('mouseenter',function(){
		
		$('.add-button').css('display','block');
		$(this).css("border-style","solid");
		$(this).css("border-color","#0073AC");
		$(this).css("border-width","1px");
	});
	/*블록 마우스 이벤트 종료*/
	$('.add-button').on('mouseout',function(){
		$('.add-button').css('display','none');
		$('.block_wrapper').css("border-style","none");
	});
	/*블록 추가 버튼 */
	$('.add-block').on('click',function(){
			$('.blockMenu-sidebar-div').css("margin-left",'0px');
			$('#blockMenu-sidebar-close').css('left','315px');
			/*$('.block-setting-cover').css('display', 'block');
			$('.block-setting-cover').css('z-index', '15');*/
	});
	
	/*사이드바 close 버튼*/	
	$('#blockMenu-sidebar-close').on('click',function(){
		$('.blockMenu-sidebar-ul > li').removeClass("active");
		$('.blockMenu-sidebar-div').css("margin-left",'-315px');
		$('#blockMenu-sidebar-close').css('left','-50px');
		/*$('.block-setting-cover').css('display', 'none');
		$('.block-setting-cover').css('z-index', '0');*/
	});
	/*사이드바 메뉴 클릭 버튼*/
	$('.blockMenu-sidebar-ul > li').on('click',function(){
		$('.blockMenu-sidebar-ul > li').removeClass("active");
			$(this).addClass("active");
		
	});
	
});
/*첫화면 css */
function firstcss(){
	var headerHeight = $('.header-test').height();
	$('.blockMenu-sidebar').css({"top":0 + headerHeight});
}
</script>
<link type="text/css" rel="stylesheet" href="decoblo/css/blockSetting.css">
</head>
<body>
<div class="block-setting-cover"></div>
<div class="main-body">
	<div class="header-test"></div>
	<ul class="add-button">
		<li class="add-button-li">
			<div class="add-block">
				<img alt='Plus' src='resources/images/blockSettingimg/fa_plus_icon.png'/>
			</div>
		</li>
	</ul>
	<div class="block_wrapper">
	</div>
	<ul class="add-button">
		<li class="add-button-li">
			<div class="add-block">
				<img alt='Plus' src='resources/images/blockSettingimg/fa_plus_icon.png'/>
			</div>
		</li>
	</ul>
</div>
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

</body>
</html>