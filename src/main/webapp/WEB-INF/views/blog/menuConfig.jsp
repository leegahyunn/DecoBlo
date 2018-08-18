<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="pixelarity/assets/css/font-awesome.min.css">
<link type="text/css" rel="stylesheet" href="decoblo/css/menuConfig.css">
<style type="text/css">
body.dragging, body.dragging * {
  cursor: move !important;
}

.dragged {
  position: absolute;
  opacity: 0.5;
  z-index: 2000;
}

ul.example li.placeholder {
  position: relative;
  /** More li styles **/
}
ul.example li.placeholder:before {
  position: absolute;
  /** Define arrowhead **/
}
</style>
<script src="resources/library/js/jquery-3.3.1.min.js"></script>
<script src="decoblo/js/blockConfig.js"></script>
<script src="decoblo/js/menuConfig.js"></script>

<script>
  $(function  () {
	  $("div.example").sortable();
	  $("#flip").click(function(){
	        $("#panel").slideToggle("slow");
	    });
	  $("#flip2").click(function(){
	        $("#panel2").slideToggle("slow");
	    });
	  $("#titlePencil").click(function(){
		 if($("#editTitle").css("display") == "none"){
			 $("#editTitle").css("display", "block");
			 $("#title").css("display", "none");
			 $("#titlePencil").css("display", "none");
			 $("#check").css("display", "block");
		 }
		 $("#check").click(function(){
			 $("#editTitle").css("display", "none");
			 $("#title").css("display", "block");
			 $("#titlePencil").css("display", "block");
			 $("#check").css("display", "none"); 
		 })
	  })
	  
	  $("#metaPencil").click(function(){
		  window.open("metaEdit", "newwin", "top=120, left=700, width=400, height=400")
	  })
	});  
  
  var a =  $("div.example");
  var group = $("a.serialization").sortable({
	  group: 'serialization',
	  delay: 500,
	  onDrop: function ($item, container, _super) {
	    var data = group.sortable("serialize").get();
	    var jsonString = JSON.stringify(data, null, ' ');

	    $('#serialize_output2').text(jsonString);
	    _super($item, container);
	  }
	});
</script>
</head>
<body>
<nav>
	<div class="drop-down-menu-container">
		<div class="drop-down-menu col-lg-6 col-md-6" >
			<div class="block-config-header" id="flip">
				<i class="fa fa-cog"></i> <span>메뉴 설정</span><i class="fa fa-times"></i>
			</div>
			<div class="block-config-section" id="panel">
				<div class='example'>
					<div class="fold outer-config">
						<span>여백</span> 
						<i class="fa fa-chevron-right right-icon fold-icon"></i>
						<div></div>
					</div>
					
					<div class="fold outer-config">
						<span>배경</span> 
						<i class="fa fa-chevron-right right-icon fold-icon"></i>
						<div></div>
					</div>
						
					<!-- <li class="fold outer-config">
						<span>하이</span> 
						<i class="fa fa-chevron-right right-icon fold-icon"></i>
						<ul></ul>
					</li>
						
					<li class="fold outer-config">
						<span>흐이</span> 
						<i class="fa fa-chevron-right right-icon fold-icon"></i>
						<ul></ul>
					</li> -->
				</div>
			</div>
		</div>
		
		<!-- 사이트 설정 -->
		<div class="drop-down-menu col-lg-6 col-md-6">
			<div class="block-config-header" id="flip2">
				<i class="fa fa-cog"></i> <span>사이트 설정</span><i class="fa fa-times"></i>
			</div>
			<div class="block-config-section" id="panel2">
				<ul>
					<li class="fold outer-config">
						<span id="title">타이틀</span> 
						<input id="editTitle" type="text" style="width:130px; display:none">
						<i id="titlePencil" class="fa right-icon fa-pencil"></i><!-- 타이틀 수정 버튼 -->
						<i id="check" class="fa fa-check" style="display:none"></i>
					</li>
					
					<li class="fold outer-config">
						<span>메타태그</span> 
						<i id="metaPencil" class="fa right-icon fa-pencil"></i>
					</li>
						
					<li class="fold outer-config">
						<span>원페이지 스타일</span> 
						<input type="checkbox" id="switch1" checked switch="none" /> 
    					<label for="switch1" data-on-label="On" data-off-label="Off"></label>
					</li>
						
					<li class="fold outer-config">
						<span>우클릭/드래그 방지</span> 
						<input type="checkbox" id="switch2" checked switch="none" /> 
    					<label for="switch2" data-on-label="On" data-off-label="Off"></label>
					</li>
					
					<li class="fold outer-config">
						<span>배경</span> 
						<i class="fa fa-chevron-right right-icon fold-icon"></i>
						<ul class="inner-config">
							<li> dkdk </li>
						</ul>
					</li>
					
					<li class="fold outer-config">
						<span>기본 폰트</span> 
						<i class="fa fa-chevron-right right-icon fold-icon"></i>
						<ul class="inner-config">
							<li> dkdk </li>
						</ul>
					</li>
					
					<li class="fold outer-config">
						<span>파비콘</span> 
						<i class="fa fa-chevron-right right-icon fold-icon"></i>
						<ul class="inner-config">
							<li> dkdk </li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
		
		<div class="drop-down-menu col-lg-6 col-md-6">
			<div class="block-config-header">
				<i class="fa fa-question"></i> <span>1:1문의</span>
			</div>
		</div>
		
		<div class="drop-down-menu col-lg-6 col-md-6">
			<div class="block-config-header">
				<i class="fa fa-user"></i> <span>가이드</span>
			</div>
		</div>
		
		<div class="drop-down-menu col-lg-6 col-md-6">
			<div class="block-config-header">
				<i class="fa fa-desktop"></i> <span>미리보기</span>
			</div>
		</div>
		
		<div class="drop-down-menu col-lg-6 col-md-6">
			<div class="block-config-header">
				<i class="fa fa-arrow-circle-up"></i> <span>사이트 게시</span>
			</div>
		</div>
		
		<div class="drop-down-menu col-lg-6 col-md-6">
			<div class="block-config-header">
				<span>편집 끝내기</span><i class="fa fa-share"></i> 
			</div>
		</div>
	</div>
	<!-- /drop-down-menu-container -->
</nav>
</body>
</html>