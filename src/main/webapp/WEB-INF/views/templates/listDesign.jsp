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

/* board-501 CSS */
	.board-501 td {
		text-align: center;
		padding-top: 20px;
		padding-bottom: 40px;
		width: 200px;
	}
	
	.board-501 ul{
		list-style: none;
	}
	
	.board-501 li{
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
	
/* board-502 CSS */
	.board-502 td {
		text-align: center;
		padding-top: 20px;
		padding-bottom: 40px;
		width: 200px;
	}
	
	.board-502 ul{
		list-style: none;
	}
	
	.board-502 li{
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
	
/* board-503 CSS */
	.board-503 {
		margin: 0;
		padding: 0;
	}
 
 	.board-503 {
 		background-color: gray;
 	}
	.board-503 div {
		margin: 20px;
	}
 
	.board-503 ul {
		list-style-type: none;
		width: 700px;
		background-color: white;
	}
 
	.board-503 h3 {
		font: bold 20px/1.5 Helvetica, Verdana, sans-serif;
	}
 
	.board-503 li img {
		
		width: 200px;
		height: 200px;
		float: left;
		margin: 0 15px 0 0;
	}
 
	.board-503 li p {
		font: 200 12px/1.5 Georgia, Times New Roman, serif;
	}
 
	.board-503 li {
		padding: 10px;
		padding-right: 40px;
		overflow: auto;
	}
 
	.board-503 li:hover {
		background: #eee;
		cursor: pointer;
	}
	
/* board-504 CSS */

	.board-504 {
		background-color: #444d47;
	}
	
	.board-504 div {
		width: 70%;
		margin: 0 auto;
		padding-top: 30px;
		padding-bottom: 30px;
		background-color: #ffffff;
	}

	.board-504 ol {
		list-style-type: none;
	}
 
	.board-504 ol li {
		position: relative;
		font: bold italic 45px/1.5 Helvetica, Verdana, sans-serif;
		margin-bottom: 20px;
	}
 
	.board-504 li p {
		font: 12px/1.5 Helvetica, sans-serif;
		padding-left: 60px;
	}
 
	.board-504 span {
		position: absolute;
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



<!-- board-501 -->
<section class="board-501" class="wrapper">
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




<!-- board-502 -->
<section class="board-502" class="wrapper">
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

		<div class="board-502"></div>

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
		
		<div class="board-502"></div>
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



<!-- board-503 -->
<section class="board-503" class="wrapper">
	<div align="center" >
		<ul style="background-color: white;">
			<li>
				<img src="resources/imgUpload/list3-2.jpg" />
				<h3>Iced Coffee with Milk</h3>
				<p>Freshly brewed Starbucks® Iced Coffee Blend with milk – served chilled and lightly sweetened over ice.</p>
			</li>
			
			<li>
				<img src="resources/imgUpload/list3-1.jpg">
				<h3>Iced Chocolate</h3>
				<p>Steamed milk with vanilla- and mocha-flavored syrups. Topped with sweetened whipped cream and chocolate-flavored drizzle.</p>
			</li>
			
		    <li>
				<img src="resources/imgUpload/list3-3.jpg" />
				<h3>White Chocolate Mocha Frappuccino® Blended Coffee</h3>
				<p>White chocolate Frappuccino® roast coffee, milk and ice get together for what might be the best thing that happens to you all day. Oh and there's whipped cream on top.</p>
			</li>
		 
			<li>
				<img src="resources/imgUpload/list3-4.jpg" />
				<h3>Matcha Green Tea Crème Frappuccino®</h3>
				<p>We blend sweetened premium matcha green tea, milk and ice and top it with sweetened whipped cream to give you a delicious boost of energy.</p>
			</li>
		</ul>
	</div>

</section>



<!-- board-504 -->
<section class="board-504" class="wrapper">
	<div>
		<ol>
			<li>
				<span style="color:	#677e74">1.</span>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent euismod ultrices ante, ac laoreet nulla vestibulum adipiscing. 
					Nam quis justo in augue auctor imperdiet. Curabitur aliquet orci sit amet est posuere consectetur. Fusce nec leo ut massa viverra venenatis. 
					Nam accumsan libero a elit aliquet quis ullamcorper arcu tincidunt. Praesent purus turpis, consectetur quis congue vel, pulvinar at lorem. 
					Vivamus varius condimentum dolor, quis ultricies ipsum porta quis. </p>
			</li>
			
			<li>
				<span style="color:	#92a4ac">2.</span>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent euismod ultrices ante, ac laoreet nulla vestibulum adipiscing. Nam quis justo in augue auctor imperdiet. Curabitur aliquet orci sit amet est posuere consectetur.  </p>
			</li>
				
			<li>
				<span style="color:	#dddbdb">3.</span>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent euismod ultrices ante, ac laoreet nulla vestibulum adipiscing. Nam quis justo in augue auctor imperdiet. Curabitur aliquet orci sit amet est posuere consectetur.  </p>
			</li>
		</ol>
	</div>

</section>


</body>
</html>




