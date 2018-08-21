<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><img src="//i.addblock.net/fa-close-modal.png" alt="close"></span></button>
        <h4 class="modal-title" id="myModalLabel">&nbsp;</h4>
      </div>
      <div class="modal-body">
        <div class="text-center"><img src="//i.addblock.net/modal-logo-dark.png" alt="creatorlink logo"></div>
        <div class="bottom-box">
            <span data-lang="page.member.login-modal.jointext">크리에이터링크가 처음이신가요?</span> <a href="/member/join" data-lang="page.member.login-modal.join">회원가입</a>
        </div>
        <div class="login form-group">
            <input type="text" id="mb_id" name="mb_id" class="form-control valid" placeholder="이메일"><p class="errormsg" style="display: none;"><label for="mb_id" generated="true" class="error"></label></p>
            <input type="password" id="mb_password" name="mb_password" class="form-control valid" placeholder="비밀번호"><p class="errormsg" style="display: none;"><label for="mb_password" generated="true" class="error"></label></p>
        	<div class="row">
	        	<label class="remember col-md-6 col-sm-6 col-xs-6"><input type="checkbox"> <span data-lang="page.member.login-modal.reId">로그인 상태 유지</span></label>
	        	<label class="forget col-md-6 col-sm-6 col-xs-6"><a href="/member/support/password_reset" data-lang="page.member.login-modal.password-reset">비밀번호를 잊으셨나요?</a></label>
        	</div>
        </div>
        <div class="btn-wrap">
        	<a href="#" class="btn btn-primary btn-lg btn-block" onclick="goSubmit()" data-lang="config.modal.login">로그인</a>
        	<div class="hr-box"><hr></div>
        	<a href="#" class="btn btn-lg btn-block btn-fblogin" onclick="FaceBookLoginAPI()" data-lang="config.modal.fblogin"><i class="fa fa-facebook"></i> 페이스북으로 로그인</a>
        </div>
      </div>
    </div>
</body>
</html>