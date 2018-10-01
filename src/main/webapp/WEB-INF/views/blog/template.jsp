<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>DecoBlo - Create Your Own Blog</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="pixelarity/assets/css/main.css" />
<link rel="stylesheet" href="decoblo/css/template.css" />

<style>
.mainpop{
position: relative;
}


.allmm{
position:absolute;
top:10px;
left:20%;
height: 100%;
width: 70%;
margin: 0 auto;

}
.sun{
	position:absolute;
	width: 80%;
	height: 500px;
	top: 30%;
	left: 10%;
	
}
.bubu{
	width: 260px;
    padding: 20px;
    margin-top: 30px;
    
    float: right;
   

}
.title{
	
	width: 260px;
    padding: 10px;
    margin-top: 30px;
    float: left;


}
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
	left:50px;
	padding: 0px;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.4);
}

.template-sample {
	width: 300px;
	height: 210px;
	float: left;
	margin-left: 30px;
}

.template-sample p.hot-title {
	text-align: center;
}

.slideshow2 {
	
	position: absolute;
	left:400px;
	padding: 0px;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.4);
}

.slideshow3 {
	
	position: absolute;
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
	height: 85%;
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
	height: 3.6em; 	
	text-align: left; 
	word-wrap: break-word; 
	display: -webkit-box; 
	-webkit-line-clamp: 3; 
	-webkit-box-orient: vertical;

}
.hot-contents {
	text-overflow: ellipsis;
	height: 45%;
	overflow: hidden;
	 
	white-space: normal; 
	line-height: 1.2; 
	height: 3.6em; 
	text-align: left; 
	word-wrap: break-word; 
	display: -webkit-box; 
	-webkit-line-clamp: 3; 
	-webkit-box-orient: vertical;

}

.subscribe-new .top .ttext {
	padding: 5px;
}

.show-box .hot-title, .show-box .hot-content {
	padding: 5px;
	margin: 5px;
}

</style>


</head>
<body style="position: relative;">
	<!-- Header -->
	<jsp:include page="../common/header.jsp"></jsp:include>	
	<div class="mainpop">
	<!-- Main -->
	<section id="main" class="wrapper style1">

		<div class="container">

			<!-- Content -->
			<section id="content">

				<!-- Text -->
				<section>
					<div class="showbox">
						<h2>Template</h2>						
						<a class="prev" onclick="plusSlides(-1)"></a>
						
						<h3>
							템플릿을 선택하여 사이트를 제작하세요!
						</h3>
						<p>
							모든 템플릿들은 20여 개 블럭들의 조합으로 구성되어 있습니다. <br>
							원하는 스타일의 템플릿을 선택하신 후, 필요 없는 블럭들은 삭제하고 다른 디자인의 블럭들을 추가하면서<br> 
							자신만의 개성 있는 사이트를 만들어보세요!
						</p>
						
						<c:forEach items="${templates}" var="template" varStatus="status">
							<div class="template-sample">
								<div class="thumbnails-wrapper">
									<img data-template-no="${template.templateNo}" data-template-title="${template.templateTitle}" width="100%" height="100%" 
										src="templates/thumbnails/template-${template.templateNo}.png" class="imglog">
								</div>
							
								<p class="hot-title">
									${template.templateTitle}
								</p>
							</div>		
						</c:forEach>			

					</div>
				</section>
			</section>


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
	
	<!-- 템플릿 팝업 -->
	<div class="login-wrapper user-wrapper">
	    <div class="login-content user-content">
	      <div class="login-header user-header">
	        <i class="fa fa-times"></i>
	      </div>
	      <div class="login-body user-body" style="width:80%; margin: 0 auto; overflow: hidden">
	        <div class="text-center logo" style="float:left"><h2 align="left">템플릿-1</h2></div>
	  
			
	        <div class="text-center button use-tempalte-button" style="float: right">
		    	<p>템플릿 사용하기</p>
		    </div>
		    
		    <div class="template-name">
				<input id="blogAddress" type="text" placeholder="Blog Address">
			</div>
			
        	<div>
        		<iframe src="" class="sun" ></iframe> 
        	</div>
	     </div>
	    </div>
	</div>
	<!-- /템플릿 팝업 -->
</div>
</body>
	<!-- Scripts -->
	<script src="pixelarity/assets/js/jquery.min.js"></script>
	<script src="pixelarity/assets/js/jquery.dropotron.min.js"></script>
	<script src="pixelarity/assets/js/jquery.scrollgress.min.js"></script>
	<script src="pixelarity/assets/js/jquery.scrolly.min.js"></script>
	<script src="pixelarity/assets/js/jquery.slidertron.min.js"></script>
	<script src="pixelarity/assets/js/skel.min.js"></script>
	<script src="pixelarity/assets/js/util.js"></script>
	<script src="pixelarity/assets/js/main.js"></script>

<!-- 	</script> -->
	
	<script>
	$(function(){
		
		/*  썸네일 클릭시 */
		$('img.imglog').on('click', displayLoginPopup);
		
		/* 미리보기 창 닫기 클릭시 */
		$('.login-content .login-header i').on('click', hideLoginPopup);
		$('.login-wrapper').hide();
		
		/* 템플릿 사용 클릭시 */
		$(document).on('click', '.use-tempalte-button', function(){
			useTemplate();
			
		});
	});
	
	/* 블로그 주소 중복 확인 */
	function useTemplate() {
		if ($('#blogAddress').val() == "") {
			alert('블로그 주소를 입력해주세요.');
			$('#blogAddress').focus();
			return false;
		} else {
			$.ajax({
				method   : 'post'
				, url    : 'duplicatedAddress'
				, data   : {'address' : $('#blogAddress').val()}
				, success: function(resp) {
					if (resp == 'true') {
						createTemplate();
					} else {
						alert("이미 있는 주소입니다.\n다른 주소를 입력해주십시오.");
					}
				}
			});
		}
	}
	
	/* 블로그 생성 */
	function createTemplate() {
		var templateNo = $(".login-wrapper .login-body h2").data('template-no');
		$.ajax({
			method   : 'post'
			, url    : 'registerTemplate'
			, data   : {'templateNo' : templateNo}
			, success: function() {
				// 블로그 생성
				$.ajax({
					method   : 'get'
					, url    : 'saveBlog'
				});
				
				var moveToConfig = confirm("ブログが生成されました。 ブログ修正ページに移動しますか。");
				if (moveToConfig) {
					location.href = "/www/config";	
				}
			}
		});
	}
		
	/* 템플릿 미리보기 */
	function displayLoginPopup(){
		if($(".login-wrapper").css("display") == "none"){
			var src = "/www/templatePreview/" + $(this).data('template-no');
			$(".login-wrapper .login-content iframe").attr('src', src);
			$(".login-wrapper .login-body h2").text($(this).data('template-title'));
			$(".login-wrapper .login-body h2").attr('data-template-no', $(this).data('template-no'));
			$(".login-wrapper").show(); 
			
		} 
		$('.login-wrapper').css('z-index', '10001');
		$('.login-wrapper').each(function(index, item){
			$(item).css('z-index', '10001');
		});
	}	
		
	/* 템플릿 미리보기 숨기기 */
	function hideLoginPopup() {
		$('.login-wrapper').css('z-index', '-1');
		$('.login-wrapper').each(function(index, item){
			$(item).css('z-index', '-1');
		});
		$('.login-wrapper').hide();
	}
</script>
		
	
</html>