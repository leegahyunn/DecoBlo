$(function(){
	/*********/
	/* Login */
	/*********/
	
	/* 로그인 메뉴 클릭시 */
	$('#login').on('click', function(){
		$('.login-wrapper').css('z-index', '10001');
		$('.login-wrapper').each(function(index, item){
			$(item).css('z-index', '10001');
		});
	});
	
	/* 로그인 창 닫기 클릭시 */
	$('.login-content .login-header i').on('click', function(){
		$('.login-wrapper').css('z-index', '-1');
		$('.login-wrapper').each(function(index, item){
			$(item).css('z-index', '-1');
			$('#userEmail').val('');
			$('#userPassword').val('');
		});
	});
	
	/* 로그인 버튼 클릭시 */
	$('.login-content .btn-wrapper .login-btn').on('click', function() {
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
	});
});