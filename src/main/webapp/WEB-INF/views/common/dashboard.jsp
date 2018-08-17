<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta  charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

	
	.main{
		width:100%;
		height: 100%;
	}
	.head {
	    text-align: left;
		width: 100%;	
		background: yellow;	
		height: 46px;	
		
      }

    .topRight{
    	
        background-color: #ffffff;

        padding: 20px 0px 20px 20px;

        width: 100%;

		border-bottom:#666666 solid 2px;
      
    
    }
    .mul {
    list-style:none;
    margin:0;
    padding:0;
		}

	.mli {
    margin: 0 0 0 0;
    padding: 0 0 0 0;
    border : 0;
    float: left;
    font-size: 8px;
}

	.center1{
		text-align: left;
		width: 100%;
		height: 800px;
		
	
	
	}
		.center2{
		text-align: left;
		width: 55%;
		height: 270px;
		background: green;
		border-top: 1px solid black;
		margin: 20px auto;
	
	}
	
		.float {
	    text-align: left;
		width: 100%;
		background: yellow;	
		height: 72px;	
		
      }
      .statistics{
   	  text-align:center;
       height: 52px;
       border-bottom: 1px solid black;
       width: 65%;
       margin: 20px auto;
      }
	  .ili {
        float: left;
        border-left:1px solid black;
        border-right:1px solid black;
        border-top:1px solid black;
       	padding: 10px;
 		width: 125px;
 		text-align: left;
 		
      }	
      .lul {
  list-style-type: none;
  	 size: 100px;
}

     .aul {
  list-style-type: none;
  	 size: 90px;
}
.ali {
        float: left;
        border-left:1px solid black;
        border-right:1px solid black;
        border-top:1px solid black;
       	padding: 10px;
 		width: 125px;
 		text-align: center;
 		
      }	
	
 .ulstyle{
 	   text-align:center;
       height: 52px;
     
       width: 65%;
       margin: 20px auto;
 
 }
 
 .span1{
     font-size: 14px;
     font-weight:bold;
     color: green;
 }
 
 .span2{
     font-size: 10px;
    
     color: green;
 }
 .stg{
 	font-size: 20px;
 	font-weight: bold;
 	color: green;
 }
 
 .span3{
     font-size: 14px;
     font-weight:bold;
     
 }
 
 .span4{
     font-size: 10px;
   
 }
 .stg2{
 	font-size: 20px;
 	font-weight: bold;

 }
 .section{
 	 text-align:left;
       height: 27px;
       
       width: 65%;
       margin: 20px auto;
 
 }
 .menu{
 	text-align:left;
       height: 52px;
       
       width: 65%;
       margin: 20px auto;
 
 
 
 }
</style> 
<!-- Load D3.js -->
<script src="https://d3js.org/d3.v4.min.js"></script>

<!-- Load billboard.js with style -->
<script src="resources/jchart/billboard.js"></script>
<link rel="stylesheet" href="resources/jchart/billboard.css">

</head>
<body>
<div class="main">
<div class="head">DecoBlo
<div style="float:right;">
<ul class="mul">
<li class="mli">&nbsp;<a href="">블로그 홈</a>&nbsp;</li>
<li class="mli"><a href="">대시보드</a>&nbsp;</li>
<li class="mli"><a href="">한국어</a>&nbsp;&nbsp;</li>
<li class="mli"><a href="">고객센터</a></li>
</ul>
</div>
</div>
<div class="center1">
<div class="statistics">
<br />
일간 현황
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href=""></a>

<span>2018-08-14</span>
<a href="">달력</a>
<a href="">></a>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="button" value="일간">
<input type="button" value="주간">
<input type="button" value="월간">
</div>
<div class="ulstyle">
<ul class="lul">
<li  class="ili"><span class="span1">오늘 조회 수</span><br/><strong class="stg">0</strong><br/><span class="span2">실시간</span>&nbsp;<span class="span2">현재기준날짜</span></li>
<li  class="ili"><span class="span3">공감수</span><br/><strong class="stg2">0</strong><br/>&nbsp;<span class="span4">현재기준날짜</span></li>
<li  class="ili"><span class="span3" >댓글수</span><br/><strong class="stg2">0</strong><br/>&nbsp;<span class="span4">현재기준날짜</span></li>
<li  class="ili"><span class="span3" >이웃증감수</span><br/><strong class="stg2">0</strong><br/>&nbsp;<span class="span4">현재기준날짜</span></li>

</ul>

</div>
<div>
<div class="menu">
<br />
<br />
<ul class="aul">
	<li class="ali"><a href="">조회수</a></li>
    <li class="ali"><a href="">방문횟수</a></li>
	<li class="ali"><a href="">조회수 순위</a></li>
	<li class="ali"><a href="">유입경로</a></li>
</ul>
</div>

<div class="section">
	<br />
	<br />
	<span class="span3">2018-08-14 04:10 기준</span>
	<div id="chart">
</div>

</div>
</div>
</div>
<div class="center2">
 <h1>이웃관리</h1>

</div>
<div class="float">
<h1>마무리</h1>

</div>
</div>
</body>
<script type="text/javascript">
var chart = bb.generate({
    bindto: "#chart",
    data: {
        type: "bar",
        columns: [
            ["조회수", 30, 200, 100, 170, 150, 250]
            
        ]
    }
});

</script>
</html>