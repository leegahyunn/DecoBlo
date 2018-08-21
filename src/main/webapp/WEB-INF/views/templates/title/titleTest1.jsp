<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="decoblo/js/jquery.nestable.js"></script>
<script src="http://pagead2.googlesyndication.com/pagead/show_ads.js"> </script>
<script src="resources/library/js/jquery-3.3.1.min.js"></script>
<script src="resources/library/js/jquery-ui.min.js"></script>
<script src="resources/library/js/wcolpick.js"></script>
<script src="resources/library/js/colpickRmx.js"></script>
<style type="text/css">
/*블럭 추가 버튼 ul*/
.add-button{
	position: absolute;
    margin-top:-17px;
    height: 35px;
    width:100%;
    color:#fff;
    font-family: 'Open Sans', 'Nanum Gothic';
    letter-spacing: 0.01em;
    font-size:13px;
    font-weight: 300;
    cursor:pointer;
    text-align:center;
    padding:0px;
    z-index:20;
    display:none;
}	
/*블럭 추가 버튼 li*/
.add-button-li{
	 width: 100%;
    /*background:transparent url(http://i.addblock.net/block_bg.gif) 0px 8px repeat-x;*/
    background:transparent;
    line-height: 30px;
    padding: 0px 10px;
    font-size: 13px;
    vertical-align: top;
}
/*블럭 추가 버튼 아이콘 div*/	
.add-block{
	width: 35px;
    height: 35px;
    margin: 0 auto;
    background-color: #4789E7;
    border: 1px solid #0073AC;
    font-weight: 700;
    -moz-border-radius: 50%;
    border-radius: 50%;
}
.userid { position: relative; padding: 40px 0px 20px; }
.userid h1 {
 font-family: 'Playfair Display', 'Nanum Gothic';
 font-weight: normal;
 letter-spacing: 0.025em;
 margin-top: 0;
 margin-bottom: 0;
}
.userid hr {
 width: 64px;
 border-top: 3px solid #2c2c2c;
 margin: 45px auto 0;
}

@media only screen and (max-width:991px) {
 .userid hr { margin-top: 36px; }
}
@media only screen and (max-width:767px) {
 .userid hr { margin-top: 22.5px; }
}
</style>
</head>
<body>
<section id="blog-wrapper">
	<!-- 블록 추가 버튼 top -->
	<ul class="add-button" id="add-button-top">
		<li class="add-button-li">
			<div class="add-block">
				<img alt='Plus' src='resources/images/blockSettingimg/fa_plus_icon.png'/>
			</div>
		</li>
	</ul>
	
	
	
	<!-- 블록이 쌓이는 section -->
	
	<section class="block" id="blockNo">
	<div class="userid">
		<div class="block-setting-cover">
			<div class="col-xs-12 col-sm-12 col-md-12 text-center">
    			<h1 data-edit="true" data-selector="h1">
    				<span class="fsize50">
    					<strong><em>Alexis Douvier</em></strong>
    				</span>
    			</h1>
    			<hr data-selector="hr" data-border="true" data-title="line color">
   			</div>
		</div>
		</div>
	</section>
	
	
	
	<!-- 블록 추가 버튼 bottom -->
	<ul class="add-button" id="add-button-bottom">
		<li class="add-button-li">
			<div class="add-block">
				<img alt='Plus' src='resources/images/blockSettingimg/fa_plus_icon.png'/>
			</div>
		</li>
	</ul>
</section>
</body>
</html>