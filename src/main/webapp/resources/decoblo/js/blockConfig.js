/**
 * 
 */

$(function(){
	$(document).on('click', 'li.fold', function() {
		$(this).children('ul.inner-config').css({"display":"block"});
		$(this).removeClass('fold').addClass('unfold');
		$(this).children('i.fa-chevron-right').removeClass('fa-chevron-right').addClass('fa-chevron-down');	
	});
	$(document).on('click', 'li.unfold', function() {
		$(this).children('ul.inner-config').css({"display":"none"});
		$(this).removeClass('unfold').addClass('fold');
		$(this).children('i.fa-chevron-down').removeClass('fa-chevron-down').addClass('fa-chevron-right');	
	});
});