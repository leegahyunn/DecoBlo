<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
<title>Notice</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link type="text/css" rel="stylesheet" href="pixelarity/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"/>
<link rel="stylesheet" href="decoblo/css/helpPage.css" />
<script src="resources/jquery-3.3.1.min.js"></script>
<style type="text/css">
	.table-wrapper {
		margin: o auto;
	}
	
	.qalist {
		display : flex;
		width : 400px;
		text-align: center;
		vertical-align: middle;
		justify-content: space-around;
		margin: 1px;
	}
	
	option {
		font-size: 15px;
	}
	
		
	input.buttons{
	
		line-height:normal;
		text-align: center;
		margin: 5px;
		padding-left: 15px;
		padding-right: 15px;
	}
		
	
	footer#footer {
		padding: 0;
		padding-bottom : 50px;
		text-align :center;
		width: 100%;
		color: #AAA;
		
	}
	
	tbody{
		font-size: 16px;
	}
	
	hr {
		height: 1px;
		background-color : white;
	}
	

	section#intro-photo{
		display: block;
	    padding-top: 0px;
	    padding-bottom: 20px;
		
	}
	section#intro-photo div#article {
		width: 100%;
		height: 300px;
		background-color: rgba(100, 100, 100, 0.5);
	}

	h5 {
		 padding-bottom: 20px;
	}
	
</style>
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



<!-- 소개 사진 -->
<section id="intro-photo" class="wrapper">
	<div id="article">
	</div>
</section>



<!-- 글목록 -->
<section id="main" class="wrapper">
	<div class="heading" align="center">
		<h1 class="title">NOTICE</h1>
		<p>데코블로의 기능 개선 및 서비스 점검 등 새로운 소식을 안내 드립니다.</p>
	</div>



	<div align="center"><!-- 큰div태그 -->	
	 <!-- 일단 여기도 검색 기능 -->
		<div align="right" style="width:1170px">
			<form class="qalist" action="qalist">
				<select name="searchItem" class="searchItem" style="margin: 5px;">
	<!-- 여기 검색에는 작성자 검색 X => 특별히 필요할 것 같지 않아서 넣지 않음 -->
					<option value="title" ${searchItem == 'title' ? 'selected':'' } >글제목</option>
					<option value="content" ${searchItem == 'content' ? 'selected':'' } >내용</option>
				</select>
				<input class="searchWord" type="text" name="searchWord" value="${searchWord }" style="margin: 5px;"/>
				<input class="buttons" type="button" value="검색" style="line-height:normal; text-align: center; margin: 5px;"/>
			</form>
		</div>

<br>	<!-- 한줄 띄기 -->

	<!-- 글목록 div 태그 -->
		<div class="table-wrapper">	
			<table class="board" border="1" style="width: 1200px;">
				<thead>
					<tr>
						<th>No.</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
					</tr>
				</thead>
				<tbody>
					<%-- 실제로 사용할 코드
					<c:if test="${empty noticelist }">
						<td colspan="5">작성된 글이 없습니다</td>
					</c:if>
					<!-- 이하 글 목록 반복 -->
					<c:if test="${not empty noticelist }">
					<c:forEach var="notice" items="${noticelist}" varStatus="status">
						<tr>
							<td class="center">${status.count + navi.startRecord}</td>
							<td><a href="noticeDetail?noticenum=${notice.noticenum}">${notice.title}</a></td>
							<td>${notice.userid}</td>
							<td>${notice.regdate}</td>
						</tr>
					</c:forEach>
					</c:if> --%>
					
					
					<!-- 일단 박아놓기 -->
					<tr>
						<td class="center">${status.count + navi.startRecord}</td>
						<td><a href="noticeDetail?noticenum=${notice.noticenum}">안녕하세요 공지사항입니다.</a></td>
						<td>snoopy</td>
						<td>2018.08.16</td>
					</tr>
				</tbody>
			</table>

				<div align="center">
					<a href="review?currentPage=${navi.currentPage - navi.pagePerGroup}&searchItem=${searchItem}&searchWord=${searchWord}"><i class="fas fa-angle-double-left"></i> </a>
					<a href="review?currentPage=${navi.currentPage - 1}&searchItem=${searchItem}&searchWord=${searchWord}"><i class="fas fa-caret-left"></i></a>
	
						<c:forEach var="page"  begin="${navi.startPageGroup}" end="${navi.endPageGroup}">
						<c:if test="${navi.currentPage == page }">
							<a href="review?currentPage=${page}&searchItem=${searchItem}&searchWord=${searchWord}">${page}</a> &nbsp;
						</c:if>
						<c:if test="${navi.currentPage != page }">
							<a href="review?currentPage=${page}&searchItem=${searchItem}&searchWord=${searchWord}">${page}</a> &nbsp; 
						</c:if>
						</c:forEach>			
							<a href="review?currentPage=${navi.currentPage + 1}&searchItem=${searchItem}&searchWord=${searchWord}"><i class="fas fa-caret-right"></i></a>
							<a href="review?currentPage=${navi.currentPage + navi.pagePerGroup}&searchItem=${searchItem}&searchWord=${searchWord}"><i class="fas fa-angle-double-right"></i></a>
				</div>
				<div class="right" align="right" style="width:1210px">
					<!-- 관리자만 공지사항 등록 가능 c:if 사용하기 -->			
					<input class="buttons" type="button" value="공지사항등록" style="line-height:normal; text-align: center; margin: 5px;"/>
				</div>
			</div>
					
		</div>
</section>


<!-- 푸터푸터푸터푸터푸터푸터 -->
<footer id="footer">
	<hr/>
	<div class="company" style="font-size: 15px;">
		<span>DecoBlo Inc.</span>
		<span>"513, Yeongdong-daero, Gangnam-gu, Seoul, Republic of Korea"</span>
	</div>
	<span class="copyright">
		&copy; DecoBlo All Rights Reserved.
	</span>			
</footer>
<!-- Scripts -->
	<script src="pixelarity/assets/js/jquery.min.js"></script>
	<script src="pixelarity/assets/js/jquery.dropotron.min.js"></script>
	<script src="pixelarity/assets/js/jquery.scrollgress.min.js"></script>
	<script src="pixelarity/assets/js/jquery.scrolly.min.js"></script>
	<script src="pixelarity/assets/js/jquery.slidertron.min.js"></script>
	<script src="pixelarity/assets/js/skel.min.js"></script>
	<script src="pixelarity/assets/js/util.js"></script>
	<script src="pixelarity/assets/js/main.js"></script>

</body>
</html>
