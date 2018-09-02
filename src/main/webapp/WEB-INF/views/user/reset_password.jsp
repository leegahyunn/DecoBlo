<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DecoBlo - 비밀번호 찾기</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="../pixelarity/assets/css/main.css" />
<link rel="stylesheet" href="../decoblo/css/user.css" />
</head>
<body>
	<div class="join-wrapper user-wrapper" >
	    <div class="join-content user-content">
	      <div class="join-header user-header">
	        <a href="/www/"><i class="fa fa-times"></i></a>
	      </div>
	      <div class="join-body user-body">
	        <div class="text-center logo"><img src="//i.addblock.net/modal-logo-dark.png" alt="creatorlink logo"></div>
	        <div class="text-center">
	            <span class="join-text"><b>비밀번호 재설정</b></span>
	            <br>
	            <span class="join-text">가입 시 등록한 이메일을 입력해주세요.</span> 
	        </div>
	        <div class="join-form user-form form-group">
	        	<form method="post" action="join" id="join">
	        		<input type="text" id="reset-password-email" name="userEmail" placeholder="이메일" value="" autocomplete="new-password">
	            </form>
	        </div>
	        <div class="btn-wrapper">
	        	<div id="reset-password-btn" class="join-btn user-btn">비밀번호 재설정</div>
	        </div>
	      </div>
	    </div>
	</div>
<script src="../pixelarity/assets/js/jquery.min.js"></script>
<script>
	$(function(){
		$('#reset-password-email').val('');
		
		$('#reset-password-btn').on('click', function(){
			$('#join').submit();
		});
	});
</script>
</body>
</html>