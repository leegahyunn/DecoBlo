<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="templates/common.css" />
<style type="text/css">

/* gallery-501 CSS */

.gallery-501 {

	width: 60%;
	margin: 0 auto;
	text-align: center;	
}

.gallery-501.out {
	display: inline-block;
	margin: 10px;
	/* border: 1px solid red; */
	width: 80%;
	overflow: hidden;
}


.gallery-501.in {
	display: inline;
	background-color: white;
	/* border: 1px solid blue; */
	text-align: center;
	width: 40%;
	margin: 10px;
	padding-top: 10px;
	padding-bottom: 10px;
}

.gallery-501.small-1 {
	float: left;
}
.gallery-501.small-1 div, .gallery-501.small-2 div  {
	padding: 10px;
}
.gallery-501.small-1 span, .gallery-501.small-2 span {
	font-size: 25px;
	font-weight: 700;
	
	overflow: hidden;
    text-overflow: ellipsis;
    white-space: normal;
    line-height: 1.4;
    height: 3.6em;
    text-align: left;
    word-wrap: break-word;
    display: -webkit-box;
    -webkit-line-clamp: 3;
    -webkit-box-orient: vertical;
}

.gallery-501.small-2 {
	float: right;
}

.gallery-501.in.img {
 	width: 100%;
 	height: 100%;
}

.gallery-501.in.small-1.imgdiv {
	padding-left: 0px;
	padding-right: 0px;
	
}

/* div .text {
	text-overflow: ellipsis;
}
 */

</style>
</head>
<body style="background-color: #F2EFED;">

<section class="menu-wrapper">
	<section class="block-wrapper">
		
		<!-- gallery-501 -->
		 <div class="gallery-501">
		 	<div class="gallery-501 out">
		 		<div class="gallery-501 in small-1">
		 			<span>Whole Bean & Ground</span>
		 			<div class="imgdiv"><img class="img" src="resources/imgUpload/gallery1-1.png"></div>
		 			<div class="text">
		 				The same beans used at Starbucks, packed fresh to be flavorful at home.
		 			</div>
		 		</div>
		 		
		 		<div class="gallery-501 in small-2">
		 			<span>Starbucks VIA Instant</span>
		 			<div class="imgdiv"><img src="resources/imgUpload/gallery1-2.png"></div>
		 			<div class="text">
		 				A delicious cup of Starbucks® coffee—in an instant.
		 			</div>
		 		</div>
		 	</div>
		 	
		 	<div class="gallery-501 out">
		 		 <div class="gallery-501 in small-1">
		 			<span>K-Cup Pods</span>
		 			<div class="imgdiv"><img src="resources/imgUpload/gallery1-3.png"></div>
		 			<div class="text">
		 				The same beans used at Starbucks, packed fresh to be flavorful at home.
		 			</div>
		 		</div>
		 		
		 		<div class="gallery-501 in small-2">
		 			<span>Verismo Pods</span>
		 			<div class="imgdiv"><img src="resources/imgUpload/gallery1-4.png"></div>
		 			<div class="text">
		 				Starbucks 100% arabica coffee, packaged specially for the single- cup Verismo® System.
		 			</div>
		 		
		 		</div>
		 	
		 	</div>
		
		</div>	<!-- gallery-501 끝 -->
	
	
	</section>	<!-- block-wrapper 끝 -->
</section>	<!-- menu-wrapper 끝 -->

</body>
</html>