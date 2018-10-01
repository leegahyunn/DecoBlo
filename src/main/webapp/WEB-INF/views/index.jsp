<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix= "spring" %> 
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>DecoBlo - Create Your Own Blog</title>
<style type="text/css">
</style>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="pixelarity/assets/css/main.css" />
<link rel="stylesheet" href="decoblo/css/user.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

</head>
<body class="landing">
	<input type="hidden" id="isAuthed" value="${isAuthed}">
	<input type="hidden" id="type" value="${type}">
	<!-- Header -->
	<header id="header" class="alt ">
		
			<a href="#"><img src="resources/images/logo/logo_full_col.png" style="width: 100px; "></a>
		
		<nav id="nav">
			<ul>
				<li id="login" class="main-login"><spring:message code="m1"></spring:message></li>
				<li><a href="user/join"><spring:message code="m2" /></a></li>
				<li><a href="#" class="icon fa-angle-down">한국어(KO)</a>
					<ul>
						<li><a href="?lang=kr">한국어(KO)</a></li>
						<li><a href="?lang=ja">日本語(JP)</a></li>
					</ul>
				</li>
				<li><a href="#" class="icon fa-angle-down">테스트</a>
					<ul>
						<li><a href="main">메인</a></li>
						<li><a href="customer">정보수정</a></li>
						<li><a href="dashboard">대시보드</a></li>
						<li><a href="config">블로그 수정</a></li>
						<li><a href="customer">고객센터</a></li>						
					</ul>
				</li>	

			</ul>
		</nav>
	</header>

	<!-- Banner -->
	<section id="banner" style="background-image: url('pixelarity/images/background.png'); background-size: cover; ; ">
		<div class="inner">
			<h2><spring:message code="m3" /></h2>
			<p><spring:message code="m4" /></p>
			<ul class="actions">
				<li><a href="#" class="button big scrolly main-login"><spring:message code="m5" /></a></li>
			</ul>
		</div>
			<div class="a" style="bottom: 0; position: absolute; right: 0;">
				<p  style="font-size: 1.4em;"><spring:message code="m6" /> ${nUser}<spring:message code="m7" /></p>
			</div>
	</section>

	<!-- One -->	<section id="one" class="wrapper style1">
		<div class="container">
			<header class="major">
				<h2><spring:message code="m8" /></h2>
				<p><spring:message code="m9" /></p>
			</header>
			<div class="slider">
				<span class="nav-previous"></span>
				<div class="viewer">
					<div class="reel">
						<div class="slide">
							<img src="resources/images/sample_blog.png" alt="" />
						</div>
						<div class="slide">
							<img src="resources/images/sample2.jpg" alt="" />
						</div>
						<div class="slide">
							<img src="resources/images/sample3.jpg" alt="" />
						</div>
					</div>
				</div>
				<span class="nav-next"></span>
			</div>
		</div>
	</section>



	<!-- Three -->
	<section id="three" class="wrapper style1">
		<div class="container">
			<header class="major">
				<h2>Deco Blog<spring:message code="m10" />${nUser}<spring:message code="m11" /></h2>
			</header>
			<div class="row">
				<div class="4u 6u(medium) 12u$(small)">
					<article class="box post">
						<a href="#" class="image fit"><img src="resources/images/sample1.jpg"
							alt="" class="boximg" /></a>
						<h3>블로그1</h3>
						<p>Ipsum dolor tempus et commodo lorem accumsan et adipiscing
							blandit porttitor feugiat tempus lorem faucibus.</p>
						<ul class="actions">
							<li><a href="#" class="button">Learn More</a></li>
						</ul>
					</article>
				</div>
				<div class="4u 6u$(medium) 12u$(small)">
					<article class="box post">
						<a href="#" class="image fit"><img src="resources/images/sample2.jpg"
							alt=""  class="boximg" /></a>
						<h3>블로그2</h3>
						<p>Ipsum dolor tempus et commodo lorem accumsan et adipiscing
							blandit porttitor feugiat tempus lorem faucibus.</p>
						<ul class="actions">
							<li><a href="#" class="button">Learn More</a></li>
						</ul>
					</article>
				</div>
				<div class="4u$ 6u(medium) 12u$(small)">
					<article class="box post">
						<a href="#" class="image fit"><img src="resources/images/sample3.jpg"
							alt=""  class="boximg" /></a>
						<h3>블로그3</h3>
						<p>Ipsum dolor tempus et commodo lorem accumsan et adipiscing
							blandit porttitor feugiat tempus lorem faucibus.</p>
						<ul class="actions">
							<li><a href="#" class="button">Learn More</a></li>
						</ul>
					</article>
				</div>
				<div class="4u 6u$(medium) 12u$(small)">
					<article class="box post">
						<a href="#" class="image fit"><img src="resources/images/sample3.jpg"
							alt="" class="boximg" /></a>
						<h3>블로그4</h3>
						<p>Ipsum dolor tempus et commodo lorem accumsan et adipiscing
							blandit porttitor feugiat tempus lorem faucibus.</p>
						<ul class="actions">
							<li><a href="#" class="button">Learn More</a></li>
						</ul>
					</article>
				</div>
				<div class="4u 6u(medium) 12u$(small)">
					<article class="box post">
						<a href="#" class="image fit"><img src="resources/images/sample2.jpg"
							alt=""  class="boximg" /></a>
						<h3>블로그5</h3>
						<p>Ipsum dolor tempus et commodo lorem accumsan et adipiscing
							blandit porttitor feugiat tempus lorem faucibus.</p>
						<ul class="actions">
							<li><a href="#" class="button">Learn More</a></li>
						</ul>
					</article>
				</div>
				<div class="4u$ 6u$(medium) 12u$(small)">
					<article class="box post">
						<a href="#" class="image fit"><img src="resources/images/sample1.jpg"
							alt=""  class="boximg" /></a>
						<h3>블로그6</h3>
						<p>Ipsum dolor tempus et commodo lorem accumsan et adipiscing
							blandit porttitor feugiat tempus lorem faucibus.</p>
						<ul class="actions">
							<li><a href="#" class="button">Learn More</a></li>
						</ul>
					</article>
				</div>
			</div>
		</div>
	</section>

	<!-- Footer -->
	<footer id="footer">
		<ul class="icons">
			<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
			<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
			<li><a href="#" class="icon fa-instagram"><span	class="label">Instagram</span></a></li>
			<li><a href="#" class="icon fa-dribbble"><span class="label">Dribbble</span></a></li>
			<li><a href="#" class="icon fa-envelope"><span class="label">Envelope</span></a></li>
		</ul>
		<ul class="menu">
			<li><a href="#">FAQ</a></li>
			<li><a href="#">Terms of Use</a></li>
			<li><a href="#">Privacy</a></li>
			<li><a href="#">Contact</a></li>
		</ul>
		<span class="copyright"> &copy; DecoBlog </span>
	</footer>
	
	<!-- 로그인 팝업 -->
	<div class="login-wrapper user-wrapper">
	    <div class="login-content user-content">
	      <div class="login-header user-header">
	        <i class="fa fa-times"></i>
	      </div>
	      <div class="login-body user-body">
	        <div class="text-center logo"><img src="resources/images/logo/logo_full_white.png" alt="creatorlink logo" style="width: 200px;"></div>
	        <div class="text-center">
	            <span class="join-text"><spring:message code="m12" /></span>
	            <a class="join" href="user/join"><spring:message code="j5" /></a>
	        </div>
	        <div class="login-form user-form form-group">
	            <input type="text" id="userEmail" name="userEmail" class="form-control valid" placeholder=<spring:message code="j3" /> autocomplete="new-password">
	            <input type="password" id="userPassword" name="userPassword" class="form-control valid" placeholder=<spring:message code="j4" />>
	        	<div class="row">
		        	<label class="forget col-md-12 col-sm-12 col-xs-12"><a href="user/password_reset"><spring:message code="m13" /></a></label>
	        	</div>
	        </div>
	        <div class="btn-wrapper">
	        	<div class="login-btn user-btn"><spring:message code="m14" /></div>
	        </div>
	      </div>
	    </div>
	</div>
	<!-- /로그인 팝업 -->
	
	<!-- Scripts -->
	<script src="pixelarity/assets/js/jquery.min.js"></script>
	<script src="pixelarity/assets/js/jquery.dropotron.min.js"></script>
	<script src="pixelarity/assets/js/jquery.scrollgress.min.js"></script>
	<script src="pixelarity/assets/js/jquery.scrolly.min.js"></script>
	<script src="pixelarity/assets/js/jquery.slidertron.min.js"></script>
	<script src="pixelarity/assets/js/skel.min.js"></script>
	<script src="pixelarity/assets/js/util.js"></script>
	<script src="pixelarity/assets/js/main.js"></script>
	<script src="decoblo/js/index.js"></script>

	
</body>
</html>