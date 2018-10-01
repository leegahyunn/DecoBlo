<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix= "spring" %>  
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>DecoBlo - Create Your Own Blog</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="pixelarity/assets/css/main.css" />
<style>
.top {
	position: relative;
	height: 120px;
}

.timg {
	position: absolute;
	right: 20px;
	height: 120px;
	width: 180px;
}

.ttext {
	position: absolute;
	width: 650px;
	height: 120px;
	text-overflow: ellipsis;
}

.ttext p {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	width: 650px;
	height: 120px;
}

.ttext hr {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	width: 650px;
	height: 40px;
}

.slider {
	width: 50%;
	margin: 100px auto;
}

.slick-slide {
	margin: 0px 20px;
}

.slick-slide img {
	width: 100%;
}

.slick-prev:before, .slick-next:before {
	color: black;
}

.slideshow {
	
	position: absolute;
	width: 300px;
	height: 400px;
	left:50px;
	padding: 0px;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.4);
}

.slideshow2 {
	
	position: absolute;
	width: 300px;
	height: 400px;
	left:400px;
	padding: 0px;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.4);
}

.slideshow3 {
	
	position: absolute;
	width: 300px;
	height: 400px;
	left:750px;
	padding: 0px;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.4);
}
.showbox{
	position: relative;
	height: 450px;
}

.showbox .thumbnails-wrapper {
	width: 100%;
	height: 40%;
}

.showbox .thumbnails-wrapper .img {
	width: 100%;
	height: 100%;
}

.post-thumbnails {
	width: 20%;
    height: 100%;
}

.post-contents {
	text-overflow: ellipsis;
	height: 100%;
	overflow: hidden;
	 
	white-space: normal; 
	line-height: 1.2; 
	
	text-align: left; 
	word-wrap: break-word; 
	display: -webkit-box; 
	-webkit-line-clamp: 3; 
	-webkit-box-orient: vertical;

}
.hot-contents {
	text-overflow: ellipsis;
	height: 30%;
	overflow: hidden;
	 
	white-space: pre; 
	line-height: 1.2; 
	 
	text-align: left; 
	word-wrap: break-word; 
	display: -webkit-box;
	-webkit-box-orient: vertical;
	-webkit-line-clamp: 3; 
}

.subscribe-new .top .ttext {
	padding: 5px;
}

.show-box .hot-title, .show-box .hot-content {
	padding: 5px;
	margin: 5px;
	
}
.hot-content{
	text-overflow: ellipsis;
	height: 35%;
	overflow: hidden;
	display: -webkit-box; 
	-webkit-line-clamp: 5; 
	-webkit-box-orient: vertical;


}
</style>


</head>
<body>
	<!-- Header -->
	<jsp:include page="header.jsp"></jsp:include>

	<!-- Main -->
	<section id="main" class="wrapper style1">

		<div class="container">

			<!-- Content -->
			<section id="content">

				<!-- Text -->
				<section>
					<div class="showbox">
						<h2>HOT ISSUE</h2>
						<a class="prev" onclick="plusSlides(-1)"></a>
						<div class="slideshow">
							<div class="thumbnails-wrapper">
								<img width="100%" height="100%" src="resources/images/sample4.jpg">
							</div>
							<h3 class="hot-title">
								Object Oriented Programming 
							</h3>
							<p class="hot-content">
								7.1 객체지향이란?
								Java
								객체지향프로그래밍(OOP)
								 
								
								객체란 무엇인가 (Object)
								실세계에 존재하는 하나의 사물, 사람, 동물 등 모든 것
								 
								
								절차지향프로그래밍(PP)
								데이터가 있고, 함수들이 데이터에 접근하는 프로그래밍
								데이터와 알고리즘이 묶여져 있지 않다. (데이터따로, 알고리즘따로)
								ex) – 소비자와 생산자
								생산자 : 물건을 생산, 물건을 판매
								소비자 : 물건을 구매, 물건을 소비
								물건, 돈 : 생산자와 소비자가 공유하는 데이터
								절차지향 – 데이터(물건, 돈)를 기준
								1. 생산자가 소비자에게 돈을 받고 물건을 판매한다.
								물건 –;  – 돈 ++;
								2. 소비자는 생산자에게 돈을 주고 물건을 구매한다.
								물건 ++;  – 돈 –;
								기준 : 행위(기능)
								장점 : 기능 중심이므로 프로그램의 구조가 단순하다.
								단점 : 확장성이 떨어진다. (기능의 추가 수정) 
							</p>
						</div>
						<div class="slideshow2">
							<div class="thumbnails-wrapper">
								<img width="100%" height="100%" src="resources/images/sample5.jpg">
							</div>
							<h3 class="hot-title">
								불고기양념 표고볶음
							</h3>
							<p class="hot-content">
								안녕하세요, 동글이엄마예요^^

								주말동안 날씨가 급 쌀쌀해져서
								
								동글이 데리고 놀이터 나갔다가 깜짝 놀랐어요.
								
								모두모두 환절기 감기 조심하셔야 할 것 같아요.
								
								 
								
								점심 밥상엔 오리고기찜이 올라가서
								
								소고기를 올리기가 애매했던지라
								
								표고버섯을 불고기인 척 하게 하기 위해
								
								불고기양념 느낌나는 표고볶음을 준비해봤어요 
							</p>
						</div>
						<div class="slideshow3">
							<div class="thumbnails-wrapper">
								<img width="100%" height="100%" src="resources/images/sample6.jpg">
							</div>
							<h3 class="hot-title">
								에어팟 익숙함이 필요한 솔직 후기
							</h3>
							<p class="hot-content">
								처음에는 에어팟 디자인이 마음에 들지 않아서 구매를 미뤘으나
								에어팟 가격이 내려가면서 이제는 거의 대부분 에어팟을 쓰고 있는것을 보니
								에어팟 디자인도 나름 괜찮아 보이기 시작했습니다.
								그러자 이제서는 에어팟 2세대가 나올거라는 이야기에
								2세대가 출시되면 구매를 해야지 하고 마음을 먹고 있었는데
							</p>
						</div>

					</div>
				</section>
			</section>

			<header>
				<div class="a"></div>


				<hr />
				<div class="box"></div>
			</header>

			
			<h2>이웃 새글</h2>
			<div class="subscribe-new">
				<div class="top">
					<div class="ttext">
						<h3 class="post-title">
							샤오미 SWDK(사와디카) 무선 침구청소기 제품 개봉/간단후기
						</h3>
						<p class="post-content">
							샤오미 로봇청소기, 샤오미 공기청정기, 샤오미 물걸레 청소기, 등등... 
							집안의 가전제품들 중 샤오미 제품들이 차지하는 비중이 요즘 부쩍 
							늘어나고있습니다. 중국을 좋아하고 중국제품을 찬양해서 구매하는것이 
							절대로 아닙니다. 이미 저희 집에는 대표적인 가전제품; TV, 냉장고, 
							김치냉장고는 으뜸인 LG제품이며 전자레인지는 삼성제품입니다. 
							
							하지만 왜 요즘 부쩍 중국 제품들을 많이 이용하게 되는걸까요. 제 개인적으로 
							아직까지 오래 쓸 가전제품은 국산 가전제품을 쓰는것이 맞다고 생각합니다. 
							다만 배터리가 들어가고 끽해봐야 2~5년정도 쓸것들 게다가 가격이 10만원 미만의 
							제품들은 굳이 국산을 애용할 필요는 없다고 생각해요. 더군다나 제가 구매한 샤오미 
							제품들은 가격이 저렴하면서도 성능도 훌륭하기 때문에 구매한 것이죠.
						</p>
					</div>
					<div class="timg post-thumbnails">
						<img width="100%" height="100%" src="resources/images/sample7.jpg">
					</div>
				</div>
				<hr />
				<div class="top">
					<div class="ttext">
						<h3 class="post-title">
							[타오바오 펀딩]COSWHEEL FTN-T2 전기자전거 작지만 오래간다.
						</h3>
						<p class="post-content">
							COSWHEEL 업체는 디자인이 훌륭한 전동스쿠터를 만들던 업체입니다. 이 COSWHEEL사에서 T1모델의 접이식 전기자전거를 출시하더니 이번에는 T2모델로 미니전기자전거를 출시했습니다.  
						</p>
					</div>
					<div class="timg post-thumbnails">
						<img width="100%" height="100%" src="resources/images/sample8.jpg">
					</div>
				</div>
				<hr />
				<div class="top">
					<div class="ttext">
						<h3 class="post-title">
							문재인 대통령의 유엔 기조 연설에 북한도 화답하다
						</h3>
						<p class="post-content">
							문재인 대통령이 26일(현지시각), 미국 뉴욕 유엔 총회장에서 

							제73차 유엔총회 기조연설을 했습니다. 
							
							연설에서 가장 많이 언급된 단어는 ‘평화’였습니다.
							


						</p>
					</div>
					<div class="timg post-thumbnails">
						<img width="100%" height="100%" src="resources/images/sample9.jpg">
					</div>
				</div>
			</div>
		</div>
	</section>


	<!-- Footer -->
	<footer id="footer">
		<ul class="icons">
			<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
			<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
			<li><a href="#" class="icon fa-instagram"><span
					class="label">Instagram</span></a></li>
			<li><a href="#" class="icon fa-dribbble"><span class="label">Dribbble</span></a></li>
			<li><a href="#" class="icon fa-envelope"><span class="label">Envelope</span></a></li>
		</ul>
		<ul class="menu">
			<li><a href="#">FAQ</a></li>
			<li><a href="#">Terms of Use</a></li>
			<li><a href="#">Privacy</a></li>
			<li><a href="#">Contact</a></li>
		</ul>
		<span class="copyright"> &copy; Deco Blog </span>
	</footer>

	<!-- Scripts -->
	<script src="pixelarity/assets/js/jquery.min.js"></script>
	<script src="pixelarity/assets/js/jquery.dropotron.min.js"></script>
	<script src="pixelarity/assets/js/jquery.scrollgress.min.js"></script>
	<script src="pixelarity/assets/js/jquery.scrolly.min.js"></script>
	<script src="pixelarity/assets/js/jquery.slidertron.min.js"></script>
	<script src="pixelarity/assets/js/skel.min.js"></script>
	<script src="pixelarity/assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="pixelarity/assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="pixelarity/assets/js/main.js"></script>
	
		
	
</html>