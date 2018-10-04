$(function(){
	/*********/
	/* Login */
	/*********/
	
	/* 로그인 메뉴 클릭시 */
	$('.main-login').on('click', displayLoginPopup);
	
	/* 로그인 창 닫기 클릭시 */
	$('.login-content .login-header i').on('click', hideLoginPopup);
	
	/* 로그인 버튼 클릭시 & 엔터 */
	$('.login-content .btn-wrapper .login-btn').on('click', login);
	$('#userPassword').keydown(function(key) {
		if (key.keyCode == 13) {
			login();
		}
	});
	/* 로그인 버튼 클릭시 이메일로 포커스 이동 */
	$('#login').on('click', function() {
		
		$('#userEmail').focus();
	})
	if ($('#type').val()=="emailConfirm") {
		if ($('#isAuthed').val() == 1) {
			alert("会員認証に成功しました。 ログインしてください。");
		} else {
			var reMail = confirm("인증에 실패하였습니다. \n 비밀번호를 다시 설정하시겠습니까?");
			if (reMail){
				location.href = '/www/user/password_reset';
			}
		}
	}



	
	function displayLoginPopup(){
		$('.login-wrapper').css('z-index', '10001');
		$('.login-wrapper').each(function(index, item){
			$(item).css('z-index', '10001');
		});
	}
	
	function hideLoginPopup() {
		$('.login-wrapper').css('z-index', '-1');
		$('.login-wrapper').each(function(index, item){
			$(item).css('z-index', '-1');
			$('#userEmail').val('');
			$('#userPassword').val('');
		});
	}
	
	function login(){
		var userEmail = $('#userEmail').val();
		var userPassword = $('#userPassword').val();
		
		if (userEmail == ''){
			alert('이메일을 입력하여 주십시오');
			$('#userEmail').focus();
			return;
		}
		if (userPassword == ''){
			alert('비밀번호를 입력하여 주십시오');
			$('#userPassword').focus();
			return;
		}
		
		var sendData = {"userEmail": userEmail, "userPassword": userPassword};

		$.ajax({
			method : 'post'
			, url : 'login'
			, data : JSON.stringify(sendData)
			, dataType : 'json'
			, contentType : 'application/json; charset:utf-8'
			, success : function (resp){
				console.log(resp);
				if (resp) {
					location.href = "main";
				} else {
					alert("아이디와 비밀번호가 일치하지 않습니다.");
					$('#userEmail').focus();
				}
			}
		});
	}
});