<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
<title>Help</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="pixelarity/assets/css/main.css" />
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
	
	footer#footer {
		padding: 0;
		padding-bottom : 50px;
		text-align :center;
		width: 100%;
		color: #AAA;
		
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
						<a href="#" class="icon fa-angle-down">한국어(KO)</a>
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

	<div align="center"><!-- 큰div태그 -->
	
	<!-- 검색과 안내멘트 -->
		<div align="right" style="width:1200px">
			<h5>최대한 신속하게 답변을 드리고 있으나, 검토가 필요한 경우 답변에 늦어질 수 있으니 양해 부탁드립니다.
				<br>※업무시간: 평일(AM 09시~PM 06시)</h5>
		</div>
		<div align="right" style="width:1130px"> <!-- 일단 여기도 검색 기능 -->
			<form class="qalist" action="qalist">
				<select name="searchItem" class="searchItem" style="margin: 5px;">
					<option value="userid" ${searchItem == 'userid' ? 'selected':'' } >작성자</option>
					<option value="title" ${searchItem == 'title' ? 'selected':'' } >글제목</option>
					<option value="content" ${searchItem == 'content' ? 'selected':'' } >내용</option>
				</select>
				<input class="searchWord" type="text" name="searchWord" value="${searchWord }" style="margin: 5px;"/>
				<input class="search" type="button" value="검색" style="text-align: center; margin: 5px;"/>
			</form>
		</div>

	<!-- 글목록 div 태그 -->
		<div class="table-wrapper">	
			<table class="board" border="1" style="width: 1200px;">
				<thead>
					<tr>
						<th>No.</th>
						<th>상태</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
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
						<td>[답변완료] </td>
						<td><a href="qaDetail?qanum=${qa.qanum}">도메인연결이 되지 않습니다</a></td>
						<td>snoopy</td>
						<td>2018.08.16</td>
					</tr>
				</tbody>
			</table>

				<div align="center">
					<a href="review?currentPage=${navi.currentPage - navi.pagePerGroup}&searchItem=${searchItem}&searchWord=${searchWord}">◁◁ </a>
					<a href="review?currentPage=${navi.currentPage - 1}&searchItem=${searchItem}&searchWord=${searchWord}">◀ </a>
	
						<c:forEach var="page"  begin="${navi.startPageGroup}" end="${navi.endPageGroup}">
						<c:if test="${navi.currentPage == page }">
							<a href="review?currentPage=${page}&searchItem=${searchItem}&searchWord=${searchWord}">${page}</a> &nbsp;
						</c:if>
						<c:if test="${navi.currentPage != page }">
							<a href="review?currentPage=${page}&searchItem=${searchItem}&searchWord=${searchWord}">${page}</a> &nbsp; 
						</c:if>
						</c:forEach>			
							<a href="review?currentPage=${navi.currentPage + 1}&searchItem=${searchItem}&searchWord=${searchWord}"> ▶</a>
							<a href="review?currentPage=${navi.currentPage + navi.pagePerGroup}&searchItem=${searchItem}&searchWord=${searchWord}"> ▷▷</a>
				</div>
				<div class="right" align="right" style="width:1200px">
						<a href="reviewWrite" class="button alt small">문의하기</a>
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
</body>
</html>
