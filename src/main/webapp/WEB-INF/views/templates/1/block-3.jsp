<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="templates/common.css" />
<link rel="stylesheet" href="templates/block-3.css" />
</head>
<body>
<div class="menu-wrapper">
	<!-- 쇼케이스 블록, block-3 -->
	<div class="block-wrapper">
		<div class="block-3">
			<div class="slideshow-container">
				<div class="mySlides fade">
					<img
						src="https://post-phinf.pstatic.net/MjAxODAxMTVfMjQ4/MDAxNTE2MDA3Mjk1NTc0.trofpy35cywF7usTPQLpNa2TDwglm2QLXlB8YRCtcXkg.ntDPMI3ayEXTFisVKzX1_e1PWyi0TESajPzU1PfoEdcg.PNG/07_%EB%A9%94%EA%B0%80%EB%A6%AC%EC%9E%90%EB%AA%BD-%ED%94%BC%EC%B9%B4%EC%B8%84final2.png?type=w1200"
						style="width: 100%; height: 500px;">
				</div>
	
				<div class="mySlides fade">
					<img
						src="http://123emoji.com/wp-content/uploads/2017/08/sticker-5-225.png"
						style="width: 100%; height: 500px;">
				</div>
	
				<div class="mySlides fade">
					<img
						src="http://dh.aks.ac.kr/Edu/wiki/images/3/3a/%ED%94%BC%EC%B9%B4.jpg"
						style="width: 100%; height: 500px;">
				</div>
				<div class="left">
					<a class="prev" onclick="plusSlides(-1)" style="left: 30px;"><i
						class="fas fa-chevron-circle-left"
						style="font-size: 50px; color: black;"></i></a>
				</div>
				<div class="right">
					<a class="next" onclick="plusSlides(1)" style="right: 30px;"><i
						class="fas fa-chevron-circle-right"
						style="font-size: 50px; color: black;"></i></a>
				</div>
			</div>
		</div>
	
		<br>
	
		<div style="text-align: center">
			<span class="dot" onclick="currentSlide(1)"></span> <span class="dot"
				onclick="currentSlide(2)"></span> <span class="dot"
				onclick="currentSlide(3)"></span>
		</div>
	</div>
	<!-- /쇼케이스 블록, block-3 -->
</div>

<script src="resources/library/js/jquery-3.3.1.min.js"></script>
<script src="templates/block-3.js"></script>
</body>
</html>