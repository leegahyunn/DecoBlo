<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
</head>
<body class="landing">
	<input type="hidden" id="isAuthed" value="${isAuthed}">
	<!-- Header -->
	<header id="header" class="alt ">
		<h1>
			<a href="index.html">Deco <span>Blong</span></a>
		</h1>
		<nav id="nav">
			<ul>
				<li id="login">로그인</li>
				<li><a href="user/join">무료회원가입</a></li>
				<li><a href="#" class="icon fa-angle-down">한국어(KO)</a>
					<ul>
						<li><a href="#">한국어(KO)</a></li>
						<li><a href="#">日本語(JP)</a></li>
					</ul>
				</li>
				<li><a href="main">메인</a></li>
				<li><a href="dashboard">대시보드</a></li>
				<li><a href="config">블로그 수정</a></li>
				<li><a href="customer">고객센터</a></li>	

			</ul>
		</nav>
	</header>

	<!-- Banner -->
	<section id="banner" style="background-image: url('pixelarity/images/background.png'); background-size: cover; ; ">
		<div class="inner">
			<h2>자신만의 특별한 블로그 제작</h2>
			<p>코딩을 몰라도 누구나 자신만에 특별한 블로그를 만들 수 있습니다.</p>
			<ul class="actions">
				<li><a href="#one" class="button big scrolly">제작하기</a></li>
			</ul>
		</div>
			<div class="a" style="bottom: 0; position: absolute; right: 0;">
				<p  style="font-size: 12px;">현재 00000명이 DecoBlog를
					이용하고 있습니다.</p>
			</div>
	</section>

	<!-- One -->
	<section id="one" class="wrapper style1">
		<div class="container">
			<header class="major">
				<h2>마우스 클릭만으로 만들어지는 블로그</h2>
				<p>전부 다른 여러가지에 블록들과 템플릿을 이용한 자신만의 블로그로!</p>
			</header>
			<div class="slider">
				<span class="nav-previous"></span>
				<div class="viewer">
					<div class="reel">
						<div class="slide">
							<img src="pixelarity/images/slide01.jpg" alt="" />
						</div>
						<div class="slide">
							<img src="pixelarity/images/slide02.jpg" alt="" />
						</div>
						<div class="slide">
							<img src="pixelarity/images/slide03.jpg" alt="" />
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
				<h2>Deco Blog로 만든 0000개의 멋진 블로그들을 확인해보세요!</h2>
			</header>
			<div class="row">
				<div class="4u 6u(medium) 12u$(small)">
					<article class="box post">
						<a href="#" class="image fit"><img src="pixelarity/images/pic01.jpg"
							alt="" /></a>
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
						<a href="#" class="image fit"><img src="pixelarity/images/pic02.jpg"
							alt="" /></a>
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
						<a href="#" class="image fit"><img src="pixelarity/images/pic03.jpg"
							alt="" /></a>
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
						<a href="#" class="image fit"><img src="pixelarity/images/pic04.jpg"
							alt="" /></a>
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
						<a href="#" class="image fit"><img src="pixelarity/images/pic05.jpg"
							alt="" /></a>
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
						<a href="#" class="image fit"><img src="pixelarity/images/pic06.jpg"
							alt="" /></a>
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
	        <div class="text-center logo"><img src="//i.addblock.net/modal-logo-dark.png" alt="creatorlink logo"></div>
	        <div class="text-center">
	            <span class="join-text">데코블로가 처음이신가요?</span> 
	            <a class="join" href="user/join">회원가입</a>
	        </div>
	        <div class="login-form user-form form-group">
	            <input type="text" id="userEmail" name="userEmail" class="form-control valid" placeholder="이메일" autocomplete="new-password">
	            <input type="password" id="userPassword" name="userPassword" class="form-control valid" placeholder="비밀번호">
	        	<div class="row">
		        	<label class="forget col-md-12 col-sm-12 col-xs-12"><a href="/member/support/password_reset" data-lang="page.member.login-modal.password-reset">비밀번호를 잊으셨나요?</a></label>
	        	</div>
	        </div>
	        <div class="btn-wrapper">
	        	<div class="login-btn user-btn">로그인</div>
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