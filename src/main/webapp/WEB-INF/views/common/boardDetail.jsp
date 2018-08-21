<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
<title>HelpDetail</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link type="text/css" rel="stylesheet" href="pixelarity/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
<link rel="stylesheet" href="decoblo/css/boardDetail.css" />
<script src="resources/jquery-3.3.1.min.js"></script>
<style type="text/css">
	#main {
		margin: o auto;
	}
	
	.heading{
		width: 1200px;
		align-content: 
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
	
	h5 {
		 padding-bottom: 10px;
	}
	
	p {
		margin-bottom: 30px; 
		font-size: 16px;
	}
	
	hr{
		margin-top: 10px;
		margin-bottom: 10px;
	}
	
	hr.hr {
		border:solid 1.5px;
		width:1200px;
		border-color : 	#6a6a6a;
		margin-top: 10px;
		margin-bottom: 10px;
	}
	
	input.buttons{
	
		line-height:normal;
		text-align: center;
		margin: 5px;
		padding-left: 15px;
		padding-right: 15px;
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
						<a href="#" class="icon fa-angle-down">한국어(KO)</a>
						<ul>
							<li><a href="#">한국어(KO)</a></li>
							<li><a href="#">日本語(JP)</a></li>
						</ul>
					</li>
				</ul>
			</nav>
		</header>



<!-- 상세글 -->
<section id="main" class="wrapper">
<div align="center"><!--  큰 div 태그 -->
	<div class="heading" align="left" style="width:1200px">
		<h1 style="font-size: 45px;">NOTICE</h1> 
		<p>데코블로의 기능 개선 및 서비스 점검 등 새로운 소식을 안내 드립니다.</p>

	</div>
	
	<hr class="hr"/>
	
	<br>
	<div class="detail" align="left" style="width:1200px">
		<h1 style="font-size: 30px;">title</h1>
		<h5>userid</h5>
		<hr/>
		<!-- <hr class="hr"/> -->
	</div>
	<br/>
	<br/>
	
	<div>
	
		<p> 본문본문본문본문본문본문본문본문본문본문본문본문
	
	</div>
	
	<br>
	<br>
	<br>
	
	
	<!-- 댓글부분 -->
	<textarea rows="5" cols="40"></textarea>
	

	<!-- 글목록 div 태그 -->
		<div class="table-wrapper">	
		
			<table class="board" border="1" style="width: 1200px;">
				<thead>
					<tr>
						<th>No.</th>
						<th>제목</th>
						<th style="text-align: right">작성일</th>
					</tr>
				</thead>
				<tbody>
					<%-- 실제로 사용할 코드
					<c:if test="${empty qalist }">
						<td colspan="5">작성된 글이 없습니다</td>
					</c:if>
					<!-- 이하 글 목록 반복 -->
					<c:if test="${not empty qalist }">
					<c:forEach var="qa" items="${qalist}" varStatus="status">
						<tr>
							<td class="center">${status.count + navi.startRecord}</td>
							<td>[답변대기] / [답변완료] </td>
							<td><a href="qaDetail?qanum=${qa.qanum}">${qa.title}</a></td>
							<td>${qa.userid}</td>
							<td>${qa.regdate}</td>
						</tr>
					</c:forEach>
					</c:if> --%>
					
					<!-- 일단 박아놓기 -->
					<tr>
						<td class="center">${status.count + navi.startRecord}</td>
						<td><a href="helpDetail?qanum=${qa.qanum}">도메인연결이 되지 않습니다</a></td>
						<td style="text-align: right">2018.08.16</td>
					</tr>
					<tr>
						<td class="center">${status.count + navi.startRecord}</td>
						<td><a href="helpDetail?qanum=${qa.qanum}">도메인연결이 되지 않습니다</a></td>
						<td style="text-align: right">2018.08.16</td>
					</tr>
					<tr>
						<td class="center">${status.count + navi.startRecord}</td>
						<td  ><a href="helpDetail?qanum=${qa.qanum}">도메인연결이 되지 않습니다</a></td>
						<td style="text-align: right">2018.08.16</td>
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
					<input class="buttons" type="button" value="목록"/>
				</div>
			</div>

</div>
</section>


<!-- 푸터푸터푸터푸터푸터푸터 -->
<footer id="footer">
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
