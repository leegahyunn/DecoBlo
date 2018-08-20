<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>jQuery UI Slider - Range with fixed maximum</title>
<style>
	*{
		margin: 0;
		padding: 0;
	}
	div.header{
		width: 100%;
		background-color: #F00;
		height: 50px;
	}
	div.wrapper{
		width: 100%;
		background-color: #ABC;
		height: 100px;
		border: 1px solid black;
	}
	
	div.menu-button{
		width: 30px;
		height: 30px;
		background-color: #0A0;
		margin: 0 auto;
	}
	
	div.setting-menu-wrapper{
	}
</style>
</head>
<body>
 
 <div class="header">
 	Header
 </div>
 <div id="wrapper1" class="wrapper">
 	WRAPPER1
 	<div class="image-wrapper image-wrapper1">
 		<div class="menu-button top-button">+</div>
 	</div>
 	<div class="image-wrapper image-wrapper2">
 		<div class="menu-button botton-button">+</div>
 	</div>
 	<div class="setting-menu-wrapper image-wrapper3">
 		<div class="menu-button conner-button">*</div>
 	</div>
 </div>
 <div id="wrapper2" class="wrapper">
 	WRAPPER2
 </div>


<script src="resources/jquery-3.3.1.min.js"></script> 
<script>
	$(function(){
				
	});
</script>
</body>
</html>