<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link type="text/css" rel="stylesheet" href="pixelarity/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"/>
<link rel="stylesheet" href="decoblo/css/helpPage.css" />
<link rel="stylesheet" href="pixelarity/assets/css/main.css" />
<style>

header#header.top-menu {
	position: relative;
	background-color: #000;
}

</style>
<script src="resources/library/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
function bbsList() { 	// 글목록으로 이동
	location.href = "${pageContext.request.contextPath}/bbsList";
}

function bbsCheck(){	// 글쓰기 유효성 검사
	
	var bbsTitle = $('#bbsTitle').val();
	var bbsContent = $('#bbsContent').val();
	
	if (bbsTitle == '' || bbsContent == ''){
		alert('제목과 내용을 입력하세요.');
		return false;
	}
	
	return true;
}
</script>
</head>
<body class="landing">

<header id="header" class="alt top-menu">
	<h1>
		<a href="index.html">Deco <span>Blong</span></a>
	</h1>
	<nav id="nav">
		<ul>
			<li id="login">로그인</li>
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
	
<section id="main">
<!-- <form action="writeBbs" method="post" enctype="multipart/form-data"> -->
<form action="updateBbs" method="post">
<!-- 게시글작성 게시판번호 넘겨주기 -->
<input type="hidden" name="boardNo" id="boardNo" value="7"/>
<input type="hidden" name="bbsNo" id="bbsNo" value="${bbsUpdate.bbsNo}">

	<table align="center">
		<tr>
			<th>제목</th>
			<td><input type="text" name="bbsTitle" id="bbsTitle" value="${bbsUpdate.bbsTitle}"></td>
		</tr>
<%-- 		<tr>
			<th>작성자</th>
			<td>${loginId}</td>
		</tr> --%>
<!-- 	<tr>
			<th>첨부파일</th>
			<td><input type="file" name="upload"></td>
		</tr> -->
		<tr>
			<th>내용</th>
			<td>
				<textarea rows="10" cols="50" name="bbsContent" id="bbsContent">${bbsUpdate.bbsContent}</textarea> 
			</td>
		</tr>
		<tr>
			<td class="btn" colspan="2" align="center">
				<input type="button" value="목록" onclick="bbsList()"/>
				<input type="submit" value="수정하기" onclick="return bbsCheck()"> 
			</td>
		</tr>
	
	
	
	</table>
	
</form>


</section>

</body>
</html>