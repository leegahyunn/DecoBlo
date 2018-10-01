<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DecoBlo - 회원가입</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="../pixelarity/assets/css/main.css" />
<link rel="stylesheet" href="../decoblo/css/user.css" />
</head>
<body>
	<div class="join-wrapper user-wrapper" >
	    <div class="join-content user-content">
	      <div class="join-header user-header">
	        <a href="/www"><i class="fa fa-times"></i></a>
	      </div>
	      <div class="join-body user-body">
	        <div class="text-center logo"><img src="resources/images/logo/logo_full_col.png" alt="creatorlink logo" style="width: 200px;"></div>
	        <div class="text-center">
	            <span class="join-text">크리에이티브한 당신을 위한 사이트를 만들어보세요!</span> 
	        </div>
	        <div class="join-form user-form form-group">
	        	<form method="post" action="join" id="join">
	        	<input type="text" id="userName" name="userName" placeholder="이름" value="" autocomplete="new-password">
	            <input type="text" id="userEmail" name="userEmail" placeholder="이메일" value="" autocomplete="new-password">
	            <input type="password" id="userPassword" name="userPassword" placeholder="비밀번호" value="" autocomplete="new-password">
	            </form>
	        </div>
	        <div class="btn-wrapper">
	        	<div id="join-btn" class="join-btn user-btn">회원가입</div>
	        </div>
	      </div>
	    </div>
	</div>
<script src="../pixelarity/assets/js/jquery.min.js"></script>
<script>
	$(function(){
		$('#userName').val('');
		$('#userEmail').val('');
		$('#userPassword').val('');
		
		$('#join-btn').on('click', function(){
			$('#join').submit();
		});
	});
</script>
</body>
</html>