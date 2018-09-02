<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="library/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="resources/decoblo/js/blockSetting.js"></script>
<link type="text/css" rel="stylesheet" href="decoblo/css/blockSetting.css">
<link type="text/css" rel="stylesheet" href="decoblo/css/blockTemplate.css">
<link rel="stylesheet" href="pixelarity/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="decoblo/css/blockConfig.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="library/js/jquery-3.3.1.min.js"></script>
<script src="library/js/jquery-ui.min.js"></script>
<script src="library/js/colpickRmx.js"></script>
<script src="decoblo/js/blockConfig.js"></script>
</head>
<body>
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
	<div class="templates-wrapper" style="background-color: gray;">
	
	<c:if test="${empty blockList}" var="seletedBlockList">
		<div class="intro-block-wrapper" id="intro-block-wrapper">
			<div class="text-shadow">
				<div>
					<img alt="추가" src="resources/images/blockSettingimg/addblock.png"/>
				</div>
				<b>메뉴가 비어있습니다. 블럭을 추가하시려면 여기를 클릭하세요.</b>
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
					<div class="block-copy">
						<i class="fa fa-files-o"></i>
						<span>블럭복제</span>
					</div>
					<div class="block-html-css">
						<i class="fa fa-file-code-o"></i>
						<span>HTML/CSS</span>
					</div>
					<div class="block-remove" onclick="blockDelete(${blockList.blockSeq})">
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
		
</div>	
</section>
</body>
</html>