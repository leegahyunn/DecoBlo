<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
<title>listDesign1</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"/>
<link rel="stylesheet" href="decoblo/css/listDesign.css" />

<style type="text/css">

/* board_501 CSS */
	.board_501 td {
		text-align: center;
		padding-top: 20px;
		padding-bottom: 40px;
		width: 200px;
	}
	
	.board_501 ul{
		list-style: none;
	}
	
	.board_501 li{
		text-align: center;
		font-size: 70%;
		padding-bottom: 10px;
	}
	
	.divLine_501 {
		height: 0.5px; 
		width: 80%; 
		background-color: black;
	}
	
	.search_501 {
		display: flex;
		width: 400px;
		text-align: center;
		vertical-align: middle;
		margin: 1px;
	}
	
	.img {
		width: auto;
		height: auto;
		max-width: 150px;
		max-height: 150px;
	}
	
/* board_502 CSS */
	.board_502 td {
		text-align: center;
		padding-top: 20px;
		padding-bottom: 40px;
		width: 200px;
	}
	
	.board_502 ul{
		list-style: none;
	}
	
	.board_502 li{
		text-align: center;
		font-size: 70%;
		padding-bottom: 10px;
	}
	.search_502 {
		display: flex;
		width: 400px;
		text-align: center;
		vertical-align: middle;
		margin: 1px;
	}
	
	
</style>



<body class="landing">
<!-- Header -->
	<jsp:include page="../common/header.jsp"></jsp:include>
<!-- 소개 사진 -->
<section id="intro-photo" class="wrapper">
	<div id="article">
	</div>
</section>



<!-- board_501 -->
<section class="board_501" class="wrapper">
	<div class="table-wrapper" align="center">	
		<div class="custom-select" align="right" style="width: 92%; padding-bottom: 10px;">
			<form class="search_501" action="bbsList" method="get">
				<select name="searchItem" class="searchItem" style="margin: 5px;">	<!-- 여기 검색에는 작성자 검색 X => 특별히 필요 X -->
					<option value="bbsTitle" ${searchItem == 'bbsTitle' ? 'selected':'' } >글제목</option>
					<option value="bbsContent" ${searchItem == 'bbsContent' ? 'selected':'' } >내용</option>
				</select>
				<input class="searchWord" type="text" name="searchWord" value="${searchWord }" style="margin: 5px;"/>
				<input class="buttons" type="submit" value="검색" style="line-height:normal; text-align: center; margin: 5px;"/>
			</form>
		</div>

		<div class="divLine_501"></div>

		<table class="board" border="1" style="width:70%;">
			<tbody>
				<%-- <c:if test="${empty bbsList }">
						<td class="tdListDesign1" colspan="5" style="text-align:center;">작성된 글이 없습니다</td>
				</c:if> --%>
				<%-- <c:if test="${not empty bbsList }"> --%>
				<c:forEach begin="1" end="3">
					<tr>
						<c:forEach begin="1" end="3">
						<td>
							<ul class="ulList">
								<li><img class="img" src="resources/imgUpload/output.jpg"></li>
								<li>가현쓰 인절미</li>
								<%-- <li><a href="bbsDetail?bbsNo=${bbs.bbsNo}">${bbs.bbsTitle}</a></li> --%>
								<%-- <li>${bbs.bbsRegDate}</li> --%>
								<li>2018.09.18</li>
							</ul>
						</td>
						</c:forEach>
					</tr>
				</c:forEach>
				<%-- </c:if> --%>
			</tbody>
		</table>	
		
		<div class="divLine_501"></div>
		<br>
		
		<!-- 페이지 -->
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
			<div class="right" align="right" style="width: 80%">
				<input class="buttons" type="button" value="공지사항등록" onclick="writeBbs()" style="line-height:normal; text-align: center; margin: 5px;"/>
			</div>
			
	</div>
</section>




<!-- board_502 -->
<section class="board_502" class="wrapper">
	<div class="table-wrapper" align="center">	
		<div class="custom-select" align="right" style="width: 92%; padding-bottom: 10px;">
			<form class="search_502" action="bbsList" method="get">
				<select name="searchItem" class="searchItem" style="margin: 5px;">	<!-- 여기 검색에는 작성자 검색 X => 특별히 필요 X -->
					<option value="bbsTitle" ${searchItem == 'bbsTitle' ? 'selected':'' } >글제목</option>
					<option value="bbsContent" ${searchItem == 'bbsContent' ? 'selected':'' } >내용</option>
				</select>
				<input class="searchWord" type="text" name="searchWord" value="${searchWord }" style="margin: 5px;"/>
				<input class="buttons" type="submit" value="검색" style="line-height:normal; text-align: center; margin: 5px;"/>
			</form>
		</div>

		<div class="board_502"></div>

		<table class="board" border="1" style="width:70%;">
			<tbody>
				<%-- <c:if test="${empty bbsList }">
						<td class="tdListDesign1" colspan="5" style="text-align:center;">작성된 글이 없습니다</td>
				</c:if> --%>
				<%-- <c:if test="${not empty bbsList }"> --%>
				<c:forEach begin="1" end="2">
					<tr>
						<c:forEach begin="1" end="4">
						<td>
							<ul class="ulList">
								<li><img class="img" src="resources/imgUpload/output.jpg"></li>
								<li>가현쓰 인절미</li>
								<%-- <li><a href="bbsDetail?bbsNo=${bbs.bbsNo}">${bbs.bbsTitle}</a></li> --%>
								<%-- <li>${bbs.bbsRegDate}</li> --%>
								<li>2018.09.18</li>
							</ul>
						</td>
						</c:forEach>
					</tr>
				</c:forEach>
				<%-- </c:if> --%>
			</tbody>
		</table>	
		
		<div class="board_502"></div>
		<br>
		
		<!-- 페이지 -->
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
			<div class="right" align="right" style="width: 80%">
				<input class="buttons" type="button" value="공지사항등록" onclick="writeBbs()" style="line-height:normal; text-align: center; margin: 5px;"/>
			</div>
			
	</div>
</section>


</body>
</html>




