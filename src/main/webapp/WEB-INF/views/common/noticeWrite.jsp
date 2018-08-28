<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Notice</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link type="text/css" rel="stylesheet" href="pixelarity/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"/>
<link rel="stylesheet" href="decoblo/css/helpPage.css" />
<script src="resources/library/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
function listBbs() {
	location.href = "${pageContext.request.contextPath}/listBbs";
}

</script>
</head>
<body class="landing">
	<!-- Header -->
		<header id="header" class="alt ">
			<h1><a href="index.html">Decoblo</a></h1>
			<nav id="nav">
				<ul>
					<li><a href="login">로그인</a></li>
					<li><a href="join">무료회원가입</a></li>
					<li>
						<a href="#"><i class="fas fa-angle-down"></i> 한국어(KO)</a>
						
						<ul>
							<li><a href="#">한국어(KO)</a></li>
							<li><a href="#">日本語(JP)</a></li>
							
							<li>
								<a href="#">Submenu</a>
								<ul>
									<li><a href="#">Option 1</a></li>
									<li><a href="#">Option 2</a></li>
									<li><a href="#">Option 3</a></li>
									<li><a href="#">Option 4</a></li>
								</ul>
							</li>
						</ul>
					</li>
					
				</ul>
			</nav>
		</header>

<section id="main">
	<form action="writeBbs" method="post" enctype="multipart/form-data">
	<input type="hidden" name="userid" value="${sessionScope.logId }">
	<table align="center">
		<tr>
			<th>제목</th>
			<td><input type="text" name="title" id="title"></td>
		</tr>
		<tr>
			<th>작성자</th>
			<td>${loginId }</td>
		</tr>
		<tr>
			<th>첨부파일</th>
			<td><input type="file" name="upload"></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea rows="10" cols="50" name="content" id="content"></textarea> </td>
		</tr>
		<tr>
			<td class="btn" colspan="2" align="center">
				<input type="button" value="목록" onclick="listBbs()"/>
				<input type="submit" value="저장"> 
			</td>
		</tr>
	
	
	
	</table>
	
	</form>


</section>

</body>
</html>