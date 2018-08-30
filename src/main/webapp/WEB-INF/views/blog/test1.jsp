<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DecoBlo - Config</title>

</head>
<body id="body-config">
<div id="nav-container">
<nav id="menu-config-nav">
      <!-- config-section -->
      <div class="menu-config-panel dd" id="nestable" >
          <ol class="dd-list"> 
             <li class="dd-item" data-id="1">
               <div class="default-config" >
                  <div class="outer-config aa-handle">
                  	<div class="dd-handle menu-1" style="display: inline-block; width: 80%;">
                  		<span>about</span> 
	                </div>
	                <div class="outer-config menuicon-1"  style="display: inline-block;">
	                   	<i class="fa fa-trash"></i>
						<i class="fa fa-pencil editBtn-1" ></i>
						<i class="fa fa-eye"></i>
	                </div>
					<div class="fold outer-config editBox-1" style="display:none;">
						<input type="text" value="title" style="width:200px;">
						<i class="right-icon fa fa-check checkBtn-1"></i>
					</div>
                  </div>
               </div>
            </li>
            <li class="dd-item" data-id="2">
               <div class="default-config">
                  <div class="outer-config aa-handle">
                  	<div class="dd-handle" style="display: inline-block; width: 80%;">
                  		<span>portfolio</span> 
	                </div>
	               <div class="outer-config menuicon-2"  style="display: inline-block;">
	                   	<i class="fa fa-trash"></i>
						<i class="fa fa-pencil editBtn-2" ></i>
						<i class="fa fa-eye"></i>
	                </div>
					<div class="fold outer-config editBox-2" style="display:none;">
						<input type="text" value="title" style="width:200px;">
						<i class="right-icon fa fa-check checkBtn-2"></i>
					</div>
                  </div>
               </div>
            </li>
            <li class="dd-item" data-id="3">
               <div class="default-config">
                  <div class="outer-config aa-handle">
                  	<div class="dd-handle" style="display: inline-block; width: 80%;">
                  		<span>contact us</span> 
	                </div>
	                <div class="outer-config menuicon-3"  style="display: inline-block;">
	                   	<i class="fa fa-trash"></i>
						<i class="fa fa-pencil editBtn-3" ></i>
						<i class="fa fa-eye"></i>
	                </div>
					<div class="fold outer-config editBox-3" style="display:none;">
						<input type="text" value="title" style="width:200px;">
						<i class="right-icon fa fa-check checkBtn-3"></i>
					</div>
                  </div>
               </div>
            </li>
         </ol>
         <div class="default-config" style="text-align: right; padding-right: 5px">
            <div class="outer-config menu-plus"  style="display: inline-block;">
            	<span style="font-size: 14px;">메뉴추가</span> 
	           	<i class="fa fa-plus"></i>
	        </div>
			<div class="fold outer-config menu-plus-box" style="display:none;">
				<input type="text" style="width:200px;">
				<i class="right-icon fa fa-check checkBtn-1"></i>
			</div>
         </div>
      </div>
      <!-- /config-section -->
   </nav>
	
	<nav id="site-config-nav" style="
    border-right-width: 0px;
    border-bottom-width: 0px;
    border-left-width: 0px;"
	>
	<form enctype="multipart/form-data">
		<div class="block-config-section site-config-panel"><!-- site-panel 클래스 추가 -->
			<div class="default-config">
				<div class="outer-config title"><!-- title 클래스 추가-->
					<span>타이틀</span> 
					<i class="fa right-icon fa-pencil titleBtn"></i><!-- 수정아이콘 titleBtn 클래스 추가 -->
				</div>
				<div class="fold outer-config titleEdit" style="display:none;"><!-- titleEdit 클래스 추가 -->
					<input type="text" value="title" style="width:200px;">
					<i class="right-icon fa fa-check checkBtn"></i><!-- 체크아이콘 checkBtn 클래스 추가 -->
				</div>
			</div>
			<div class="default-config">
				<div class="outer-config">
					<span>메타태그</span> 
					<i class="fa right-icon fa-pencil metaBtn"></i><!-- metaBtn 클래스 추가 -->
				</div>
			</div>
			<div class="default-config">
				<div class="outer-config">
					<span>원페이지 스타일</span> 
					<label class="switch right-icon">
  						<input type="checkbox" checked>
  						<span class="slider round"></span>
					</label>
				</div>
			</div>
			<div class="default-config">
				<div class="fold outer-config">
					<span>우클릭/드래그 방지</span> 
					<label class="switch right-icon">
  						<input type="checkbox" checked>
  						<span class="slider round"></span>
					</label>
				</div>
			</div>
			<div class="default-config">
				<div class="fold outer-config">
					<span>배경</span> 
					<i class="fa fa-chevron-right right-icon fold-icon"></i>
				</div>
				<div class="inner-config">
					<div class="config-row">
						<label>색상</label>
						<input type="color" class="color color-picker transparent">
						<button id="example3"></button>
					</div>
					<div class="config-row">
						<label>이미지</label>
						<input type="file" name = "upload" class="upload"/> 
						<i class="fa fa-folder-open"></i>
						
					</div>	
					<div class="config-row">
						<label>position</label>
						<select>
							<option>left top</option>
							<option>left center</option>
							<option>left bottom</option>
							<option>right top</option>
							<option>right center</option>
							<option>right bottom</option>
							<option>center top</option>
							<option>center center</option>
							<option>center bottom</option>
						</select>
					</div>	
					<div class="config-row">
						<label>repeat</label>
						<select>
							<option>repeat:x</option>
							<option>repeat:y</option>
							<option>no-repeat</option>
						</select>
					</div>	
					<div class="config-row">
						<label>size</label>
						<select>
							<option>original</option>
							<option>cover</option>
							<option>contain</option>
						</select>
					</div>	
				</div>
			</div>
			<div class="default-config">
				<div class="fold outer-config">
					<span>기본폰트</span> 
					<i class="fa fa-chevron-right right-icon fold-icon"></i>
				</div>
				<div class="inner-config">
					<div class="config-row">
						<label>색상</label>
						<input type="color" class="color color-picker transparent">
						<button id="example3"></button>
					</div>
					<div class="config-row">
						<label>폰트명</label>
						<select>
							<option>고딕</option>
							<option>돋움</option>
							<option>맑은고딕</option>
						</select>
					</div>	
				</div>
			</div>
			<div class="default-config">
				<div class="fold outer-config">
					<span>파비콘</span> 
					<i class="fa fa-chevron-right right-icon fold-icon"></i>
				</div>
				<div class="inner-config">
					<div class="config-row">
						<label>이미지</label>
						<input type="file" name = "upload" class="upload"/> 
						<i class="fa fa-folder-open"></i>
					</div>	
				</div>
			</div>
		</div>
		</form>
	</nav>
</div>

</body>
</html>