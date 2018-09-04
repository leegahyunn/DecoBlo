/**
 * 
 */

/*******************/
/*  메뉴 블럭 불러오기    */
/*******************/
menuConfig();
function menuConfig() {
	$.ajax({
		method   : 'post'
		, url    : 'menuConfig'
		, contentType : 'application/json; charset=UTF-8'
		, success: function(resp) {
			var menuJson = JSON.parse(resp);
			var result2 = '';
			var result1 = '';
			
			result2 += '<ol class="dd-list">';
			$.each(menuJson, function(mainIndex, mainMenu){
				$.each(mainMenu.Menu, function(subIndex, subMenu){
					/* menu-bar */
					if(subMenu.menuDepth==0){
						result1 += '</ul></li><li data-parent="'+ subMenu.menuParent+'"><a href="#">'+ subMenu.menuName +'</a><ul>';
					} else if(subMenu.menuDepth==1){
						result1 += '<li><a href="#">'+ subMenu.menuName +'</a></li>'
					}
					
					if (subIndex == 1 && mainMenu.Menu.length != 1) {
						result2 += '<ol class="dd-list">';
					}
					
					result2 += '<li class="dd-item '; 
					
					if (subIndex == 0) {
						result2 += 'mainMenuWrapper';
					} 
					
					result2 += '" data-rno="'+ subMenu.menuNo + '" data-parent="'+ subMenu.menuParent+ '" data-menu-seq="'+ subMenu.menuSeq +'" data-menu-depth="'+ subMenu.menuDepth +'" data-menu-parent-seq="'+ subMenu.menuParentSeq +'">';
					result2 += '<div class="default-config">';
					result2 += '<div class="outer-config aa-handle">';
					result2 += '<div class="dd-handle" style="display: inline-block; width: 80%;">';
					result2 += '<span>' + subMenu.menuName + '</span>';
					result2 += '</div>';
					result2 += '<div class="outer-config"  style="display: inline-block;">';
					result2 += '<i class="fa fa-trash deletebtn" data-rno="'+ subMenu.menuNo + '" data-parent="'+ subMenu.menuParent+'"></i>';
					result2 += '<i class="fa fa-pencil editbtn" data-rno="'+ subMenu.menuNo + '" data-parent="'+ subMenu.menuParent+'"></i>';
					
					if(subMenu.menuVisible == 1){
						result2 += '<i style="color:#2ea8e5"class="fa fa-eye hidebtn" data-rno="'+ subMenu.menuNo + '" data-parent="'+ subMenu.menuParent+'"></i>';
					} else {
						result2 += '<i class="fa fa-eye hidebtn" data-rno="'+ subMenu.menuNo + '" data-parent="'+ subMenu.menuParent+'"></i>';
					}	 
					//result2 += '<i class="fa fa-eye hidebtn" data-rno="'+ subMenu.menuNo + '" data-parent="'+ subMenu.menuParent+'"></i>';
					
					result2 += '</div>';
					result2 += '<div class="fold outer-config" style="display:none;">';
					result2 += '<input type="text" style="width:200px;">';
					result2 += '<i class="right-icon fa fa-check checkbtn" data-rno="'+ subMenu.menuNo + '" data-parent="'+ subMenu.menuParent+'"></i>';
					result2 += '</div>';
					result2 += '</div>';
					result2 += '</div>';
					
					if (subIndex == mainMenu.Menu.length - 1 && mainMenu.Menu.length != 1) {
						result2 += '</ol>';
						result2 += '</li>';
					}
					
					if (mainMenu.Menu.length == 1) {
						result2 += '</li>';
					}
					
				});
			});
			result2 += '</ol>';
			result2 +='<div class="default-config" style="text-align: right; padding-right: 5px">';
			result2 +='<div class="outer-config"  style="display: inline-block;">';
			result2 +='<span style="font-size: 14px;">메뉴추가</span> ';
			result2 +='<i class="fa fa-plus menu-plus"></i>';
			result2 +='</div>';
			result2 +='<div class="fold outer-config menu-plus-box" style="display:none;">';
			result2 +='<input type="text" style="width:200px;">';
			result2 +='<i class="right-icon fa fa-check menu-plus-check"></i>';
			result2 +='</div>';
			result2 +='</div>';
			
			$('.menu-config-panel').html(result2);
			
			result1 += '</ul></li>';
			$('.menu-block').html(result1);
		} 
	});
}

$(function(){
	/**********************/
	/* 메뉴블럭 마우스오버   */
	/**********************/
	$(document).on('mouseenter', '.menu-block li', function(){
		$('ul:first',this).show();
	});
	
	$(document).on('mouseleave', '.menu-block li', function(){
		$('ul:first',this).hide();
	});
	
	/***********************/
	/* 사이트 설정(타이틀) 수정    */
	/***********************/
	$(".titleBtn").click(function(){
		$(".title").css('display','none');
		$(".titleEdit").css('display','block');
	})
	$(".checkBtn").click(function(){
		$(".titleEdit").css('display','none');
		$(".title").css('display','block');
	})
	
	/**************/
	/*   메타태그     */
	/**************/
	$(".metaBtn").click(function(){
		  window.open("metaEdit", "metaEdit", "top=120, left=700, width=400, height=400")
	})
	
	/**************/
	/*    드롭다운     */
	/**************/
	$(".site-config-flip").click(function(){
	    $(".site-config-panel").slideToggle("slow")
	    $(".site-config-panel").css("border-bottom","1px solid #333e4e").css("border-left","1px solid #333e4e").css("border-right","1px solid #333e4e")
	  	
	});
	
	$(".menu-config-flip").click(function(){
		$(".menu-config-panel").slideToggle("slow")
	    $(".menu-config-panel").css("border-bottom","1px solid #333e4e").css("border-left","1px solid #333e4e").css("border-right","1px solid #333e4e")
	  	
	});
	 
	$(document).on('click', 'div.folder', function() {
		$(this).removeClass('folder').addClass('unfolder');
		$(this).children('i.fa-chevron-right').removeClass('fa-chevron-right').addClass('fa-chevron-down');	
	});
	$(document).on('click', 'div.unfolder', function() {
		$(this).removeClass('unfolder').addClass('folder');
		$(this).children('i.fa-chevron-down').removeClass('fa-chevron-down').addClass('fa-chevron-right');	
	});
	
	/**************/
	/*메뉴 드래그앤드롭*/
	/**************/
	var target;
	
	var updateOutput = function(e){
		/* var list   = e.length ? e : $(e.target),
				output = list.data('output');
		if (window.JSON) {
			output.val(window.JSON.stringify(list.nestable('serialize')));//, null, 2));
		} else {
	        output.val('JSON browser support required for this demo.');
	    } */
	        
	    var menuNo = $(target).parents('li').data('rno');//누른 애의 menuNo, 옮겨져도 바뀌지 않음
	    var newMenuParent = $(target).parents('li').parents('li').data('rno');//누른 애 부모의 menuNo 옮겨지면 새 부모 menuNo로 바뀜 대메뉴일 경우 undefined
	    var newMenuSeq;
	    var menuParent = $(target).parents('li').data('parent');
	    var menuSeq = $(target).parents('li').data('menu-seq')
	    var menuDepth = $(target).parents('li').data('menu-depth')
	    var menuParentSeq = $(target).parents('li').data('menu-parent-seq');
	    var newMenuParentSeq;
	    var newMenuDepth;
		$(target).parents('li').addClass("changed");
		
// 			대메뉴
		if ($(target).parents('ol').length == 1) {
			$.each($($(target).parents('ol')[0]).children('li'), function(index, item){
				if ($(item).hasClass('changed')){
					newMenuSeq = index + 1;
					newMenuDepth = 0
				//	newMenuParentSeq = index + 1;
					$(item).removeClass("changed");
				}
			});
// 			소메뉴	
		} else if ($(target).parents('ol').length == 2) {
			$.each($($(target).parents('ol')[0]).children('li'), function(index, item){
				if ($(item).hasClass('changed')){
					// menuSeq
					newMenuSeq = index + 1;
					newMenuDepth = 1
				//	newMenuParentSeq = newMenuParent
					$(item).removeClass("changed");
				}
			});
		}
		
		var sendData = {
				"menuNo" : menuNo
				, "menuParent" : menuParent
				, "menuSeq" : menuSeq
				, "menuParentSeq" : menuParentSeq
				, "menuDepth" : menuDepth
				, "newMenuParent" : newMenuParent
				, "newMenuSeq" : newMenuSeq
				, "newMenuDepth" : newMenuDepth
			};
		
	
		$.ajax({
			method   : 'post'
			, url    : 'updateMenu'
			, data   : JSON.stringify(sendData)
			, dataType : 'json'
			, contentType : 'application/json; charset=UTF-8'
			, success: function(resp) {
				console.log(resp);
			} 
		});
		
	};
	
	
	
	$('#nestable').nestable({
		group: 1
	})
	.on('change', updateOutput);
	
	// output initial serialised data
    updateOutput($('#nestable').data('output', $('#nestable-output')));
	

	$('#nestable')
	.on('mousedown', '.outer-config', function(){
		target = $(this);
	});

	
	/*********************/
	/*메뉴 수정 버튼 이벤트*/
	/*********************/
	$(document).on('click', '.deletebtn', function(){
		
	});
	
	$(document).on('click', '.editbtn', function(){
		$(this).parent().css('display','none');
		$(this).parent().prev().css('display','none');
		$(this).parent().next().css('display','block');
	});
	
	$(document).on('click', '.hidebtn', function(){
		
	}); 
	$(document).on('click', '.menu-plus', function(){
		
	}); 
	$(document).on('click', '.checkbtn', function(){
		var menuname = $(this).prev().val();
		var menuno  = $(this).attr("data-rno");
		var sendData = {"menuName" : menuname,  "menuNo" : menuno};
		$.ajax({
			method : 'post'
			, url  : 'editMenu'
			, data : JSON.stringify(sendData)
			, dataType : 'text'
			, contentType : 'application/json; charset=UTF-8'
			, success: function(resp) {
				menuConfig();
			} 
		});
		
	});
	
	firstcss();
	/*블록 없을때 블록 추가 버튼 */
	$('.intro-block-wrapper').on('click',function(){
		if($('.blockMenu-sidebar-ul li').hasClass("active")){
			$('.blockMenu-sidebar-ul > li').removeClass();
		}
		$('.blockMenu-sidebar-ul > li').first().addClass("active");
		thumnail(0);
		$('.blockMenu-sidebar-div').animate({'margin-left':'0px'},'slow');
		$('#blockMenu-sidebar-close').css('left','315px');
		wrapByMask();
	});
	
	/*블록 추가 버튼 */
	$(document).on('click','.add-button',function(){
		$(document).off('click','.use-block-button');
		if($('.blockMenu-sidebar-ul li').hasClass("active")){
			$('.blockMenu-sidebar-ul > li').removeClass();
		}
		$('.blockMenu-sidebar-ul > li').first().addClass("active "+ 0);
		thumnail(0);
		$('#blockMenu-sidebar-close').css('left','315px');
		$('.blockMenu-sidebar-div').animate({'margin-left':'0px'},'slow');
		wrapByMask();
		var blockSeq =$(this).attr('id');
		
		$(document).on('click','.block-thumnail > li',function(){
			$(document).off('click','.use-block-button');
			$('.block-preview').empty();
			var blockWrapperCode = "";
			var blockTmpNo = $('.block-thumnail > li').attr('data-block-no');
			$.ajax({
				method:'POST'
				,url:'getBlockContent'
				,async: false
				,data : 'blockTmpNo='+blockTmpNo+''
				,success:function(response){
					$('.block-preview').append(useButton());
					blockWrapperCode = decodeURIComponent(response).replace(/\+/g, " ");
					$('.block-preview').append(blockWrapperCode);
					var block={
							"blockContent":blockWrapperCode+""
							,"blockTmpNo":blockTmpNo
							,"blockSeq":blockSeq};
					/*사용하기 버튼 클릭 이벤트 */
					$(document).on('click','.use-block-button',function(){
						alert("사용하기 클릭");
						$.ajax({
							method:'POST'
							,url:'setBlockContent'
							,data:JSON.stringify(block)
							,dataType:'json'
							,contentType:'application/json; charset:utf-8'
							,success:function(resp){
								location.replace("config");
							},fail:function(){
								alert('블록 추가 실패');
							}
						});
						$('.intro-block-wrapper').css('display','none');
						$('.blockMenu-sidebar-div').animate({'margin-left':'-315px'},'slow');
						$('#blockMenu-sidebar-close').css('left','-50px');
						$('#mask').hide();
						$('.block-preview').empty();
						$(document).off('click','.use-block-button');
					});
				}
			});
		})
	});
	
	/*사이드바 close 버튼*/	
	$('#blockMenu-sidebar-close').on('click',function(){
		$('.use-block-button').css('display','none');
		if($('.blockMenu-sidebar-ul > li').hasClass("active")){
			$('.blockMenu-sidebar-ul > li').removeClass();
		}
		$('.blockMenu-sidebar-div').animate({'margin-left':'-315px'},'slow');
		$('#blockMenu-sidebar-close').css('left','-50px');
		$('.block-thumnail > li').remove();
		$('#mask').hide();
		$('.block-preview').empty();
	});
	
	/*사이드바 type 클릭 이벤트 */
	$(document).on('click','.blockMenu-sidebar-ul>li',function(){
		if($('.blockMenu-sidebar-ul li').hasClass("active")){
			$('.blockMenu-sidebar-ul > li').removeClass();
		}
		$(this).addClass("active");
		thumnail($(this).index());
	});
	
	/*블록 마우스 이벤트*/
	$(document).on('mouseenter','.block-wrapper',function(){
		$('.add-button.'+$(this).attr('data-block-seq')).css('display','block');
		$('.settingIcon.'+$(this).attr('data-block-seq')).css('display','block');
		$(this).css("border-style","solid");
		$(this).css("border-color","#0073AC");
		$(this).css("border-width","1px");
	});
	
	/*블록 마우스 이벤트 종료*/
	$(document).on('mouseout','.add-button',function(){
		$('.add-button').css('display','none');
		$('.settingIcon').css('display','none');
		$('.block-wrapper').css("border-style","none");
	});
	
	/*마스크 클릭 이벤트*/
	$(document).on('click','#mask',function(){
		$(this).hide();
		$('.blockMenu-sidebar-div').animate({'margin-left':'-315px'},'slow');
		$('#blockMenu-sidebar-close').css('left','-50px');
		$('.block-preview').empty();
		$('.block-thumnail > li').unbind('click');
		$('.delete-confirm').css('display','none');
		$(document).off('click','.use-block-button');
	});
	
	/*마스크 2 클릭 이벤트*/
	$(document).on('click','.mask2',function(){
		$(this).hide();
		$('.block-config').css('display','none');
		$('.mask2').css('display','none');
	})
	
	/*세팅 버튼 클릭 이벤트*/
	$(document).on('click','.settingIcon',function(){
		$('.block-config.'+$(this).attr('id')).css('display','block');
		wrapByMask2($(this).attr('id'));
		$(this).attr('id');
	});
	
	$(document).on('click','#block-config-close',function(){
		$('.block-config').css('display','none');
		$('.mask2').css('display','none');
	});
	
	$('.block-config').draggable();
	
	/*블록 삭제 이벤트*/
});
/*첫화면 css */
function firstcss(){
	var headerHeight = $('#header').height();
	$('.blockMenu-sidebar-div').css({"top":0 + headerHeight});
	$('.use-block-button').css('display','none');
}
/*썸네일 불러오는 함수*/
function thumnail(index){
	switch(index){
	case 0 :
		var data = 'tmpType=showcase';
		getBlockNo(data);
		break;
	case 1 :
		var data = 'tmpType=title';
		getBlockNo(data);
		break;
	case 2 :
		var data = 'tmpType=contents';
		getBlockNo(data);
		break;
	case 3 : 
		var data = 'tmpType=text';
		getBlockNo(data);
		break;
	case 4 : 
		var data = 'tmpType=image';
		getBlockNo(data);
		break;
	case 5 : 
		var data = 'tmpType=line';
		getBlockNo(data);
		break;
	case 6 : 
		var data = 'tmpType=board';
		getBlockNo(data);
		break;
	default :
		$('.block-thumnail >li').remove();
		break;
	}
	
}

/*Type 별 블록 넘버 가져오는 함수 */
function getBlockNo(data){
$.ajax({
	method:'POST'
	, url:'getThumnail'
	, data: data
	,success:function(rep){
		console.log(rep.length);
		$('.block-thumnail >li').remove();
		for(var i =0; i<rep.length;i++){
			console.log($(this).text());
			$('.block-thumnail').append(""
					+"<li data-block-no="+rep[i]+">"
					+"<img alt='test1' src='resources/images/blockThumnail/block"+rep[i]+".png'>"
					+"</li>");
			}
		}
	});
}
/*블록 코드 가져오는 함수 */
function blockWrapper(){
		var blockWrapperCode = "";
	
}
/*사용하기 버튼 코드 함수 */
function useButton(){
	var useButtonCode = ""
	+"<div class='use-block-button'>"
	+"<i class='fa fa-check'></i>"
	+"<span>사용하기</span>"
	+"</div>";
	return useButtonCode;
}
/*mask 함수*/
function wrapByMask(){
	var maskHeight= $(window).height();
	var maskWidth = $(window).width();
	$('#mask').css({'width':maskWidth,'height':maskHeight});
	$('#mask').css('z-index',7000);
	$('#mask').fadeIn(500);
	$('#mask').fadeTo("slow",0.8);
}
/*삭제 컨펌 mask*/
function wrapByMask3(){
	$('#mask').css({'width':'100%','height':'100%'}).css('display','block').css('z-index',8500).css('top',0);
}

/*mask 2 함수*/
function wrapByMask2(blockSeq){
	var maskHeight= $('.block-wrapper').height();
	var maskWidth= $('.block-wrapper').width();
	$('#mask-2-'+blockSeq).css({'width':maskWidth,'height':maskHeight});
	$('#mask-2-'+blockSeq).css('display','block');
	$('#mask-2-'+blockSeq).css('background-color','rgba(125, 162, 206,0.3)');
}
/*블럭 삭제 ajax*/


function deleteConfirm(blockSeq){
	$('.delete-confirm').css('display','block');
	wrapByMask3();
}
/*블럭 삭제 취소*/
function deleteCancle(){
	$('.delete-confirm').css('display','none');
	$('#mask').css('display','none');
}
function deleteOk(blockSeq){
	alert("삭제");
	alert(blockSeq);
	if(blockSeq!=null){
		$.ajax({
			url:'deleteBlock'
			,method:'post'
			,data:"blockSeq="+blockSeq
			,success:function(resp){
				location.replace("config");
			}
		});
	}
}
