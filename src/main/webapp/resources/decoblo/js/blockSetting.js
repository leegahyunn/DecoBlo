/*******************/
/*  메뉴 블럭 불러오기    */
/*******************/
menuConfig();
siteConfig();

/* 메뉴 불러오기 */
function menuConfig() {
	$.ajax({
		method   : 'post'
		, url    : 'menuConfig'
		, contentType : 'application/json; charset=UTF-8'
		, success: function(resp) {
			var menuJson = JSON.parse(resp);
			var result = ''; // 홈
			var result1 = ''; // 메뉴 바
			var result2 = ''; // 메뉴 설정
			
			result2 += '<ol class="dd-list">';
			$.each(menuJson, function(mainIndex, mainMenu){
				$.each(mainMenu.Menu, function(subIndex, subMenu){
					/* 메뉴 바 */
					if (mainIndex == 0) {
						result += '<span id="intro-click" data-parent="'+ subMenu.menuParent+'">'+subMenu.menuName+'</span>';
					} else {
						if(subMenu.menuVisible == 1){ // 메뉴를 보이게 해놓은 경우
							if (subMenu.menuDepth==0){
								result1 += '</ul></li><li data-parent="'+ subMenu.menuParent+'"><div data-menu-no='+subMenu.menuParent+'>'+ subMenu.menuName +'</div><ul>';
							} else if(subMenu.menuDepth==1){
								result1 += '<li><div data-menu-no='+subMenu.menuNo+'>'+ subMenu.menuName +'</div></li>';
							}
						}
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
					result2 += '<i class="fa fa-pencil editbtn" data-rno="'+ subMenu.menuNo + '" data-parent="'+ subMenu.menuParent+ '" data-menu-seq="'+ subMenu.menuSeq +'" data-menu-depth="'+ subMenu.menuDepth +'" data-menu-parent-seq="'+ subMenu.menuParentSeq +'"></i>';
		
					if(mainIndex != 0){
						result2 += '<i class="fa fa-trash deletebtn" data-rno="'+ subMenu.menuNo + '" data-parent="'+ subMenu.menuParent+ '" data-menu-seq="'+ subMenu.menuSeq +'" data-menu-depth="'+ subMenu.menuDepth +'" data-menu-parent-seq="'+ subMenu.menuParentSeq +'"></i>';
						if(subMenu.menuVisible == 1){
							result2 += '<i style="color:#2ea8e5"class="fa fa-eye hidebtn" data-menu-visible="'+subMenu.menuVisible+'" data-rno="'+ subMenu.menuNo + '" data-parent="'+ subMenu.menuParent+'"></i>';
						} else {
							result2 += '<i class="fa fa-eye hidebtn" data-menu-visible="' + subMenu.menuVisible + '"  data-rno="'+ subMenu.menuNo + '" data-parent="'+ subMenu.menuParent+ '" data-menu-seq="'+ subMenu.menuSeq +'" data-menu-depth="'+ subMenu.menuDepth +'" data-menu-parent-seq="'+ subMenu.menuParentSeq +'"></i>';
						}   
					}		   
		  
					result2 += '</div>';
					result2 += '<div class="fold outer-config" style="display:none;">';
					result2 += '<input type="text" style="width:200px;">';
					result2 += '<i class="right-icon fa fa-check checkbtn" data-rno="'+ subMenu.menuNo + '" data-parent="'+ subMenu.menuParent+ '" data-menu-seq="'+ subMenu.menuSeq +'" data-menu-depth="'+ subMenu.menuDepth +'" data-menu-parent-seq="'+ subMenu.menuParentSeq +'"></i>';
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
			result2 +='<div class="outer-config menu-plus-button"  style="display: inline-block;">';
			result2 +='<span style="font-size: 14px;">메뉴추가</span> ';
			result2 +='<i class="fa fa-plus"></i>';
			result2 +='</div>';
			result2 +='<div class="fold outer-config menu-plus-box" style="display:none;">';
			result2 +='<input type="text" style="width:250px;">';
			result2 +='<i class="right-icon fa fa-check menu-plus-check"></i>';
			result2 +='</div>';
			result2 +='</div>';
		
			$('.menu-config-panel').html(result2);
		 
			result1 += '</ul></li>';
			$('.menu-block').html(result1);
			$('.main-menu-block').html(result);
		}
	});
}
   
   
/* 사이트 설정 불러오기 */
function siteConfig() {
	$.ajax({
		method   : 'post'
		, url    : 'siteConfig'
		, contentType : 'application/json; charset=UTF-8'
		, success: function(resp) {
			$('title').text("DecoBlo - " + resp.blogTitle);
			$('.blogTitle').html(resp.blogTitle);
			$('.menu-wrapper').css('background-color', resp.configBackgroundColor);
			$('.metaAuthor').val(resp.metaAuthor);
			$('.metaKeyword').val(resp.metaKeyword);
			$('.metaDescription').val(resp.metaDescription);
			$('.menu-config-flip').css('font-family', resp.configBasicFont)
			
			if(resp.configOnepageStyle==0){
				$('.configOnepageStyle').val(resp.configOnepageStyle);
				$('.configOnepageStyle').removeAttr( "checked" );
			}
			if(resp.configOnepageStyle==1){
				$('.configOnepageStyle').val(resp.configOnepageStyle);
				$('.configOnepageStyle').attr('checked',' checked');
			}
			if(resp.configRightClickable==0){
				$('.configRightClickable').val(resp.configRightClickable);
				$('.configRightClickable').removeAttr( "checked" );
			}
			if(resp.configRightClickable==1){
				$('.configRightClickable').val(resp.configRightClickable);
				$('.configRightClickable').attr('checked',' checked');
			}
		}
	});
}

/* 사이트 설정 */
$(function(){
	// 블럭 내용 변경 text
	$(document).on('click', '.text-editable', function(){         
		$(this).attr('contentEditable','true');
		$(this).focus();
	});
	/*블록 내용 변경 후 DB 저장*/
	$(document).on('focusout','.text-editable',function(){
		var blockSeq=$(this).closest('section').attr('data-block-seq');
		var blockContent=$(this).parents('.blockContent').html();
		var block = {"blockContent":blockContent , "blockSeq":blockSeq};
		var blockMenuNo = $('.menu-bar').attr("data-menu-no");
		$.ajax({
			url:'updateBlockContentText'
			,type:'post'
			,data:JSON.stringify(block)
			,dataType:'json'
			,contentType:'application/json; charset:utf-8'
			,success:function(){
				location.replace("config?menuNo="+blockMenuNo);
			}
		});
	})
	// 블럭 내용 변경 image
	$(document).on('mouseenter','.image-editable', function(){
		$(this).css({"position" : "relative" , "opacity" : "0.3"});
		
		var hoverHtml = '';
		hoverHtml += '<label class="temp" for="imagefile" style="position: absolute; top:0; left:0;">';
		hoverHtml += '<img class="temp" src="resources/images/blockSettingimg/icon-image.png" style="width: 100px"/>';
		hoverHtml += '</label>';
		hoverHtml += '<form class="temp imgFileForm" enctype="multipart/form-data" style="display:none">';
		hoverHtml += '<input type="file" id="imagefile" name="imagefile" class="temp"/><br/>';
		hoverHtml += '<input type="button" value="변경" class="temp sendImage"></form></div></div>';
		
		
		$(this).append(hoverHtml);
	});
	
	$(document).on('change', '#imagefile', function(){
		sendImage();
	});
	
	$(document).on('mouseout','.image-editable', function(){
		$('.temp').remove();
	});
	
	// 사이트 설정 - 배경 색상
	/* 메타태그 수정 */
	$(document).on('click', '.updateMetaTag', function(){
		var metaAuthor = $('.metaAuthor').val();
		var metaKeyword = $('.metaKeyword').val();
		var metaDescription = $('.metaDescription').val();
		var sendData = {"metaAuthor" : metaAuthor
						,"metaKeyword" : metaKeyword
						,"metaDescription" : metaDescription};
		
		$.ajax({
			method : 'post'
			, url  : 'updateMetaTag'
			, data : JSON.stringify(sendData)
			, dataType : 'text'
			, contentType : 'application/json; charset=UTF-8'
			, success: function(resp) {
				siteConfig();
			}
		});
	});
	
	/* 배경 색상 수정 */
	$(document).on('change', '.site-backgroundcolor', function(){
		var configBackgroundColor = $(this).val();
		var sendData = {"configBackgroundColor" : configBackgroundColor};
		
		$.ajax({
			method : 'post'
			, url  : 'updateBackgroundColor'
	        , data : JSON.stringify(sendData)
	        , dataType : 'text'
	        , contentType : 'application/json; charset=UTF-8'
	        , success: function(resp) {
	        	siteConfig();
	        }
		});
	});
	
	/* 배경 이미지 수정 */
	$(document).on('click', '#blog-background-img', function(){
		var formData = new FormData($("#fileform")[0]);
		//console.log(formData);
		
		$.ajax({
			type : 'post'
			, url : 'updateBackgroundImg'
			, data : formData
			, processData: false
			, contentType : false
			, success : function() {}
		});
	});
	
	/*블록 이미지 수정*/
	function sendImage() {
		var formData3 = new FormData($(".imgFileForm")[0]);
		console.log(formData3);
		$.ajax({
			type:'post'
			,url:'updateBlockImg'
			,data:formData3
			,processData: false
			,contentType : false
			,success : function(resp){
				console.log($('.imgFileForm'));
			}
		});		
	}
	
	/* 파비콘 수정 */
	$(document).on('click', '#blog-fabicon-img', function(){
		var formData2 = new FormData($("#fileform2")[0]);
		
		$.ajax({
			type : 'post'
			, url : 'updateFabiconImg'
			, data : formData2
			, processData: false
			, contentType : false
			, success : function() {}
		});
	});
	
	/* 원페이지 스타일 수정 */
	$(document).on('click', '.configOnepageStyle', function(){
		var configOnepageStyle;
		
		if($(this).val()=="1"){
			configOnepageStyle=0;
		}
		if($(this).val()=="0"){
			configOnepageStyle=1;
		}
		
		var sendData = {"configOnepageStyle" : configOnepageStyle};
		
		$.ajax({
			method : 'post'
			, url  : 'updateOnepageStyle'
			, data : JSON.stringify(sendData)
			, dataType : 'text'
			, contentType : 'application/json; charset=UTF-8'
			, success: function(resp) {
				siteConfig();
			}
		});  
   });
	
	/* 마우스 우클릭 수정 */
	$(document).on('click', '.configRightClickable', function(){
		var configRightClickable;
      
		if($(this).val()=="1"){
			configRightClickable=0;
		}
		if($(this).val()=="0"){
			configRightClickable=1;
		}
		
		var sendData = {"configRightClickable" : configRightClickable};
		
		$.ajax({
			method : 'post'
			, url  : 'updateRightClickable'
			, data : JSON.stringify(sendData)
			, dataType : 'text'
			, contentType : 'application/json; charset=UTF-8'
			, success: function(resp) {
				siteConfig();
			}
		});
	});
	
	/* 폰트 수정 */
	$(document).on('change', '.updateBlogFont', function(){
		var configBasicFont = $(this).val();
		var sendData = {"configBasicFont" : configBasicFont};
      
		$.ajax({
			method : 'post'
			, url  : 'updateBlogFont'
			, data : JSON.stringify(sendData)
			, dataType : 'text'
			, contentType : 'application/json; charset=UTF-8'
			, success: function(resp) {
				siteConfig();
			}
		});  
	});
   
   /* 메뉴블럭 마우스오버  */
   $(document).on('mouseenter', '.menu-block li', function(){
	   $('ul:first',this).show();
   });
   $(document).on('mouseleave', '.menu-block li', function(){
	   $('ul:first',this).hide();
   });

   /* 메뉴설정, 사이트설정 드롭다운 */
   $(".site-config-flip").click(function(){
	   $(".site-config-panel").slideToggle("slow");
	   $(".site-config-panel").css("border-bottom","1px solid #333e4e").css("border-left","1px solid #333e4e").css("border-right","1px solid #333e4e");
   });
   $(".menu-config-flip").click(function(){
	   $(".menu-config-panel").slideToggle("slow");
	   $(".menu-config-panel").css("border-bottom","1px solid #333e4e").css("border-left","1px solid #333e4e").css("border-right","1px solid #333e4e");
   });
   $(document).on('click', 'div.folder', function(){
	   $(this).removeClass('folder').addClass('unfolder');
	   $(this).children('i.fa-chevron-right').removeClass('fa-chevron-right').addClass('fa-chevron-down');   
   });
   $(document).on('click', 'div.unfolder', function() {
	   $(this).removeClass('unfolder').addClass('folder');
	   $(this).children('i.fa-chevron-down').removeClass('fa-chevron-down').addClass('fa-chevron-right');
   });

   /*메뉴 드래그앤드롭*/
   var target;
   var updateOutput = function(e){
	   var menuNo = $(target).parents('li').data('rno');//누른 애의 
       var newMenuParent = $(target).parents('li').parents('li').data('rno');
       var newMenuSeq;
       var menuParent = $(target).parents('li').data('parent');
       var menuSeq = $(target).parents('li').data('menu-seq')
       var menuDepth = $(target).parents('li').data('menu-depth')
       var menuParentSeq = $(target).parents('li').data('menu-parent-seq');
       var newMenuParentSeq;
       var newMenuDepth;
      $(target).parents('li').addClass("changed");
      
//          대메뉴
      if ($(target).parents('ol').length == 1) {
    	  $.each($($(target).parents('ol')[0]).children('li'), function(index, item){
    		  if ($(item).hasClass('changed')){
    			  newMenuSeq = index + 1;
    			  newMenuDepth = 0;
    			  $(item).removeClass("changed");
    		  }
    	  });
//          소메뉴   
      } else if ($(target).parents('ol').length == 2) {
    	  $.each($($(target).parents('ol')[0]).children('li'), function(index, item){
    		  if ($(item).hasClass('changed')){
    			  newMenuSeq = index + 1;
    			  newMenuDepth = 1;
    			  $(item).removeClass("changed");
            }
         });
      }
      
      var sendData = {
    		  "menuNo" : menuNo, 
    		  "menuParent" : menuParent, 
    		  "menuSeq" : menuSeq, 
    		  "menuParentSeq" : menuParentSeq, 
    		  "menuDepth" : menuDepth, 
    		  "newMenuParent" : newMenuParent, 
    		  "newMenuSeq" : newMenuSeq, 
    		  "newMenuDepth" : newMenuDepth
      };
      
      $.ajax({
    	  method   : 'post', 
    	  url    : 'updateMenu', 
    	  data   : JSON.stringify(sendData), 
    	  dataType : 'json', 
    	  contentType : 'application/json; charset=UTF-8', 
    	  success: function(resp) {
    		  menuConfig();
    	  } 
      });
   }; //updateOutput
   
   $('#nestable').nestable({
	   group: 1
	})
	.on('change', updateOutput);
   updateOutput($('#nestable').data('output', $('#nestable-output')));
   
   $('#nestable')
   .on('mousedown', '.outer-config', function(){
	   target = $(this);
	});
   
   $(document).on('click', '.blog-title-edit', function(){
	   $(this).parent().css('display','none');
	   $(this).parent().prev().css('display','none');
	   $(this).parent().next().css('display','block');
   });
   
   $(document).on('click', '.blog-title-check', function(){
	   var blogTitle = $(this).prev().val();
	   var sendData = {"blogTitle" : blogTitle};
	   
	   $.ajax({
		   method : 'post', 
		   url  : 'editBlogTitle', 
		   data : JSON.stringify(sendData), 
		   dataType : 'text', 
		   contentType : 'application/json; charset=UTF-8', 
		   success: function(resp) {
			   $('.blog-title-editbox').css('display', 'none')
			   $('.blog-title').css('display', 'block')
			   siteConfig();
		   }
	   }); 		
   });
   
   /*메뉴 삭제 이벤트*/
   $(document).on('click', '.deletebtn', function(){
	   
	   var menuNo = $(this).data('rno');
	   var menuParent = $(this).data('parent');
	   var menuSeq = $(this).data('menu-seq');
	   var menuParentSeq = $(this).data('menu-parent-seq');
	   var menuDepth = $(this).data('menu-depth');
	   var sendData = {"menuNo" : menuNo, 
			   			"menuParent" : menuParent, 
			   			"menuSeq" : menuSeq, 
			   			"menuParentSeq" : menuParentSeq, 
			   			"menuDepth" : menuDepth };
	   alert("menuNo"+ menuNo +"menuParent"+ menuParent +"menuSeq"+ menuSeq +"menuParentSeq"+ menuParentSeq +"menuDepth"+ menuDepth);
	   $.ajax({
		   method : 'post', 
		   url  : 'deleteMenu', 
		   data : JSON.stringify(sendData), 
		   dataType : 'text', 
		   contentType : 'application/json; charset=UTF-8', 
		   success: function(resp) {
			   menuConfig();
		   }
	   });
   });
   
   /* 메뉴 숨기기 수정 */
   $(document).on('click', '.hidebtn', function(){
	   var menuVisible = $(this).data('menu-visible');
	   var menuNo = $(this).data('rno');
	   
	   if(menuVisible==0){
		   menuVisible=1;
	   } else {menuVisible=0;}
	   
	   var sendData = {"menuVisible" : menuVisible, "menuNo" : menuNo};

	   $.ajax({
		   method : 'post', 
		   url  : 'updateMenuVisible', 
		   data : JSON.stringify(sendData), 
		   dataType : 'text', 
		   contentType : 'application/json; charset=UTF-8', 
		   success: function(resp) {
			   menuConfig();
		   } 
	   });
	}); 
   
   /* 메뉴 추가 */
   $(document).on('click', '.menu-plus-button', function(){
	   $(this).css('display','none');
	   $('.menu-plus-box').css('display','block');
   }); 
   $(document).on('click', '.menu-plus-check', function(){
	   var menuPlusName = $(this).prev().val();
	   var sendData = {"menuName" : menuPlusName};

	   $.ajax({
		   method : 'post', 
		   url  : 'insertMenu', 
		   data : JSON.stringify(sendData), 
		   dataType : 'text', 
		   contentType : 'application/json; charset=UTF-8', 
		   success: function(resp) {
			   menuConfig();
		   } 
	   });
   });
   
   /* 메뉴 타이틀 수정 */
   $(document).on('click', '.editbtn', function(){
	   $(this).parent().css('display','none');
	   $(this).parent().prev().css('display','none');
	   $(this).parent().next().css('display','block');
   });
   $(document).on('click', '.checkbtn', function(){
	   var menuname = $(this).prev().val();
	   var menuno  = $(this).attr("data-rno");
	   var sendData = {"menuName" : menuname,  "menuNo" : menuno};
	   
	   $.ajax({
		   method : 'post', 
		   url  : 'editMenu', 
		   data : JSON.stringify(sendData), 
		   dataType : 'text', 
		   contentType : 'application/json; charset=UTF-8', 
		   success: function(resp) {
			   menuConfig();
		   } 
	   });
   });
   
   /*메뉴 클릭 이벤트*/
   $(document).on('click','.menu-block>li>div',function(){
	   var menuNo = $(this).attr('data-menu-no');
	   
	   $.ajax({
		   method : 'post',
		   url:'selectMenu',
		   data : "menuNo="+menuNo,
		   success:function(rep){
			   location.replace("config?menuNo="+menuNo);
		   }
	   });
   });

   /*소메뉴 클릭 메뉴*/
   $(document).on('click','.menu-block>li>ul>li>div',function(){
	   var menuNo = $(this).attr('data-menu-no');
	   
	   $.ajax({
		   method : 'post',
		   url:'selectMenu',
		   data : "menuNo="+menuNo,
		   success:function(rep){
			   location.replace("config?menuNo="+menuNo);
		   }
	   });
	});
   
   /* 블록 배경 색상 바꾸기*/
   $('.block-backgroundcolor').children('.color-picker').on('change',function(){
	   var blockBackgroundColor = $(this).val();
	   var blockseq = $(this).parents('section').attr('data-block-seq'); 
	   $('section[data-block-seq='+blockseq+']').css('background-color', blockBackgroundColor);
   });
   
   /* 버튼 색상 바꾸기*/
   $('.button-backgroundcolor').children('.color-picker').on('change',function(){
	   //alert("a")
	   var buttonBackgroundColor = $(this).val();
	   var blockseq = $(this).parents('section').attr('data-block-seq'); 
	   $('button').css('background-color', buttonBackgroundColor);
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
	   var blockSeq =$(this).attr('id');
	   var blockMenuNo = $('.menu-bar').attr("data-menu-no");
	   /*썸네일 클릭시 미리보기*/
	   $(document).on('click','.block-thumnail > li',function(){
		   $(document).off('click','.use-block-button');
		   $('.block-preview').css('display','block');
		   $('.block-preview').empty();
		   var blockWrapperCode = "";
		   var blockTmpNo = $(this).attr('data-block-no');
         
		   $.ajax({
			   method:'POST',
			   url:'getBlockContent',
			   async: false,
			   data : 'blockTmpNo='+blockTmpNo+'',
			   success:function(response){
				   $('.block-preview').append(useButton());
				   blockWrapperCode = decodeURIComponent(response).replace(/\+/g, " ");
				   $('.block-preview').append(blockWrapperCode);
				   var block={
						   "blockContent":blockWrapperCode+""
						   ,"blockTmpNo":blockTmpNo
						   ,"blockSeq":1
						   ,"blockMenuNo":blockMenuNo};
               /*사용하기 버튼 클릭 이벤트 */
				   $(document).on('click','.use-block-button',function(){
					   $.ajax({
						   method:'POST',
						   url:'setBlockContent',
						   data:JSON.stringify(block),
						   dataType:'json',
						   contentType:'application/json; charset:utf-8',
						   success:function(resp){
							   location.replace("config?menuNo="+blockMenuNo);
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
				   }); /*사용하기 버튼 클릭 이벤트 */
			   }
		   });
	   });
   }); /*블록 없을때 블록 추가 버튼 */
   
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
	   var blockMenuNo = $('.menu-bar').attr("data-menu-no");
      
	   $(document).on('click','.block-thumnail > li',function(){
		   $(document).off('click','.use-block-button');
		   $('.block-preview').css('display','block');
		   $('.block-preview').empty();
		   var blockWrapperCode = "";
		   var blockTmpNo= $(this).attr('data-block-no');
		   $.ajax({
			   method:'POST',
			   url:'getBlockContent',
			   async: false,
			   data : 'blockTmpNo='+blockTmpNo+'',
			   success:function(response){
				   $('.block-preview').append(useButton());
				   blockWrapperCode = decodeURIComponent(response).replace(/\+/g, " ");
				   $('.block-preview').append(blockWrapperCode);
				   var block={
						   "blockContent":blockWrapperCode+""
						   ,"blockTmpNo":blockTmpNo
						   ,"blockSeq":blockSeq
						   ,"blockMenuNo":blockMenuNo};
	               /*사용하기 버튼 클릭 이벤트 */
				   $(document).on('click','.use-block-button',function(){
					   $.ajax({
						   method:'POST',
						   url:'setBlockContent',
						   data:JSON.stringify(block),
						   dataType:'json',
						   contentType:'application/json; charset:utf-8',
						   success:function(resp){
							   location.replace("config?menuNo="+blockMenuNo);
						   },fail:function(){
							   alert('블록 추가 실패');
						   }
					   });
					   $('.intro-block-wrapper'). css('display','none');
					   $('.blockMenu-sidebar-div').animate({'margin-left':'-315px'},'slow');
					   $('#blockMenu-sidebar-close').css('left','-50px');
					   $('#mask').hide();
					   $('.block-preview').empty();
					   $(document).off('click','.use-block-button');
				   });
			   }
		   });
	   });
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
      $('.block-preview').css('display','none');
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
      $('.block-preview').css('display','none');
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
      var blockSeq = $(this).attr('id');
      /*여백 설정 변경*/
      $(".range-slider").slider({
  		range: "max",
  		min: 1,
  		max: 100,
  		value: 50,
  		slide: function(event, ui) {
  			$(this).prev().children('.slider-result').text(ui.value);
  			if($(this).prev().children('.slider-result').attr('id')=='padding-top'){
  				$('section[data-block-seq='+blockSeq+']').css('padding-top',ui.value+'px');
  			}else if ($(this).prev().children('.slider-result').attr('id')=='padding-bottom'){
  				$('section[data-block-seq='+blockSeq+']').css('padding-bottom',ui.value+'px');
  			}
  			var maskHeight = $('section[data-block-seq='+blockSeq+']').innerHeight();
  			$('#mask-2-'+blockSeq).css('height',maskHeight);
  			
  		}
  	});
   });
   /*셋팅 버튼 닫기*/
   $(document).on('click','#block-config-close',function(){
      $('.block-config').css('display','none');
      $('.mask2').css('display','none');
      var blockNo =$(this).parents('section').attr('data-blockNo');
      $(this).parents('section').css("border-style","");
      $(this).parents('section').css("border-color","");
      $(this).parents('section').css("border-width","");
      setBlockCss(blockNo);
   });
   
   $('.block-config').draggable();
   
   /*블록 삭제 이벤트*/
   $('.block-remove').on('click',function(){
      wrapByMask3();
      var blockSeq=$(this).attr('data-block-seq');
      var blockMenuNo = $('.menu-bar').attr("data-menu-no");
      $('.delete-confirm').css('display','block');
      $('.delete-confirm-ok').on('click',function(){
         $.ajax({
            url:'deleteBlock'
            ,method:'post'
            ,data:"blockSeq="+blockSeq
            ,success:function(resp){
               location.replace("config?menuNo="+blockMenuNo);
            }
         });
      });
   });
   /*블록 복제 이벤트*/
   $('.block-copy').on('click',function(){
      var blockSeq =$(this).attr('data-block-seq');
      var blockNo=$(this).attr('data-block-blockNo');
      var menuNo = $('.menu-bar').attr('data-menu-no');
      var block = {"blockSeq":blockSeq,"blockNo":blockNo};
      $.ajax({
         method:'post'
         ,url:'copyBlock'
         ,data:JSON.stringify(block)
         ,dataType:'json'
         ,contentType:'application/json; charset:utf-8'
         ,success:function(rep){
            location.replace("config?menuNo="+menuNo);
         },fail:function(){
            alert('블록 추가 실패');
         }
      })
   });
});


/*blockCss저장 함수*/
function setBlockCss(blockNo){
	var sendData = $('section[data-blockNo='+blockNo+']').attr('style');
	var blockCss = decodeURI(sendData);
	var block = {"blockCss" : blockCss , "blockNo":blockNo};
	var menuNo = $('.menu-bar').attr('data-menu-no');
	$.ajax({
		url:'setBlockCss'
		,method:'POST'
		,data: JSON.stringify(block)
		,contentType:'application/json; charset:utf-8'
		,dataType:'json'
		,success:function(rep){
			location.replace("config?menuNo="+menuNo);
		 }
	});
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
   $('#mask').css('z-index',49);
   $('#mask').fadeIn(500);
   $('#mask').fadeTo("slow",0.8);
}
/*삭제 컨펌 mask*/
function wrapByMask3(){
   $('#mask').css({'width':'100%','height':'100%'}).css('display','block').css('z-index',8500).css('top',0);
}

/*mask 2 함수*/
function wrapByMask2(blockSeq){
   var maskHeight= $('section[data-block-seq='+blockSeq+']').innerHeight();
   console.log(maskHeight);
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
      var data = 'tmpType=content';
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
/*첫화면 css */
function firstcss(){
   var headerHeight = $('#header').height();
   $('.blockMenu-sidebar-div').css({"top":0 + headerHeight});
   $('#mask').css('top',0+headerHeight);
   $('.use-block-button').css('display','none');
   $('.block-preview').css('display','none');
}


/**************/
/*메뉴 드래그앤드롭*/
/**************/
var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-36251023-1']);
_gaq.push(['_setDomainName', 'jqueryscript.net']);
_gaq.push(['_trackPageview']);
(function() {
   var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
 })();