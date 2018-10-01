<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%@ taglib uri="http://www.springframework.org/tags" prefix= "spring" %> 
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="../pixelarity/assets/css/main.css" />

<style>
i {
	margin: 0 5px;
	cursor: pointer;
}

button {
	cursor: pointer;
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


/******************/
/* 계정 정보 변경 */
/******************/
.account-profile .container section div {
/* 	border: 1px solid black; */
}

section.account{
	overflow: hidden;
}

section.account div {
	display: inline-block;
	float: left;
}

section.account div p {
	margin: 5px 0;	
}

section.account div.left-one {
	width: 20%;
}
section.account div.left-two {
	width: 25%;
	font-weight: bold;
}

section.account div.left-three {
	width: 50%;
}

textarea {
	resize: none;
}

section.additional-info .left-two p {
	text-align: center;
}

.profile-edit-button {
	margin: 10px 0;
	padding: 8px 15px;
	border: 0;
	background-color: black;
	color: #FFF;
	float: right;
}

section.account .left-two p span, section.account .left-three input[type="password"]{
	height: 30px;
	margin: 5px 0;
}
</style>


</head>
<body>

	<!-- Header -->
	<jsp:include page="../common/header.jsp"></jsp:include>

	<!-- Main -->
	<section id="main" class="wrapper style1 account-profile">
		<header class="major">
			<h2><spring:message code="p1" /> </h2>
		</header>
		<div class="container">
			<!-- Content -->
				<section class="account">
					<div class="left-one">
						<h3><spring:message code="p2" /></h3>
					</div>
					<div class="left-two">
						<p><spring:message code="p3" /></p>
						<p><spring:message code="p4" /></p>
						<p><spring:message code="p5" /></p>
						<p><spring:message code="p6" /></p>												
					</div>
					<div class="left-three">
						<p id="profile-user-name"></p>
						<p id="profile-user-email"></p>
						<p id="profile-user-nickname">
							<span class="basic-message"></span>
							<span class="additional-option"></span>
						</p>
						<p id="profile-user-blog-address">
							<span class="basic-message"></span>
							<span class="additional-option"></span>
						</p>
					</div>
				</section>
				<hr>
				<section class="account additional-info">
					<div class="left-one">
						<h3><spring:message code="p7" /></h3>
					</div>
					<div class="left-two">
						<div>
							<img id="profile-user-image" src="../decoblo/images/profile-mypage.jpg">
							<p><spring:message code="p8" /></p>
						</div>
					</div>
					<div class="left-three">
						<textarea id="profile-user-info" rows="5" cols="25"></textarea>
						<button id="update-profile" class="profile-edit-button">수정하기</button>
					</div>
				</section>
				<hr>
				<section class="account password">
					<div class="left-one">
						<h3><spring:message code="p9" /></h3>
					</div>
					<div class="left-two">
						<p><spring:message code="p10" /></p>
						<p><spring:message code="p11" /></p>
						<p><spring:message code="p12" /></p>						
					</div>
					<div class="left-three">
						<input type="password" name="currentPassword" id="currentPassword">
						<input type="password" name="newPassword" id="newPassword">
						<input type="password" name="newPasswordCheck" id="newPasswordCheck">
						<button id="update-password-btn" class="profile-edit-button"><spring:message code="p13" /></button>
					</div>
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

	<!-- Scripts -->
	<script src="../pixelarity/assets/js/jquery.min.js"></script>
	<script src="../pixelarity/assets/js/jquery.dropotron.min.js"></script>
	<script src="../pixelarity/assets/js/jquery.scrollgress.min.js"></script>
	<script src="../pixelarity/assets/js/jquery.scrolly.min.js"></script>
	<script src="../pixelarity/assets/js/jquery.slidertron.min.js"></script>
	<script src="../pixelarity/assets/js/skel.min.js"></script>
	<script src="../pixelarity/assets/js/util.js"></script>
	<script src="../pixelarity/assets/js/main.js"></script>

	<script>
		$(function(){
			printUserProfile();
			$('#update-password-btn').on('click', changePassword);
			$('#newPasswordCheck').keydown(function(key) {
				if (key.keyCode == 13) {
					changePassword();
				}
			});
		});
		
		function printUserProfile() {
			$.ajax({
				url: 'profile',
				method: 'post',
				contentType: 'application/json; charset=utf-8',
				success: function(resp){
					$('#profile-user-name').text(resp.userName).css('font-weight', 'bold');
					$('#profile-user-email').text(resp.userEmail).css('font-weight', 'bold');
					if (resp.userNickName == ''){
						$('#profile-user-nickname .basic-message').text("<spring:message code="p14" />");
					} else {
						$('#profile-user-nickname .basic-message').text(resp.userNickName);
					}
					$('#profile-user-nickname .additional-option').html('<i class="fa fa-pencil"></i>');
					
					if (resp.blogAddress == ''){
						$('#profile-user-blog-address .basic-message').text("<spring:message code="p15" />");
						$('#profile-user-blog-address .additional-option').html('<a href="#"><spring:message code="p16" /></a>').css({'text-weight':'bold'});

					} else {
						$('#profile-user-blog-address .basic-message').text(resp.blogAddress);
						$('#profile-user-blog-address .additional-option').html('<i class="fa fa-pencil"></i>');
					}
					
					if (resp.userProfileSavedName != null) {
						$('#profile-user-image').attr('src', '../upload/profile/'+resp.userProfileSavedName);
					} else {
						$('#profile-user-image').attr('src', '../upload/profile/default.jpg');
					}
					$('#profile-user-info').text(resp.userInfo);
				}
			});		
			
		};
		
		function changePassword(){
			var currentPassword = $('#currentPassword').val();
			var newPassword = $('#newPassword').val();
			var newPasswordCheck = $('#newPasswordCheck').val();
			
			if (currentPassword == "") {
				alert(<spring:message code="p17" />);
				$('#currentPassword').focus();
				return false;
			} 
			
			if (newPassword == "") {
				alert(<spring:message code="p18" />);
				$('#newPassword').focus();
				return false;
			}
			
			if (newPassword != newPasswordCheck) {
				alert(<spring:message code="p19" />);
				$('#newPassword').focus();
				return false;
			}
			
			$.ajax({
				url: 'changePassword',
				method: 'post',
				data: {
					"currentPassword" : currentPassword,
					"newPassword" : newPassword,
				},
				success: function(resp){
					if (resp == "Success") {
						alert(<spring:message code="p20" />+'\n'
								+ <spring:message code="p21" />);
						location.href = '/www';
					} else {
						alert(<spring:message code="p22" />);
					}
				}
			});
			
		}
	</script>	
</html>