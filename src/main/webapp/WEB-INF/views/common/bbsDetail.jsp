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
	
	var boardNo = $('#boardNo').val();
	location.href = "${pageContext.request.contextPath}/bbsList?boardNo="+boardNo;
}

function deleteBbs(bbsNo) { 	// 글삭제
	
	var boardNo = $('#boardNo').val();
	
	alert(bbsNo);
	alert(boardNo);
	
	if (confirm('정말 삭제하시겠습니까?')) {
		location.href = "deleteBbs?boardNo=" + boardNo + "&bbsNo=" + bbsNo;
	}
}

function writeAnswer(){
	
	var boardNo = $('#boardNo').val();
	location.href = "${pageContext.request.contextPath}/writeBbs?type=write&bbsParent=${bbsDetail.bbsNo}&boardNo="+boardNo;
}


/* 댓글 */
$(function(){
	
	init();
	likeList();
	
	$('#replySave').on('click', replySave);
	$('#replyForm').on('click', '.re-reply', writeReReply2);
	$('#replyForm').on('click', '#re_replySave', re_replySave);
	$(document).on('click', '#like-btn', changeLike);
	
	
});

function init(){
	
	// 댓글 입력칸 reset
	$('#content').val('');
	
	var replyBbsNo = $('#replyBbsNo').val();
	
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
		replyAll += '<div class="replyContent">';
		replyAll += '<p class="userid">'+ resp[i].replyRegUser +'</p> ';
// 		replyAll += '<span class="re-reply"><a href="javascript:writeReReply()"  class="btnReply">&nbsp;&nbsp;&nbsp;<i class="fas fa-reply fa-rotate-180"></i>&nbsp;답글</a></span>';
		replyAll += '<span class="re-reply" style="cursor: pointer">&nbsp;&nbsp;&nbsp;<i class="fas fa-reply fa-rotate-180"></i>&nbsp;답글</span>';
		replyAll += '<p class="replyContent">'+ resp[i].replyContent +'</p> ';
		replyAll += '<p class="regdate">'+ resp[i].replyRegDate +'</p> ';
		replyAll += '<input class="replyUpdate" type="button" data-rno="'+ resp[i].replyNo +'" value="수정"  style="line-height:normal; text-align: center; margin: 5px;"/>     ';
		replyAll += '<input class="replyDelete" type="button" data-rno="'+ resp[i].replyNo +'" value="삭제"  style="line-height:normal; text-align: center; margin: 5px;"/> ';
		replyAll += '</div>';
		replyAll += '<hr id="reply_hr"/>';
	}
	 
	$('#result').html(replyAll);
	
	$('input:button.replyDelete').click(replyDelete);
	$('input:button.replyUpdate').click(replyUpdate);
	
}

// 댓글 저장
function replySave(){
	
	var replyBbsNo = $('#replyBbsNo').val();
	var replyContent = $('#content').val();
	
	var sendData = {
				"replyBbsNo" : replyBbsNo
				, "replyContent" : replyContent
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
	$('#replySave').one('click', update);
	
	function update(){
		
		var replyContent =  $('#content').val();
		var sendData = {"replyNo" : replyNo
						, "replyContent" : replyContent};
		
		$.ajax({
			method : 'post'
			, url : 'replyUpdate'
			, data : JSON.stringify(sendData)
			, dataType : 'text'
			, contentType : 'application/json; charset=UTF-8'
			, success : function(){
				init();
				$('#replySave').on('click', replySave);
			}
		});
	}
}


function writeReReply(){

	$('#reply_hr').append('<table id="replytable">');
	$('#reply_hr').append('<tr>');
	$('#reply_hr').append('<td style="padding-right: 5px;">');
	$('#reply_hr').append('<textarea id="content" name="content" cols="1000" rows="100" maxlength="6000"  style="overflow: hidden; line-height: 14px; height: 39px;"></textarea></td>');
	$('#reply_hr').append('<td><div><input id="re_replySave" type="button" class="button" value="등록" style="height:53px; border-radius: 0px;"/></div></td>');
	$('#reply_hr').append('</tr></table>');
	
}

function writeReReply2(){
	
	var replyContentDiv =$(this).parent('div.replyContent');
	
	replyContentDiv.append('<table id="replytable">');
	replyContentDiv.append('<tr>');
	replyContentDiv.append('<td style="padding-right: 5px;">');
	replyContentDiv.append('<textarea id="content" name="content" cols="1000" rows="100" maxlength="6000"  style="overflow: hidden; line-height: 14px; height: 39px;"></textarea></td>');
	replyContentDiv.append('<td><div><input id="re_replySave" type="button" class="button" value="등록" style="height:53px; border-radius: 0px;"/></div></td>');
	replyContentDiv.append('</tr></table>');
	
}

function re_replySave(){
	
	var replyBbsNo = $('#replyBbsNo').val();
	var replyContent = $('#content').val();
	var replyNo = $(this).parents('div.replyContent').children('input.replyUpdate').attr('data-rno');
	alert(replyNo);

	var sendData = {
				"replyBbsNo" : replyBbsNo
				, "replyContent" : replyContent
				, "replyParent" : replyNo
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


// 좋아요 기능

function likeList(){
	var likeBbsNo = $('#likeBbsNo').val();

	$.ajax({
		method : 'get'
		, url : 'likeList'
		, data : {"likeBbsNo" : likeBbsNo}
		, contentType : 'application/json; charset=utf-8'
		, success : function(resp) {
			if (resp == 'true') {
				$('#like-btn').addClass('like');
			} else {
				$('#like-btn').addClass('unlike');
			}
		} 
	});
	
}

function changeLike() {
	var likeBbsNo = $('#likeBbsNo').val();
	var sendData = {
			"likeBbsNo" : likeBbsNo};	
	
	
	
	if ($(this).hasClass('like')) {
		
		$(this).removeClass('like');
		$(this).addClass('unlike');
		
		$.ajax({
			method : 'post'
			, url : 'deleteLike'
			, data : {"likeBbsNo" : likeBbsNo}
			, success : function(){
				alert('좋아ddd요!');
			}
		});
		
	} else {
		
		$(this).removeClass('unlike');
		$(this).addClass('like');
		
		$.ajax({
			method : 'post'
			, url : 'insertLike'
			, data : JSON.stringify(sendData)
			, contentType : 'application/json; charset=utf-8'
			, success : function(){
				alert('좋아요!');
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
	
	
	div.like-wrapper {
		cursor: pointer;
	}
	
	div.like-wrapper i.like {
		color: #F80152;
	}


</style>
<script src="resources/library/js/jquery-3.3.1.min.js"></script>
</head>
<body class="landing">
<!-- Header -->
	<jsp:include page="header.jsp"></jsp:include>

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
	<input type="hidden" name="boardNo" id="boardNo" value="1"/>
		<h1 style="font-size: 30px;">${bbsDetail.bbsTitle}</h1>
		<div style="text-align: right;">
			<a href="writeBbs?type=update&boardNo=${bbsDetail.boardNo}&bbsNo=${bbsDetail.bbsNo}&bbsParent=${bbsDetail.bbsParent}" style="font-size:12px; padding-right: 20px;">수정</a>
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
		
		<!-- 좋아요 -->
		<div class="like-wrapper" align="right">
			<input type="hidden" id="likeBbsNo" name="likeBbsNo" value="${bbsDetail.bbsNo}"/>
			<i class="fas fa-heart" id="like-btn"></i>
		</div>
		
	</div>
	<br>

	<!-- 댓글부분 -->
	<div id="replyForm"  style="background-color:#EDF6E9; width:1200px; display:block; padding: 30px;">
		<!-- 댓글 목록 영역 -->
	<div id="result"></div>
	
		<!-- 댓글 폼 영역 -->	
	<div id="replyForm" class="right"  style="background-color:white; width:1100px; justify-content: space-between; ">
		<form action="replySave" method="post" onsubmit="return replyCheck()" autocomplete="off"  style="display:inline;" >
			
			<input type="hidden" id="replyBbsNo" name="replyBbsNo" value="${bbsDetail.bbsNo}" />
			<!-- 댓글 입력 영역 -->
			
			<table id="replytable">
				<tbody>
					<tr>
						<td style="padding-right: 5px;">
							<textarea id="content" name="content" cols="1000" rows="100" maxlength="6000"  style="overflow: hidden; line-height: 14px; height: 39px;"></textarea>
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
							<td><a href="bbsDetail?boardNo=${bbs.boardNo}&bbsNo=${bbs.bbsNo}">${bbs.bbsTitle}</a></td>
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
