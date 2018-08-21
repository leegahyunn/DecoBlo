<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
/**********/
/* common */
/**********/
* {
	margin: 0;
	padding: 0;
}

/************/
/* template */
/************/
div#template-no-1 {
	background-color: #482743;
}


/********/
/* menu */
/********/
div#menu-no-1 {
	background-color: #111111;
}

div#menu-no-2 {
	background-color: #999999;
}

/*********/
/* block */
/*********/

/* block-no-1 */
div#block-no-1 {
	background-color: #29F3E1;
}

/* block-no-2 */
div#block-no-2 {
	margin: 30px 0;
	background-color: #193844;
}

div#block-no-2 h1 {
	color: #FFFFFF;
}

div#block-no-2 ul{
	margin-left: 60px;
	color: #AA6789;
}
</style>
</head>
<body>

<div id="template-no-1" class="template-wrapper">
	<div id="menu-no-1" class="menu-wrapper">
		<div id="block-no-1" class="block">
			<h1>나는 1번 블록이야</h1>
		</div>
	</div>
	<div id="menu-no-2" class="menu-wrapper">
		<div id="block-no-2" class="block">
			<h1>나는 2번 블록이야</h1>
			<ul>
				<li>1번</li>
				<li>2번</li>
				<li>3번</li>
			</ul>
		</div>
	</div>
</div>


</body>
</html>