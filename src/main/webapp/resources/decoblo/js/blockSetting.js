/**
 * 
 */
$(function(){
	
	$('.block_wrapper').on('mouseenter',function(){
		$('.addBlock').html("<h2>click</h2>");
	});
	
	$('.addBlock').on('click',function(){
		$( ".blockMenu-sidebar" ).fadeIn( "slow", function() {
			$('.blockMenu-sidebar').css("margin-left",'0px');
		  });
	});
	$('.block_wrapper').on('mouseleave',function(){
		$('.block_wrapper').find('h2').remove();
	})
		
	$('.blockMenu-sidebar-close').on('click',function(){
		$('.blockMenu-sidebar').css("margin-left",'-315px');
	});
});
