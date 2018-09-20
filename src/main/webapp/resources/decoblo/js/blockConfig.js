/**
 * 
 */

$(function(){
	/* 메뉴 펼치기 / 메뉴 열기 */
	$(document).on('click', 'div.fold', function() {
		$(this).next().css({"display":"block"});
		$(this).removeClass('fold').addClass('unfold');
		$(this).children('i.fa-chevron-right').removeClass('fa-chevron-right').addClass('fa-chevron-down');	
	});
	$(document).on('click', 'div.unfold', function() {
		$(this).next().css({"display":"none"});
		$(this).removeClass('unfold').addClass('fold');
		$(this).children('i.fa-chevron-down').removeClass('fa-chevron-down').addClass('fa-chevron-right');	
	});
	
	/* 슬라이더 */
	
	
	/* 파일 선택 */
	$('#backgroundfile').change(function(){
		var fileName = $(this).val();
		if (fileName != '') {
			$('span#backgroundfile-name').text(fileName);
			$('.background-config .additional-option').each(function(index, item){
				$(item).css('display', 'block');
			});
		}
	});
});

$('#example3').newColpick({
  onLoaded: function(colDiv,el) {
    var hex = $.colpickRmx.hsbToHex($(el).getCurrentColpickColor());
    $(el).css('background-color', '#' + hex);
  },
  onChange: function(hsb,hex,rgb,el,bsc) {
    $(el).css('background-color', '#' + hex);
  },
  onHide: function(colDiv,el) {
    var hex = $.colpickRmx.hsbToHex($(el).getCurrentColpickColor());
    $(el).css('background-color', '#' + hex);
    $(el).setColpickColor(hex, false);
  },
  onSubmit: function(hsb,hex,rgb,el) {
    $(el).hideColpick();
  }
});


$('#element3').newColpick({
  alphaOutline: true,
  appendToBody: false,
  arrowsColor: 'default',
  border: 1,
  checkersColor: 'default',
  color: {h:0, s:0, b:20, a:1},
  colorOutline: true,
  colorScheme: 'light-full',
  colorSelOutline: true,
  compactLayout: false,
  enableAlpha: true,
  enableSubmit: true,
  fieldsBackground: 'default',
  flat: true,
  hueOutline: true,
  layout: 'full',
  livePreview: true,
  polyfill: false,
  position: 'auto',
  readonlyFields: false,
  readonlyHexField: false,
  showEvent: 'click',
  submitBackground: 'default',
  submitColor: 'default',
  variant: 'standard',
  
});	

function paddingSetting(){
	
}

