<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
<title>Notice</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"/>

<link rel="stylesheet" href="decoblo/css/listDesign.css" />

<style type="text/css">
	td.listDesign1 {
		text-align: center;
		padding-top: 100px;
		padding-bottom: 100px;
	}
	
	ul{
		list-style: none;
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



<!-- 글목록 -->

<section id="listDesign1" class="wrapper">

	<!-- 고치기 -->
	
	<div class="table-wrapper" align="center">	
	<div class="heading">
		<span style="font-size: 35px; font-weight: bold;">FAQ</span>
	</div>
	<div class="custom-select" align="right" style="width:1200px;">
			<form class="qalist" action="bbsList" method="get">
				<select name="searchItem" class="searchItem" style="margin: 5px;">
	
	<!-- 여기 검색에는 작성자 검색 X => 특별히 필요할 것 같지 않아서 넣지 않음 -->
					<option value="bbsTitle" ${searchItem == 'bbsTitle' ? 'selected':'' } >글제목</option>
					<option value="bbsContent" ${searchItem == 'bbsContent' ? 'selected':'' } >내용</option>
				</select>
				<input class="searchWord" type="text" name="searchWord" value="${searchWord }" style="margin: 5px;"/>
				<input class="buttons" type="submit" value="검색" style="line-height:normal; text-align: center; margin: 5px;"/>
			</form>
		</div>
	<br>
	<br>
		<table class="board" border="1" style="width: 2000px;">
			<tbody>
				<%-- <c:if test="${empty bbsList }">
					<td colspan="5" style="text-align:center;">작성된 글이 없습니다</td>
				</c:if>
				<c:if test="${not empty bbsList }">
				<c:forEach var="bbs" items="${bbsList}" varStatus="status"> --%>
					<tr>
						<td class="listDesign1">
							<ul>
								<li>호오</li>
								<li>유후</li>
								
							</ul>
						</td>
						<td class="listDesign1">2</td>
						<td class="listDesign1">3</td>
					</tr>
					<tr>
						<td class="listDesign1">4</td>
						<td class="listDesign1">5</td>
						<td class="listDesign1">6</td>
					</tr>
					<tr>
						<td class="listDesign1">7</td>
						<td class="listDesign1">8</td>
						<td class="listDesign1">9</td>
					</tr>
				<%-- </c:forEach>
				</c:if> --%>
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
				<input class="buttons" type="button" value="공지사항등록" onclick="writeBbs()" style="line-height:normal; text-align: center; margin: 5px;"/>
			</div>
			
	</div>
</section>


</body>
</html>




