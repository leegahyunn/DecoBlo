<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Insert title here</title>
<style type="text/css">

/*block-101*/
.block-101{
    color: #333333;
    background-color: #d6e5c0;
}
.block-101 .container{
    width: 100%;
    height:500px;
    padding-right: 15px;
    padding-left: 15px;
    margin-right: 0;
}
.block-101 .container .left-text{
	top: 10%;
	height: 400px;
	min-width: 200px;
	float: left;
	padding-left: 100px;
	padding-right: 30px;
	padding-top:50px;
	text-align: right;
}
.block-101 .left-text #left-text-top{
	padding-left: 0;
	height: 200px;
	min-width:290px;
	font-size: 20pt;
	font-weight: 900;
}
.block-101 .left-text #left-text-bottom{
	font-size:11pt;
	height: 100px;
}

.block-101 .container .right-text{
	float:left;
    width: 700px;
    height: 400px;
    margin-top: 30px;
    margin-left: 50px;
}
.block-101 .right-text img{
	width: 100%;
	height: 100%;
	opacity: 0.9;
}

/*block-102*/
.block-102{
    color: #333333;
    background-color: #e5c0e5;
}
.block-102 .container{
	width: 100%;
	height: 400px;
	margin-left: 10%;
	margin-right:auto;
	padding-right: 15px;
}
.block-102 .text-box{
	margin-top:0;
	width: 20%;
	float: left;
	padding-right: 15px;
	margin-bottom: 20px;
}
.block-102 .text-box h1{
	font-size: 48pt;
	margin-bottom: 24px;
	margin-top: 0;
}
.block-102 .text-box h6{
	font-size: 20px;
}
.block-102 .text-box hr{
	width: 56px;
	margin: 12px auto 12px 0;
	border-top: 2px solid #000;
}
.block-102 .text-box p{
	font-size: 16px;
	font-family: 'Libre Baskerville', 'Nanum Gothic';
}

/*block-103*/
.block-103{
    color: #fff;
    background-color: #1f2630;
}
.block-103 .container{
	width: 100%;
	height: 400px;
	margin-left: 10%;
	margin-right:auto;
	padding-right: 15px;
}
.block-103 .left-img{
	float: left;
	width:40%;
	height: 350px;
	padding-top:15px;
	margin-right: 10px;
}
.block-103 .left-img img{
	height: 100%;
	width:100%;
}
.block-103 .right-text{
	float:left;
	width: 50%;
	height: 350px;
	margin-left: 20px;
}
.block-103 .right-text .right-text-date{
	font-size: 20px;
	min-width: 80px;
	max-width: 80px;
	display: inline-block;
}
.block-103 .right-text .right-text-text{
	font-size: 11px;
	width: 80%;
	display: inline-block;
}

/*block-104*/
.block-104{
	background-color: #738565;
}
.block-104 .container{
	width: 100%;
	height: 350px;
}

</style>
</head>
<body>

<section class="menu-wrapper">
	<section class="block-wrapper">
	
	<!-- 컨텐츠, block-101 -->
		<div class="block-101">
			<div class="container">
				<div class="left-text">
					<h2 class="editable" id="left-text-top" >
						Nice To Meet You<br>
						Welcome My Place<br>
						Simple Is Best<br>
						Show Me The Money
					</h2>
					<p class="editable" id="left-text-bottom">
						Be thankful for what you have; you'll end up<br/>
						having more. If you concentrate on what you<br/>
						don't have, you will never, ever have enough<br/>
						-Oprah Winfrey
					</p>
				</div>
				<div class="right-text">
					<img alt="표시할 수 없습니다." src="resources/images/backgroundimg1.png">
				</div>
			</div>
		</div>
		
	<!-- 텍스트, block-102 -->
		<div class="block-102">
			<div class="container">
				<div class="text-box">
					<h1 class="editable">01</h1>
					<h6 class="editable">Happy</h6>
					<hr>
					<p class="editable">
					Sometimes when you innovate, you make mistakes.
					It is best to admit them quickly, and get on with
					improving your other innovations.
					I'm as proud of what we don't do as I am of what we do.
					</p>
				</div>
				<div class="text-box">
					<h1 class="editable">02</h1>
					<h6 class="editable">Happy</h6>
					<hr>
					<p class="editable">
					I used to rule the world Seas would rise 
					when I gave the word Now in the morning I sleep alone
					Sweep the streets I used to own I used to roll the dice
					Feel the fear in my enemy's eyes Listen as the crowd would sing
					</p>
				</div>
				<div class="text-box">
					<h1 class="editable">03</h1>
					<h6 class="editable">Happy</h6>
					<hr>
					<p class="editable">
					He said, 'Son when you grow up,would you be the 
					savior of the broken, the beaten and the damned?'
					He said 'Will you defeat them,your demons, and all
					the non believers, the plans that they have made?'
					</p>
				</div>
				<div class="text-box">
					<h1 class="editable">04</h1>
					<h6 class="editable">Happy</h6>
					<hr>
					<p class="editable">
					This ain't a song for the broken-heartedNo silent
					prayer for the faith-departed I ain't gonna be just
					a face in the crowd You're gonna hear my voice
					When I shout it out loud
					</p>
				</div>
			</div>
		</div>
		
		<!-- 컨텐츠, block-103 -->
		<div class="block-103">
			<div class="container">
				<div class="left-img">
					<img alt="표시할 수 없습니다." src="resources/images/umbrella.png">
				</div>
				<div class="right-text">
					<h2 class="right-text-date">
						<span class="editable">2010</span>
					</h2>
					<p class="right-text-text">
						<span class="editable">
						This ain't a song for the broken-heartedNo silent
						prayer for the faith-departed I ain't gonna be just
						</span>
					</p>
					<h2 class="right-text-date">
						<span class="editable">2011</span>
					</h2>
					<p class="right-text-text">
						<span class="editable">
						This ain't a song for the broken-heartedNo silent
						prayer for the faith-departed I ain't gonna be just
						</span>
					</p>
					<h2 class="right-text-date">
						<span class="editable">2012</span>
					</h2>
					<p class="right-text-text">
						<span class="editable">
						He said, 'Son when you grow up,would you be the savior of the broken, the beaten and the damned?'
						</span>
					</p>
					<h2 class="right-text-date">
						<span class="editable">2017</span>
					</h2>
					<p class="right-text-text">
						<span class="editable">
						I used to rule the world Seas would rise when I gave the word Now in the morning I sleep alone Sweep 
						</span>
					</p>
					<h2 class="right-text-date">
						<span class="editable">2018</span>
					</h2>
					<p class="right-text-text">
						<span class="editable">
						Sometimes when you innovate, you make mistakes. It is best to admit them quickly, and get on with
						</span>
					</p>
				</div>
			</div>
		</div>
		
		<!-- 이미지,block-104 -->
		<div class="block-104">
			<div class="container">
				<div class=""></div>
			</div>
		</div>
	</section>
</section>
</body>
</html>