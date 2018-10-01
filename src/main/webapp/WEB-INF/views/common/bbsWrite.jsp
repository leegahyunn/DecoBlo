<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix= "spring" %> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Notice</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link type="text/css" rel="stylesheet" href="pixelarity/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"/>
<link rel="stylesheet" href="decoblo/css/bbsWrite.css" />
<style>
	header#header.top-menu {
		position: relative;
		background-color: #000;
	}
	.table-wrapper {
		width: 100%;
 		text-align: center;
		
	}
	.table-inwrapper{
		 display: inline-block;
	}
	
</style>
<script type="text/javascript" src="resources/ckeditor/ckeditor.js"></script>
<script src="resources/library/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	//글목록으로 이동
	function bbsList() {
		
		var boardNo = $('#boardNo').val();
		location.href = "${pageContext.request.contextPath}/bbsList?boardNo="+boardNo;
	}
	
	//글쓰기 유효성 검사
	function bbsCheck(){	
		var bbsTitle = $('#bbsTitle').val();
		var bbsContent = CKEDITOR.instances.bbsContent.getData()
		
		alert(bbsTitle);
		alert(bbsContent);
		
		if (bbsTitle == '' || bbsContent == ''){
			alert(<spring:message code="bbsw1" />);
			return false;
		}
		
		return true;
	}
</script>
</head>
<body class="landing">

<!-- Header -->
<jsp:include page="header.jsp"></jsp:include>
	
<!-- 소개 사진 -->
<section id="intro-photo" class="wrapper">
	<div id="article">
	</div>
</section>
	
<section id="main">
	<form action="writeBbs" method="post">
		<!-- 게시글작성 게시판번호 넘겨주기 -->
		<input type="hidden" name="boardNo" id="boardNo" value="1"/>
		<input type="hidden" name="bbsParent" id="bbsParent" value="${bbsParent}"/>
		<input type="hidden" name="type" id="type" value="${type}"/>
		<input type="hidden" name="bbsNo" id="bbsNo" value="${bbsNo}"/>
		
			<div class="table-wrapper" >
				<div class="table-inwrapper">
					<table class="board" border="1" style="width: 1200px;">
						<tr>
							<td><input type="text" name="bbsTitle" id="bbsTitle" value="${bbs.bbsTitle}" placeholder=<spring:message code="bbsw2" />></td>
						</tr>
						<tr>
							<td><textarea rows="100" cols="50" name="bbsContent" id="bbsContent" class="bbsContent">${bbs.bbsContent}</textarea> </td>
						</tr>
						<tr>
							<td class="btn" colspan="2" align="center">
								<input type="button" value=<spring:message code="bbsw4" />" onclick="bbsList()"/>
								<input type="submit" value=<spring:message code="bbsw3" /> onclick="return bbsCheck()"> 
							</td>
						</tr>
					</table>
					<script type="text/javascript">
						CKEDITOR.replace('bbsContent', {filebrowserImageUploadUrl:'ckeditorImageUpload', width:'1200px', height : '600px'});
					</script>
				</div><!-- table-inwrapper div태그 -->
			</div><!-- table-wrapper div태그 -->
	</form>
</section>

</body>
</html>