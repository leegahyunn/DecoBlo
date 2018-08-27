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
		$('.blockMenu-sidebar-div').css("margin-left",'0px');
		$('#blockMenu-sidebar-close').css('left','315px');
	});
	
	/*블록 추가 버튼 */
	$(document).on('click','.add-button',function(){
		if($('.blockMenu-sidebar-ul li').hasClass("active")){
			$('.blockMenu-sidebar-ul > li').removeClass();
		}
		$('.blockMenu-sidebar-ul > li').first().addClass("active "+ 0);
		thumnail(0);
		$('.blockMenu-sidebar-div').css("margin-left",'0px');
		$('#blockMenu-sidebar-close').css('left','315px');
	});
	
	/*사이드바 type 클릭 이벤트 */
	$(document).on('click','.blockMenu-sidebar-ul>li',function(){
		if($('.blockMenu-sidebar-ul li').hasClass("active")){
			$('.blockMenu-sidebar-ul > li').removeClass();
		}
		$(this).addClass("active");
		thumnail($(this).index());
	});
	
	/*썸네일 클릭 이벤트 */
	$(document).on('click','.block-thumnail > li',function(){
		$('.block-preview').html(useButton());
		$('.block-preview').append(""
				+"<div>"
				+"<h1>1번 블록 1번 블록 1번 블록 1번 블록</h1>"
				+"<strong contenteditable='true'>Eeco-BLog-NO1.Block </strong>"
				+"<hr/>"
				+"</div>");
	});
	
	/*사용하기 버튼 클릭 이벤트 */
	$(document).on('click','.use-block-button',function(){
		$('.menu-wrapper').append(blockAddButtonTop());
		$('.menu-wrapper').append("<section class='block-wrapper'>"+blockWrapper()+"</section>");
		$('.menu-wrapper').append(blockAddButtonBottom());
		$('.menu-wrapper').find('section').attr('data-block-no-',1);
		$('.block-preview').empty();
		$('.intro-block-wrapper').css('display','none');
	});
	
	/*사이드바 close 버튼*/	
	$('#blockMenu-sidebar-close').on('click',function(){
		$('.use-block-button').css('display','none');
		if($('.blockMenu-sidebar-ul > li').hasClass("active")){
			$('.blockMenu-sidebar-ul > li').removeClass();
		}
		$('.blockMenu-sidebar-div').css("margin-left",'-315px');
		$('#blockMenu-sidebar-close').css('left','-50px');
		$('.block-thumnail > li').remove();
	});
	
	/*블록 마우스 이벤트*/
	$(document).on('mouseenter','.block-wrapper',function(){
		$('.add-button').css('display','block');
		$(this).css("border-style","solid");
		$(this).css("border-color","#0073AC");
		$(this).css("border-width","1px");
	});
	
	/*블록 마우스 이벤트 종료*/
	$(document).on('mouseout','.add-button',function(){
		$('.add-button').css('display','none');
		$('.block-setting-cover').css("border-style","none");
	});
	
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
		$('.block-thumnail >li').remove();
		$('.block-thumnail').html("" 
			+"<li class='block-no "+index+""+1+"'>"
			+"<img alt='test1' src='resources/images/blockThumnail/block1.PNG'>"
			+"</li>"
		);
		break;
	case 1 :
		$('.block-thumnail >li').remove();
		$('.block-thumnail').html(""
			+"<li class='block-no "+index+""+1+"'>"
			+"<img alt='test1' src='resources/images/blockThumnail/block2.png'>"
			+"</li>"
			+"<li class='block-no "+index+""+2+"'>"
			+"<img alt='test2' src='resources/images/blockThumnail/block-0.png'>"
			+"</li>"
		);
		break;
	case 2 :
		$('.block-thumnail >li').remove();
		$('.block-thumnail').html(""
			+"<li class='block-no "+index+""+1+"'>"
			+"<img alt='test1' src='resources/images/blockThumnail/block3.png'>"
			+"</li>"
			+"<li class='block-no "+index+""+2+"'>"
			+"<img alt='test2' src='resources/images/blockThumnail/block-1.png'>"
			+"</li>"
		);
		break;
	default :
		$('.block-thumnail >li').remove();
		break;
	}
	
}

/*블록 add 버튼 추가 함수 Top */
function blockAddButtonTop(){
	var blockAddButtonTop = ""
		+"<ul class='add-button' id='add-button-top_1'>"
		+"<li class='add-button-li'>"
		+"<div class='add-block'>"
		+"<img alt='Plus' src='resources/images/blockSettingimg/fa_plus_icon.png'/>"
		+"</div></li></ul>";
	return blockAddButtonTop;
}
/*블록 add 버튼 추가 함수 Bottom */
function blockAddButtonBottom(){
	var blockAddButtonBottom = ""
		+"<ul class='add-button' id='add-button-bottom_1'>"
		+"<li class='add-button-li'>"
		+"<div class='add-block'>"
		+"<img alt='Plus' src='resources/images/blockSettingimg/fa_plus_icon.png'/>"
		+"</div></li></ul>";
	return blockAddButtonBottom;
}
/*블록 코드 가져오는 함수 */
function blockWrapper(){
	var blockWrapperCode= ""
		+"<div>"
		+"<h1>1번 블록 1번 블록 1번 블록 1번 블록</h1>"
		+"<strong contenteditable='true'>Eeco-BLog-NO1.Block </strong>"
		+"<hr/>"
		+"</div>";
	return blockWrapperCode;
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
