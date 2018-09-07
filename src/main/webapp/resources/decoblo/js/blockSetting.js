/*******************/
/*  메뉴 블럭 불러오기    */
/*******************/
menuConfig();
siteConfig();
function menuConfig() {
	   $.ajax({
	      method   : 'post'
	      , url    : 'menuConfig'
	      , contentType : 'application/json; charset=UTF-8'
	      , success: function(resp) {
	         var menuJson = JSON.parse(resp);
	         var result2 = '';
	         var result1 = '';
	         var result = '';
	         result2 += '<ol class="dd-list">';
	         $.each(menuJson, function(mainIndex, mainMenu){
	            $.each(mainMenu.Menu, function(subIndex, subMenu){
	               /* menu-bar */
	               if (subMenu.menuNo == 1) {
	                  if(subMenu.menuDepth==0){
	                     result += '</ul></li><li data-parent="'+ subMenu.menuParent+'"><a href="config?menuNo='+subMenu.menuParent+'&menuName='+subMenu.menuName+'">'+ subMenu.menuName +'</a><ul>';
	                     
	                  } else if(subMenu.menuDepth==1){
	                     result += '<li><a href="#">'+ subMenu.menuName +'</a></li>';
	                  }
	               } else {
	                  if(subMenu.menuDepth==0){
	                     result1 += '</ul></li><li data-parent="'+ subMenu.menuParent+'"><a href="config?menuNo='+subMenu.menuParent+'&menuName='+subMenu.menuName+'">'+ subMenu.menuName +'</a><ul>';
	                     
	                  } else if(subMenu.menuDepth==1){
	                     result1 += '<li><a href="#">'+ subMenu.menuName +'</a></li>';
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
	               result2 += '<i class="fa fa-trash deletebtn" data-rno="'+ subMenu.menuNo + '" data-parent="'+ subMenu.menuParent+'"></i>';
	               result2 += '<i class="fa fa-pencil editbtn" data-rno="'+ subMenu.menuNo + '" data-parent="'+ subMenu.menuParent+'"></i>';
	               
	               if(subMenu.menuVisible == 1){
	                  result2 += '<i style="color:#2ea8e5"class="fa fa-eye hidebtn" data-rno="'+ subMenu.menuNo + '" data-parent="'+ subMenu.menuParent+'"></i>';
	               } else {
	                  result2 += '<i class="fa fa-eye hidebtn" data-rno="'+ subMenu.menuNo + '" data-parent="'+ subMenu.menuParent+'"></i>';
	               }    
	               
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
	         result += '</ul></li>';
	         $('.main-menu-block').html(result);
	      } 
	   });
}
/* 사이트 설정 불러오기*/
function siteConfig() {
	$.ajax({
		method   : 'post'
		, url    : 'siteConfig'
		, contentType : 'application/json; charset=UTF-8'
		, success: function(resp) {
			$('title').text("DecoBlo - " + resp.blogTitle);
			$('.blogTitle').html(resp.blogTitle);
			$('.menu-config-flip').css('background-color', resp.configBackgroundColor)
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
		}
	});
}
function metaEdit() {
	var metaAuthor = $('.metaAuthor').val();
	var metaKeyword = $('.metaKeyword').val();
	var metaDescription = $('.metaDescription').val();
	var sendData = {"metaAuthor" : metaAuthor
					,"metaKeyword" : metaKeyword
					,"metaDescription" : metaDescription};
	
	$.ajax({
		method : 'post'
		, url  : 'metaEdit'
		, data : JSON.stringify(sendData)
		, dataType : 'text'
		, contentType : 'application/json; charset=UTF-8'
		, success: function(resp) {
			siteConfig();
		}
	});
}



$(function(){
	$(document).on('change', '.color-picker', function(){
		var configBackgroundColor = $(this).val()
		
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
	
	$(document).on('click', '.configOnepageStyle', function(){
		
		var configBackgroundColor = $(this).val()
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
	$(document).on('change', '.blogFont', function(){
		var configBasicFont = $(this).val()
		//alert(configBasicFont)
		
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
	
	/**********************/
	/* 메뉴블럭 마우스오버   */
	/**********************/
	$(document).on('mouseenter', '.menu-block li', function(){
		$('ul:first',this).show();
	});
	
	$(document).on('mouseleave', '.menu-block li', function(){
		$('ul:first',this).hide();
	});
	
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

	$(document).on('click', '.blog-title-edit', function(){
		$(this).parent().css('display','none');
		$(this).parent().prev().css('display','none');
		$(this).parent().next().css('display','block');
	});
	$(document).on('click', '.blog-title-check', function(){
		var blogTitle = $(this).prev().val();
		var sendData = {"blogTitle" : blogTitle};
		$.ajax({
			method : 'post'
			, url  : 'editBlogTitle'
			, data : JSON.stringify(sendData)
			, dataType : 'text'
			, contentType : 'application/json; charset=UTF-8'
			, success: function(resp) {
				//alert("꺄~!")
				//console.log($(this))
				$('.blog-title-editbox').css('display', 'none')
				$('.blog-title').css('display', 'block')
				siteConfig();
				
			}
		}); 
		
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
	
	/*메뉴 클릭 이벤트 */
	$(document).on('click','.menu-block>li',function(){
		alert("액티브 추가");
		$(this).addClass("active");
	})
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
		var blockMenuNo= $('.menu-block > li').attr('data-parent');
		alert("블록넘버 : " + blockMenuNo);
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
	$('.block-remove').on('click',function(){
		wrapByMask3();
		var blockSeq=$(this).attr('data-block-seq');
		$('.delete-confirm').css('display','block');
		$('.delete-confirm-ok').on('click',function(){
			$.ajax({
				url:'deleteBlock'
				,method:'post'
				,data:"blockSeq="+blockSeq
				,success:function(resp){
					location.replace("config");
				}
			});
		});
	});
	/*블록 복제 이벤트*/
	$('.block-copy').on('click',function(){
		var blockSeq =$(this).attr('data-block-seq');
		var blockNo=$(this).attr('data-block-blockNo');
		var block = {"blockSeq":blockSeq,"blockNo":blockNo};
		$.ajax({
			method:'post'
			,url:'copyBlock'
			,data:JSON.stringify(block)
			,dataType:'json'
			,contentType:'application/json; charset:utf-8'
			,success:function(rep){
				location.replace("config");
			},fail:function(){
				alert('블록 추가 실패');
			}
		})
	});
});

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
/*파일 업로드*/
function fileSubmit() {
    var formData = new FormData($("#fileForm")[0]);
    console.log($("#fileForm")[0]);
    $.ajax({
        type : 'post',
        url : 'fileUpload',
        data : formData,
        processData : false,
        contentType : false,
        success : function(html) {
            alert("파일 업로드하였습니다.");
        },
        error : function(error) {
            alert("파일 업로드에 실패하였습니다.");
            console.log(error);
            console.log(error.status);
        }
    });
}
/*첫화면 css */
function firstcss(){
	var headerHeight = $('#header').height();
	$('.blockMenu-sidebar-div').css({"top":0 + headerHeight});
	$('.use-block-button').css('display','none');
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
