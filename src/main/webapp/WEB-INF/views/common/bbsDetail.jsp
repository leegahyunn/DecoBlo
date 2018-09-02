<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
<title>Notice</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link type="text/css" rel="stylesheet" href="pixelarity/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css">
<link rel="stylesheet" href="decoblo/css/boardDetail.css" />
<script src="resources/library/js/jquery-3.3.1.min.js"></script>
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

function writeAnswer(){

	location.href = "${pageContext.request.contextPath}/writeBbs?type=write&bbsParent=${bbsDetail.bbsNo}";
}

/* 댓글 */
$(function(){
	init();
	$('#replySave').on('click', replySave);
});

function init(){
	
	// 댓글 입력칸 reset
	$('#replytext').val('');
	
	var replyBbsNo = $('#bbsNo').val();
	
	$.ajax({
		method : 'get'
		, url : 'replyList'
		, data : 'replyBbsNo=' + replyBbsNo
		, contentType : 'application/json; charset=utf-8'
		, success : output
	});
}

function output(resp){
	
	var replyAll = '';
	
	
	
	for(var i in resp){
		replyAll += '<ul class="replyList" id=reply_list>';
		replyAll += '<li class>';
		replyAll += '<div class="r">';
		replyAll += '<div class="userid">' + resp[i].replyRegUser;
		replyAll += '<span class="regdate">' + resp[i].replyRegDate + '</span>';
		replyAll += '<span class="rereply"><a href="#" class="btnReply">&nbsp;&nbsp;&nbsp;<i class="fas fa-reply fa-rotate-180"></i>&nbsp;답글</a></span>';
		replyAll += '<p><span class="replyContent">' + resp[i].replyContent + '</span></p>';
		replyAll += '<input class="replyUpdate" type="button" data-rno="'+ resp[i].replyNo + '" value="수정"  style="line-height:normal; text-align: center; margin: 5px;"/>';
		replyAll += '<input class="replyDelete" type="button" data-rno="'+ resp[i].replyNo + '" value="삭제"  style="line-height:normal; text-align: center; margin: 5px;"/>';
		replyAll += '</li>';
		replyAll += '<hr style="display:block; border:black 0 none; border-top:black 1px dotted; height: 1px;">';
		replyAll += '</div>';
		replyAll += '</div>';
	}
	
	
/* 	
	
	for(var i in resp){
		replyAll += '<div class="replyBox">';
		replyAll += '<p class="userid">' + resp[i].replyRegUser + '</p>';
		replyAll += '<p class="replyContent">' + resp[i].replyContent + '</p>';
		replyAll += '<p class="regdate">' + resp[i].replyRegDate  + '</p>';
		replyAll += '<input class="replyDelete" type="button" data-rno="'+ resp[i].replyNo + '" value="삭제"  style="line-height:normal; text-align: center; margin: 5px;"/>';
		replyAll += '<input class="replyUpdate" type="button" data-rno="'+ resp[i].replyNo + '" value="수정"  style="line-height:normal; text-align: center; margin: 5px;"/>';
		replyAll += '</div>';
	} */
	
	$('#result').html(replyAll);
	
	$('input:button.replyDelete').click(replyDelete);
	
}

function replySave(){
	
	var replyRegUser = $('#replyRegUser').val();
	var replytext = $('#content').val();
	
	var sendData = {
				"replyRegUser" : replyRegUser
				, "replytext" : replytext
				};
	
	$.ajax({
		method : 'post'
		, url : 'replySave'
		, data : JSON.stringify(sendData)
		, dataType : 'text'
		, contentType : 'application/json; charset=utf-8'
		, success : init
		
	});
}


function replyDelete(){
	
var replyNo = $(this).attr('data-rno');

	$.ajax({
		method : 'get'
		, url : 'replyDelete'
		, data : 'replyNo=' + replyNo
		, contentType : 'application/json; charset=utf-8'
		, success : init
	});
}


//댓글 수정
function replyUpdate(){
	
	var replyNo = $(this).attr('data-rno');
	var replytext = $(this).parent().children('.replyContent').text();
	
	$('#content').val(replytext);
	
	$('#replySave').off('click', replySave);
	$('#replySave').on('click', update);
	
	function update(){
		
		alert(replynum);
		var replytext =  $('#content').val();
		var sendData = {"replyNo" : replyNo
						, "replytext" : replytext};
		
		$.ajax({
			method : 'post'
			, url : 'replyUpdate'
			, data : JSON.stringify(sendData)
			, dataType : 'text'
			, contentType : 'application/json; charset=UTF-8'
			, success : function(){
				init();
			}
		});
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
	
	

	textarea {
		background-color: #ffffff;
	    width: 100%;
	    margin: 0;
	    padding: 1px 0;
	    overflow: auto;
	    -webkit-appearance: none;
	    -webkit-border-radius: 0;
	    resize: none;
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
			<a href="writeBbs?type=update&bbsNo=${bbsDetail.bbsNo}&bbsParent=${bbsDetail.bbsParent}" style="font-size:12px; padding-right: 20px;">수정</a>
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
	<div id="replyForm"  style="background-color:#EDF6E9; width:1200px; display:block; padding: 30px;">
		<!-- 댓글 목록 영역 -->
	<div id="result"></div>
	
		<!-- 댓글 폼 영역 -->	
	<div id="replyForm" class="right"  style="background-color:white; width:1100px; justify-content: space-between; ">
		<form action="replyWrite" method="post" onsubmit="return replyCheck()" autocomplete="off"  style="display:inline;" >
			<input type="hidden" id="bbsNo" name="bbsNo" value="${bbsDetail.bbsNo}" />
			<!-- 댓글 입력 영역 -->
			
			<table id="replytable">
				<tbody>
					<tr>
						<td style="padding-right: 5px;">
							<textarea id="content" cols="1000" rows="100" maxlength="6000"  style="overflow: hidden; line-height: 14px; height: 39px;"></textarea>
						</td>
						<td>
							<div>
								<input id="replySave" type="button" class="button" value="등록" style="height:53px; border-radius: 0px;"/>
							</div>
						</td>
					</tr>
				</tbody>
			
			</table>
			
		</form>
		</div>

	
	
	


	
	</div> <!--  end #reply -->	
	
	
	<!-- 게시글 답변달기 -->
	<div>
		<input type="button" value="답변" onclick="writeAnswer()" style="line-height:normal; text-align: center; margin: 5px;"/>
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
