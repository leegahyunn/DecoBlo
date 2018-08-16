<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="resources/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
$(function(){
	
	$('.block_wrapper').on('mouseenter',function(){
		$('.add-block').html("<i class='fas fa-plus-circle'>f055</i>");
		$(this).css("border-style","solid");
		$(this).css("border-color","blue");
		$(this).css("border-width","2px");
		
	});
	
	$('.add-block').on('click',function(){
		$( ".blockMenu-sidebar" ).fadeIn( "slow", function() {
			$('.blockMenu-sidebar').css("margin-left",'0px');
		  });
	});
	$('.block_wrapper').on('mouseleave',function(){
		$('.block_wrapper').find('i').remove();
		$(this).css("border-style","none");
	})
		
	$('.blockMenu-sidebar-close').on('click',function(){
		$('.blockMenu-sidebar').css("margin-left",'-315px');
	});
	
	$('li').on('click',function(){
		$('li').removeClass("active");
		$(this).addClass("active");
		
	})
});</script>
<link type="text/css" rel="stylesheet" href="decoblo/css/blockSetting.css">
</head>
<body>

<div class="main-body">
	<div class="header-test"></div>
	<ul class="add-button">
		<li>
			<div class="add-block"></div>
		</li>
	</ul>

	<div class="block_wrapper">
	
	</div>

</div>
<div class="blockMenu-sidebar">
	<div class="blockMenu-sidebar-close"><p>close</p></div>
		<ul id="blockMenu-sidebar-nav">
		<li class="">
			<img  alt="쇼케이스" src="">
			<div>쇼케이스</div>
		</li>
		<li class="">	
			<img alt="타이틀" src="">
			<div>타이틀</div>
		</li >				
		<li class="">
			<img  alt="컨텐츠" src="">
			<div>컨텐츠</div>
		</li>
		<li class="">
			<img  alt="텍스트" src="">
			<div>텍스트</div>
		</li>
		<li class="">
			<img  alt="이미지" src="">
			<div>이미지</div>
		</li>			
		<li class="">
			<img  alt="구분선" src="">
			<div>구분선</div>
		</li>
	</ul>
</div>

</body>
</html>