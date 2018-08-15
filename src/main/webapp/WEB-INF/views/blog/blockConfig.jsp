<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="css/font-awesome.min.css">
<style>	
	* {
		margin: 0;
		padding: 0;
	}
	
	li {
		list-style: none;
	}
	
	div.block-config {
		width: 347px;
		border: 1px solid #DDD;		
		color: #808080;
	}
	
	div.block-config-header {		
		background-color: #4789e7;
		padding: 3px 10px;
		color: #FFF;
		font-size: 1em;
	}
	
	div.block-config-header i.fa-times {
		float: right;	
		color: #111;
	}
	
	div.block-config-section {		
		font-size: 0.8em;
		font-weight: bold;
	}
	
	div.block-config-section ul li.outer-config {
		padding: 3px 20px;
		border-bottom: 1px solid #DDD;
	}
	
	div.block-config-footer {
		overflow: hidden;
		font-size: 0.8em;
		padding: 5px 0;
	}
	
	div.block-config-footer div {
		width: 24.3%;
		float: left;
		text-align: center;
		border-right: 1px solid #DDD;
	}
	
	div.block-config-footer div:nth-child(4) {
		border-right: 0px;
	}
	
	div.block-config-footer i {
		display: block;		
		font-size: 2em;
		margin: 5px 0;
	}
	
	li i.right-icon{
		float: right;
	}
	
	
	/* inner config */
	li.fold ul.inner-config {
		display: none;
	}
</style>
<script src="resources/jquery-3.3.1.min.js"></script>
<script>
$(function(){
	$(document).on('click', 'li.fold', function() {
		$(this).children('ul.inner-config').css({"display":"block"});
		$(this).removeClass('fold').addClass('unfold');
		$(this).children('i.fa-chevron-right').removeClass('fa-chevron-right').addClass('fa-chevron-down');	
	});
	$(document).on('click', 'li.unfold', function() {
		$(this).children('ul.inner-config').css({"display":"none"});
		$(this).removeClass('unfold').addClass('fold');
		$(this).children('i.fa-chevron-down').removeClass('fa-chevron-down').addClass('fa-chevron-right');	
	});
});


</script>
</head>
<body>
<div class="block-config">
	<div class="block-config-header">
		<i class="fa fa-cog"></i> <span>블럭 설정</span><i class="fa fa-times"></i>
	</div>
	<div class="block-config-section">
		<ul>
			<li class="fold outer-config">
				<span>여백</span> 
				<i class="fa fa-chevron-right right-icon fold-icon"></i>
				<ul class="inner-config">
					<li> dkdk </li>
				</ul>
			</li>
			<li class="fold outer-config">
				<span>배경</span> 
				<i class="fa fa-chevron-right right-icon fold-icon"></i>
				<ul class="inner-config">
					<li> dkdk </li>
				</ul>
			</li>
			<li class="fold outer-config">
				<span>블럭 링크(앵커)</span> 
				<i class="fa fa-chevron-right right-icon fold-icon"></i>
				<ul class="inner-config">
					<li> dkdk </li>
				</ul>
			</li>
			<li class="fold outer-config">
				<span>버튼 선 색상</span> 
				<i class="fa fa-chevron-right right-icon fold-icon"></i>
				<ul class="inner-config">
					<li> dkdk </li>
				</ul>				
			</li>
			<li class="outer-config">
				이미지
			</li>
		</ul>
				
	</div>
	<div class="block-config-footer">
		<div class="block-move">			
			<i class="fa fa-sort"></i>
			<span>블럭이동</span>
		</div>
		<div class="block-copy">
			<i class="fa fa-files-o"></i>
			<span>블럭복제</span>
		</div>
		<div class="block-html-css">
			<i class="fa fa-file-code-o"></i>
			<span>HTML/CSS</span>
		</div>
		<div class="block-remove">
			<i class="fa fa-trash-o"></i>
			<span>블럭삭제</span>
		</div>
	</div>
</div>
</body>
</html>