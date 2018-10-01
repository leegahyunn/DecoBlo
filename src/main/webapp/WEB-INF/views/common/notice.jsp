<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix= "spring" %> 
<!DOCTYPE HTML>
<html>
<head>
<title>Notice</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link type="text/css" rel="stylesheet" href="pixelarity/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"/>
<link rel="stylesheet" href="decoblo/css/helpPage.css" />
<script src="resources/library/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
function writeBbs(boardNo) { 	// 글쓰기로 이동
	
	var boardNo = $('#boardNo').val();
	location.href = "${pageContext.request.contextPath}/writeBbs?type=write&boardNo="+ boardNo;
}
</script>
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
			
	input.buttons {	
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
	
	p.title{
		font-size: 52px;
		margin-bottom: 30px;
	}
	
	.select-items div,.select-selected {
		font-size:10px;
		color: black;
		padding: 8px 16px;
		border: 1px solid transparent;
		border-color: transparent transparent rgba(0, 0, 0, 0.1) transparent;
		cursor: pointer;
		user-select: none;
	}
	
</style>
</head>
<body class="landing">

	<!-- Header -->
	<jsp:include page="header.jsp"></jsp:include>

<!-- 소개 사진 -->
<section id="intro-photo" class="wrapper">
	<div id="article">
	</div>
</section>



<!-- 글목록 -->
<section id="main" class="wrapper">
	<div class="heading" align="center" style="margin-bottom: 70px;">
		<p class="title"><b>NOTICE</b></p>
		<p style="font-size: 16px;"><spring:message code="n1" /></p>
	</div>



	<div align="center"><!-- 큰div태그 -->	
	 <!-- 일단 여기도 검색 기능 -->
		<div class="custom-select" align="right" style="width:1170px">
			<form class="qalist" action="bbsList" method="get">
				<select name="searchItem" class="searchItem" style="margin: 5px;">
	
	<!-- 여기 검색에는 작성자 검색 X => 특별히 필요할 것 같지 않아서 넣지 않음 -->
					<option value="bbsTitle" ${searchItem == 'bbsTitle' ? 'selected':'' } ><spring:message code="n2" /></option>
					<option value="bbsContent" ${searchItem == 'bbsContent' ? 'selected':'' } ><spring:message code="n3" /></option>
				</select>
				<input class="searchWord" type="text" name="searchWord" value="${searchWord }" style="margin: 5px;"/>
				<input class="buttons" type="submit" value=<spring:message code="n4" /> style="line-height:normal; text-align: center; margin: 5px;"/>
			</form>
		</div>

<br>	<!-- 한줄 띄기 -->

	<!-- 글목록 div 태그 -->
		<div class="table-wrapper">	
		<input type="hidden" name="boardNo" id="boardNo" value="1"/>
			<table class="board" border="1" style="width: 1200px;">
				<thead>
					<tr>
						<th>No.</th>
						<th><spring:message code="n5" /></th>
						<th><spring:message code="n6" /></th>	
						<th><spring:message code="n7" /></th>
						<th><spring:message code="n8" /></th>
					</tr>
				</thead>
				
				<tbody>
					<c:if test="${empty bbsList }">
						<td colspan="5" style="text-align:center;"><spring:message code="n9" /></td>
					</c:if>
					<!-- 이하 글 목록 반복 -->
					<c:if test="${not empty bbsList }">
					<c:forEach var="bbs" items="${bbsList}" varStatus="status">
						<tr>
							<td class="center">${status.count + navi.startRecord}</td>
							
							<c:if test="${bbs.bbsDepth eq 0}">
								<td><a href="bbsDetail?boardNo=${bbs.boardNo}&bbsNo=${bbs.bbsNo}">${bbs.bbsTitle}</a></td>
							</c:if>
							<c:if test="${bbs.bbsDepth ne 0}">
								<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fas fa-reply fa-rotate-180"></i>&nbsp;&nbsp;&nbsp;<a href="bbsDetail?bbsNo=${bbs.bbsNo}">${bbs.bbsTitle}</a></td>
							</c:if>
							
							<td>${nickname}</td>
							<td>${bbs.bbsRegDate}</td>
							<td>${bbs.bbsCount}</td>
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
					<!-- 관리자만 공지사항 등록 가능 c:if 사용하기 -->			
					<input class="buttons" type="button" value=<spring:message code="n10" /> onclick="writeBbs(boardNo)" style="line-height:normal; text-align: center; margin: 5px;"/>
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
