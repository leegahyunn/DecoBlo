$(function(){
	/***********/
	/* Block 1 */
	/***********/
	
	/* 메뉴 드롭다운 */
	$('.block-1 nav').on('mouseenter', 'li.dropdown-menu', function(){
		var top = $(this).offset().top + $(this).height() + 30;
		var left = $(this).offset().left + $(this).width() - $(this).children('ul.dropdown-opt').width();
		$(this).children('ul.dropdown-opt').css({
			'display' : 'block',
			'left' : left,
			'top' : top
		});
	});
	
	$('.block-1 nav').on('mouseleave', 'li.dropdown-menu', function(){
		var target = $(this); 
		setTimeout(function(){
			target.children('ul.dropdown-opt').css({
				'display' : 'none',
			});
		}, 500);
	});
	
	$('.block-1 nav').on('mouseleave', '.dropdown-opt', function(){
		$(this).css({
			'display' : 'block',
		});
	});
	
	$('.block-1 nav').on('mouseleave', '.dropdown-opt', function(){
		var target = $(this); 
		setTimeout(function(){
			target.children('ul.dropdown-opt').css({
				'display' : 'none',
			});
		}, 500);
	});
});