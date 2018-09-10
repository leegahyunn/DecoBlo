/**
 * 
 */
$(function(){
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
		$('.blockMenu-sidebar-div').css("margin-left",'0px');
		$('#blockMenu-sidebar-close').css('left','315px');
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
							,success:init
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
		$(document).off('click','.use-block-button');
	});
	
	/*세팅 버튼 클릭 이벤트*/
	
	$(document).on('click','.settingIcon',function(){
		$('.block-config.'+$(this).attr('id')).css('display','block');
	});
	
	$(document).on('click','#block-config-close',function(){
		$('.block-config').css('display','none');
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
	var maskHeight= $('.templates-wrapper').height();
	var maskWidth = $('.templates-wrapper').width();
	$('#mask').css({'width':maskWidth,'height':maskHeight});
	$('#mask').fadeIn(500);
	$('#mask').fadeTo("slow",0.8);
}

function init(){
	$.ajax({
		url:'yrtest'
		,method:'get'
	});
}

function blockDelete(blockSeq){
	$.ajax({
		url:'deleteBlock'
		,method:'post'
		,data:"blockSeq="+blockSeq
	});
}