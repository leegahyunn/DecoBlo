<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="pixelarity/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="decoblo/css/blockConfig.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="resources/jquery-3.3.1.min.js"></script>
<script src="resources/jquery-ui.min.js"></script>
<script src="resources/colpickRmx.js"></script>
<script src="decoblo/js/blockConfig.js"></script>

</head>
<body>
<div class="block-config">
	<div class="block-config-header">
		<i class="fa fa-cog"></i> <span>블럭 설정</span><i class="fa fa-times"></i>
	</div>
	
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
	
	<!-- footer -->
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
	<!-- /footer -->
</div>


 
 
</body>
</html>