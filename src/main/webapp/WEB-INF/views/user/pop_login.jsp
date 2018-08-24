<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="pixelarity/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="decoblo/css/user.css">

</head>
<body>
<div class="login-wrapper" style="border: 1px solid black">
    <div class="login-content">
      <div class="login-header">
        <i class="fa fa-times"></i>
      </div>
      <div class="login-body">
        <div class="text-center logo"><img src="//i.addblock.net/modal-logo-dark.png" alt="creatorlink logo"></div>
        <div class="text-center">
            <span class="join-text">데코블로가 처음이신가요?</span> 
            <a class="join" href="/member/join">회원가입</a>
        </div>
        <div class="login-form form-group">
            <input type="text" id="mb_id" name="mb_id" class="form-control valid" placeholder="이메일"><p class="errormsg" style="display: none;"><label for="mb_id"></label></p>
            <input type="password" id="mb_password" name="mb_password" class="form-control valid" placeholder="비밀번호"><p class="errormsg" style="display: none;"><label for="mb_password"></label></p>
        	<div class="row">
	        	<label class="remember col-md-6 col-sm-6 col-xs-6"><input type="checkbox"> <span data-lang="page.member.login-modal.reId">로그인 상태 유지</span></label>
	        	<label class="forget col-md-6 col-sm-6 col-xs-6"><a href="/member/support/password_reset" data-lang="page.member.login-modal.password-reset">비밀번호를 잊으셨나요?</a></label>
        	</div>
        </div>
        <div class="btn-wrapper">
        	<a href="#" class="btn btn-primary btn-lg btn-block">로그인</a>
        </div>
      </div>
    </div>
</div>
</body>
</html>