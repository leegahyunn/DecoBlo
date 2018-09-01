<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
<title>Notice</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link type="text/css" rel="stylesheet" href="pixelarity/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
<link rel="stylesheet" href="decoblo/css/boardDetail.css" />
<script type="text/javascript">
function bbsList() { 	// 글목록으로 이동
	location.href = "${pageContext.request.contextPath}/bbsList";
}

function deleteBbs(bbsNo) { 	// 글삭제
	
	alert(bbsNo);
	
	if (confirm('정말 삭제하시겠습니까?')) {
		
		location.href = "deleteBbs?bbsNo=" + bbsNo;
	}
}
</script>
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
	
	
	#replyForm2{
		text-align : center;
		display: flex;
		clear : both;
		margin-left: 5px;
		margin-right: 5px;
		vertical-align: middle;
		align-items: center;
		justify-content: space-between;
	}
	

</style>
<script src="resources/library/js/jquery-3.3.1.min.js"></script>
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
		<h1 style="font-size: 30px;">${bbsDetail.bbsTitle}</h1>
		<div style="text-align: right;">
			<a href="updateBbs?bbsNo=${bbsDetail.bbsNo}" style="font-size:12px; padding-right: 20px;">수정</a>
			<a href="javascript:deleteBbs('${bbsDetail.bbsNo}')"  style="font-size:12px; padding-right: 20px;">삭제</a>
		</div>
		<hr/>
		<!-- <hr class="hr"/> -->  
	
		<br/>
		<br/>

		<p>${bbsDetail.bbsContent}
		
		<br><br>
		<br>
		<hr/>
	</div>
	<br>

	<!-- 댓글부분 -->
		<!-- 댓글 폼 영역 -->
	<div id="replyForm">
	
	
		<div id="replyForm" class="right"  style="width:1000px; justify-content: space-between; ">
		<form action="replyWrite" method="post" onsubmit="return replyCheck()" autocomplete="off"  style="display:inline;" >
			<input type="hidden" name="action" value="insertReply" />
			<input type="hidden" name="boardnum" value="${bdetail.boardnum}" />
			<div id="replyForm2">
			<input type="text" id="replytext" name="replytext" style="width:1000px"><input class="buttons" type="button" value="등록"/>
			</div>
		</form>
		</div>

	<!-- 댓글 목록 영역 2 -->
	<div id="replyList"></div>
	

	
	<!-- 댓글 목록 영역 -->
	<table class="replyList">
		<c:forEach var="reply" items="${replyList}">
		<tr>
			<td class="replyid">${reply.userid}</td>
			<td class="replytext">${reply.replytext}</td>
			<td class="replydate">${reply.regdate}</td>
			<td class="replybutton">
				<c:if test="${loginId == reply.userid}">
				<a>수정</a>
				<a href="javascript:deleteReply(${reply.replynum}, ${reply.boardnum})">삭제</a>
				</c:if>
			</td>
		</tr>
		</c:forEach>
	</table>
	
	
	</div> <!--  end #reply -->	
	
	
	<!-- 게시글 답변달기 -->
	<div>
		<input type="button" value="답변" onclick="" style="line-height:normal; text-align: center; margin: 5px;"/>
	</div>
	<br>
	<br>


	<!-- 글목록 div 태그 -->
		<div class="table-wrapper">	
		
		<table class="board" border="1" style="width: 1200px;">
				<thead>
					<tr>
						<th>No.</th>
						<th>제목</th>
						<th>작성일</th>
					</tr>
				</thead>
				
				<tbody>
					<c:if test="${empty bbsList }">
						<td colspan="5" style="text-align:center;">작성된 글이 없습니다</td>
					</c:if>
					<!-- 이하 글 목록 반복 -->
					<c:if test="${not empty bbsList }">
					<c:forEach var="bbs" items="${bbsList}" varStatus="status">
						<tr>
							<td class="center">${status.count + navi.startRecord}</td>
							<td><a href="bbsDetail?bbsNo=${bbs.bbsNo}">${bbs.bbsTitle}</a></td>
							<td>${bbs.bbsRegDate}</td>
						</tr>
					</c:forEach>
					</c:if>
					
					
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

					<input type="button" value="목록" onclick="bbsList()" style="line-height:normal; text-align: center; margin: 5px;"/>
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
