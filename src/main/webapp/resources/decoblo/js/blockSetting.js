/**
 * 
 */
$(function(){
	firstcss();
	/*블록 마우스 이벤트*/
	$('.block-setting-cover').on('mouseenter',function(){
		
		$('.add-button').css('display','block');
		$(this).css("border-style","solid");
		$(this).css("border-color","#0073AC");
		$(this).css("border-width","1px");
	});
	/*블록 마우스 이벤트 종료*/
	$('.add-button').on('mouseout',function(){
		$('.add-button').css('display','none');
		$('.block-setting-cover').css("border-style","none");
	});
	/*블록 추가 버튼 */
	$('.add-block').on('click',function(){
			$('.blockMenu-sidebar-div').css("margin-left",'0px');
			$('#blockMenu-sidebar-close').css('left','315px');
	});
	
	/*사이드바 close 버튼*/	
	$('#blockMenu-sidebar-close').on('click',function(){
		$('.blockMenu-sidebar-ul > li').removeClass("active");
		$('.blockMenu-sidebar-div').css("margin-left",'-315px');
		$('#blockMenu-sidebar-close').css('left','-50px');
	});
	/*사이드바 메뉴 클릭 버튼*/
	$('.blockMenu-sidebar-ul > li').on('click',function(){
		$('.blockMenu-sidebar-ul > li').removeClass("active");
			$(this).addClass("active");
		
	});
	
});
/*첫화면 css */
function firstcss(){
	var headerHeight = $('#header').height();
	console.log(headerHeight);
	$('.blockMenu-sidebar-div').css({"top":0 + headerHeight});
}
