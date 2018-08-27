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
<script src="library/js/jquery-3.3.1.min.js"></script>
<script src="library/js/jquery-ui.min.js"></script>
<script src="library/js/colpickRmx.js"></script>
<script src="decoblo/js/blockConfig.js"></script>

</head>
<body>
<div class="block-config">
	<div class="block-config-header">
		<i class="fa fa-cog"></i> <span>블럭 설정</span><i class="fa fa-times"></i>
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