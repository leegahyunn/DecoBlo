<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix= "spring" %>     
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
	        <div class="text-center logo"><img src="www/src/main/webapp/resources/images/logo/logo_full_col.png" alt="creatorlink logo" style="width: 200px;"></div>
	        <div class="text-center">
	            <span class="join-text"><spring:message code="j1" /></span> 
	        </div>
	        <div class="join-form user-form form-group">
	        	<form method="post" action="join" id="join">
	        	<input type="text" id="userName" name="userName" placeholder= <spring:message code="j2" /> value="" autocomplete="new-password">
	            <input type="text" id="userEmail" name="userEmail" placeholder= <spring:message code="j3" /> value="" autocomplete="new-password">
	            <input type="password" id="userPassword" name="userPassword" placeholder=<spring:message code="j4" /> value="" autocomplete="new-password">
	            </form>
	        </div>
	        <div class="btn-wrapper">
	        	<div id="join-btn" class="join-btn user-btn"><spring:message code="j5" /></div>
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