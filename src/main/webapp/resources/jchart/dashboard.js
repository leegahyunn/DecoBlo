
$.datepicker.regional['ko'] = {

	  closeText: '닫기',

	  prevText: '이전달',

	  nextText: '다음달',

	  currentText: '오늘',

	  monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],

	  monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],

	  dayNames: ['일','월','화','수','목','금','토'],

	  dayNamesShort: ['일','월','화','수','목','금','토'],

	  dayNamesMin: ['일','월','화','수','목','금','토'],

	  weekHeader: 'Wk',

	  dateFormat: 'yy-mm-dd',

	  firstDay: 0,

	  isRTL: false,

	  duration:200,

	  showAnim:'show',

	  showMonthAfterYear: true,

	  yearSuffix:'년'

 };

			 


$.datepicker.setDefaults($.datepicker.regional['ko']);
			
$.datepicker.setDefaults({
	dateFormat: 'yy-mm-dd',
    prevText: '이전 달',
    nextText: '다음 달',
    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
    showMonthAfterYear: true,
    yearSuffix: '년'
});
 
	 
	 
	 var currentYear = (new Date()).getFullYear();

	   var startYear = currentYear-10;

	   

	

	   
		function printTime() {

            var clock = document.getElementById("clock");
            var clock2 = document.getElementById("clock2");

            var now = new Date();                                                  // 현재시간

            var nowTime = now.getFullYear() + "년" + (now.getMonth()+1) + "월" + now.getDate() + "일" + now.getHours() + "시" + now.getMinutes() + "분";

            clock.innerHTML = nowTime;           // 현재시간을 출력
            clock2.innerHTML = nowTime; 
            
            setTimeout("printTime()",1000);         // setTimeout(“실행할함수”,시간) 시간은1초의 경우 1000

		}
		
		
	// 일간 클릭시 실행
$('#dd').on('click', function() {
	printTime();
	tablereset();
	$("#timer").html(cal);
	$(".box").html(div2);
	$("#panel-1").html(chart2);
	$("#panel-2").html(chart3);
	$("#panel-3").html(chart4);
	$("#panel-4").html(chart5);
	$("#panel-5").html(chart6);
	$("#pmydate").html(mydate);
	ddate();
	Chartdate();
	ChartBBsdate();
	Chartreplydate();
	Chartsubdate();
	ChartLikedate();
	
	$("#mydate").datepicker({ onSelect: function(dateText) {  
		var send = dateText;
		var senddate = {'statRegDate':send}
		
		 $.ajax({
			method : 'POST'
			, url  : 'selectday'
			, data : JSON.stringify(senddate)
			, dataType : 'json'
			, contentType : 'application/json; charset:utf-8' 
			, success : function(resp){
				var succ = '<p align="center">조회수</p>';
				succ += '<h3 align="center">'+resp.statBlogCount+'</h3>';
				$('.one').html(succ);
				
				var succ2 = '<p align="center">공감수예정</p>';
				succ2 += '<h3 align="center">'+resp.statBbsCount+'</h3>';
				$('.two').html(succ2);
				
				var succ3 = '<p align="center">댓글수</p>';
				succ3 += '<h3 align="center">'+resp.statReplyCount+'</h3>';
				$('.three').html(succ3);
				
				var sub = '${stat.statSubscribe}'-resp.statSubscribe;
				
				var succ4 = '<p align="center">구독 중감수</p>';
				succ4 += '<h3 align="center">'+sub+'</h3>';
				$('.four').html(succ4);
			}
		});
	}});
});
    // 월간 클릭시 실행
			$('#mm').on('click', function() {
				tablereset();
				mdate();
				$("#timer").html(cal3);
				$(".box").html(div3);
				$("#panel-1").html(chart2);
				$("#panel-2").html(chart3);
				$("#panel-3").html(chart4);
				$("#panel-4").html(chart5);
				$("#panel-5").html(chart6);
				MChartdate();
	            MChartBBsdate();
	            MChartreplydate();
	            MChartsubdate();
	            MChartLikedate();
				var datepicker_default = {
			            
			            prevText : "이전달",
			            nextText : "다음달",
			            changeMonth: true,
			            changeYear: true,
			            monthNames : [ "1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월" ],
			            monthNamesShort : [ "1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월" ],
			            isRTL : false,
			            showMonthAfterYear : true,
			            viewMode: "months", 
			            minViewMode: "months"
			            
			        }
					
			        datepicker_default.closeText = "선택";
			        datepicker_default.dateFormat = "yy-mm";
			        datepicker_default.onClose = function (dateText, inst) {
			            var month = $("#ui-datepicker-div .ui-datepicker-month :selected").val();
			            var year = $("#ui-datepicker-div .ui-datepicker-year :selected").val();
			            $(this).datepicker( "option", "defaultDate", new Date(year, month, 1) );
			            $(this).datepicker('setDate', new Date(year, month, 1));
			        }
			       datepicker_default.beforeShow = function () {
			            var selectDate = $("#sdate").val().split("-");
           			            var year = Number(selectDate[0]);
			            var month = Number(selectDate[1]) - 1;
			            alert(month);
			            $(this).datepicker( "option", "defaultDate", new Date(year, month, 1) );
			            $(this).datepicker({
			                viewMode: 'months',
			                format: 'yyyy-mm'
			           });
			            console.log( $("#sdate").val()); 
			           	alert($("#sdate").val());
			        }
			        $("#pmydate").html(mydate3);
			$("#sdate").datepicker(datepicker_default);
			
			});
	// 주간 클릭시 실행
			$('#week').on('click', function() {
				
				tablereset();
				wdate();
				$("#timer").html(cal2);
				$(".box").html(div4);
				$("#panel-1").html(chart2);
				$("#panel-2").html(chart3);
				$("#panel-3").html(chart4);
				$("#panel-4").html(chart5);
				$("#panel-5").html(chart6);
				$("#pmydate").html(mydate2);
				 WChartsubdate();
				 WChartdate();
		         WChartBBsdate();
		         WChartreplydate();
		         WChartlikedate(); 
				//주 간 달 력
				 $('#week-picker').datepicker( {
				        showOtherMonths: true,
				        selectOtherMonths: true,
						selectWeek:true,
				        onSelect: function(dateText, inst) { 
				            var date = $(this).datepicker('getDate');
				            startDate = new Date(date.getFullYear(), date.getMonth(), date.getDate() - date.getDay() );
				            endDate = new Date(date.getFullYear(), date.getMonth(), date.getDate() - date.getDay() + 6);
							var dateFormat = 'yy/mm/dd'
				            startDate = $.datepicker.formatDate( dateFormat, startDate, inst.settings );
				            endDate = $.datepicker.formatDate( dateFormat, endDate, inst.settings );

							$('#week-picker').val(startDate + '~' + endDate);
				            setTimeout("applyWeeklyHighlight()", 100);
				            var send = startDate+'~'+endDate;
				            var senddate = {'statRegDate':send};
				            alert(JSON.stringify(senddate));
				            $.ajax({
						    	method : 'POST'
								, url  : 'selectweek'
								, data : JSON.stringify(senddate)
								, dataType : 'json'
								, contentType : 'application/json; charset:utf-8' 
								, success : function(resp){
									var succ = '<p align="center">조회수</p>'
										succ += '<h3 align="center">'+resp.statBlogCount+'</h3>';
									$(".one").html(succ);
									var succ2 = '<p align="center">공감수예정</p>'
										succ2 += '<h3 align="center">'+resp.statBbsCount+'</h3>';
									$(".two").html(succ2);
									var succ3 = '<p align="center">댓글수</p>'
										succ3 += '<h3 align="center">'+resp.statReplyCount+'</h3>';
									$(".three").html(succ3);
									var sub = '${stat.statSubscribe}'-resp.statSubscribe
									var succ4 = '<p align="center">구독 중감수</p>'
										succ4 += '<h3 align="center">'+sub+'</h3>';
									$(".four").html(succ4);
									
								}
				            })
				        },
						beforeShow : function() {
							setTimeout("applyWeeklyHighlight()", 100);
						}
				    });
			});
			// 캘 린 더 클 릭 시 보 이 고 숨 기 기
			 $('.calendar').on('click',function(){
				 if($("#pmydate").css("display") == "none"){   
					 $("#pmydate").show(); 
				    } else {  
				    	$("#pmydate").hide();
				    }  
			});
			
			 var mydate =  '<div id="mydate" style=" width: 250px; height:  340px; margin: 0 auto;">';  
				 mydate += '<hr/>';
				 mydate += '</div>';	
				
				 var mydate2 =  '<input type="text" id ="week-picker">';
				 var mydate3 =  '<input type="text" id ="sdate">';
				
				
		
			
			
		var div2 = '<div class="one">';
		div2 +=	'<p align="center">오늘 조회수</p>';
		div2 +=	'<h3 align="center">${stat.statBlogCount}</h3>'
		div2 +=	'</div>'
		div2 += '<div class="two">'
		div2 +=	'<p align="center">공감수</p>'
		div2 +=	'<h3 align="center">${stat.statBlogCount}</h3>'
		div2 +=	'</div>'
	    div2 +=	'<div class="three">'
	    div2 +=	'<p align="center">댓글수</p>'
	    div2 +=	'<h3 align="center">${stat.statReplyCount}</h3>'
	    div2 +=	'</div>'
	    div2 +=	'<div class="four">'
	    div2 +=	'<p align="center">구독 증감수</p>'
	    div2 +=	'<h3 align="center">${stat.statSubscribe}</h3>'
	    div2 +=	'</div>'
	   
	    var cal="${stat.statRegDate}"
	    
	    var cal2= "${wwdate}&nbsp;~&nbsp;${stat.statRegDate}"
	    
	    var cal3= "${mmdate}"
	    	
	    
	    var div3 = '<div class="one">';
		div3 +=	'<p align="center">이번 달 조회수</p>';
		div3 +=	'<h3 align="center">${mstat.statBlogCount}</h3>'
		div3 +=	'</div>'
		div3 += '<div class="two">'
		div3 +=	'<p align="center">공감수</p>'
		div3 +=	'<h3 align="center">${mstat.statBlogCount}</h3>'
		div3 +=	'</div>'
	    div3 +=	'<div class="three">'
	    div3 +=	'<p align="center">댓글수</p>'
	    div3 +=	'<h3 align="center">${mstat.statReplyCount}</h3>'
	    div3 +=	'</div>'
	    div3 +=	'<div class="four">'
	    div3 +=	'<p align="center">구독 증감수</p>'
	    div3 +=	'<h3 align="center">${mstat.statSubscribe}</h3>'
	    div3 +=	'</div>'
	    
	    
	    	var div4 = '<div class="one">';
		div4 +=	'<p align="center">이번 달 조회수</p>';
		div4 +=	'<h3 align="center">${wstat.statBlogCount}</h3>'
		div4 +=	'</div>'
		div4 += '<div class="two">'
		div4 +=	'<p align="center">공감수</p>'
		div4 +=	'<h3 align="center">${wstat.statBlogCount}</h3>'
		div4 +=	'</div>'
	    div4 +=	'<div class="three">'
	    div4 +=	'<p align="center">댓글수</p>'
	    div4 +=	'<h3 align="center">${wstat.statReplyCount}</h3>'
	    div4 +=	'</div>'
	    div4 +=	'<div class="four">'
	    div4 +=	'<p align="center">구독 증감수</p>'
	    div4 +=	'<h3 align="center">${wstat.statSubscribe}</h3>'
	    div4 +=	'</div>'
	    
	    var chart2 =  '<main>'
			chart2 += '<p align="left" id="clock">기준</p>'
			chart2 += '<canvas id="chart1"></canvas>'
			chart2 += '</main>'
			
		 var chart3 =  '<main>'
			 chart3 += '<p align="left" id="clock">기준</p>'
			 chart3 += '<canvas id="chart2"></canvas>'
			 chart3 += '</main>'	
			 
		 var chart4 =  '<main>'
			 chart4 += '<p align="left" id="clock">기준</p>'
			 chart4 += '<canvas id="chart3"></canvas>'
			 chart4 += '</main>'	 
		
		 var chart5 =  '<main>'
			 chart5 += '<p align="left" id="clock">기준</p>'
			 chart5 += '<canvas id="chart4"></canvas>'
			 chart5 += '</main>'
			 
		 var chart6 =  '<main>'
			 chart6 += '<p align="left" id="clock">기준</p>'
			 chart6 += '<canvas id="chart5"></canvas>'
			 chart6 += '</main>'
					 
					 
				  var currentYear = (new Date()).getFullYear();

		    var startYear = currentYear-10;

		    
		   
		    window.onload = function() {                         // 페이지가 로딩되면 실행
				
	            printTime();
	         	
	            $("#pmydate").hide();
	            $('#mydate').datepicker({
			        altField : '#getdate'
			        
			    });
	            ddate();
	            Chartdate();
	            ChartBBsdate();
	            Chartreplydate();
	            Chartsubdate();
	            ChartLikedate();
			    }
		    
	   
		    function applyWeeklyHighlight() {

		    	$('.ui-datepicker-calendar tr').each(function() {

		    		if ($(this).parent().get(0).tagName == 'TBODY') {
		    			$(this).mouseover(function() {
		    				$(this).find('a').css({
		    					'background' : '#ffffcc',
		    					'border' : '1px solid #dddddd'
		    				});
		    				$(this).find('a').removeClass('ui-state-default');
		    				$(this).css('background', '#ffffcc');
		    			});
		    			
		    			$(this).mouseout(function() {
		    				$(this).css('background', '#ffffff');
		    				$(this).find('a').css('background', '');
		    				$(this).find('a').addClass('ui-state-default');
		    			});
		    		}

		    	});
		    }
		    
		    var startDate;
		    var endDate;
		    
		    
		    var send = $('.getdate').val();
		    var senddate = {"slday":send}
		    
		   
		    
		    
		    
		    
		    
		    
		    $("#mydate").datepicker({ onSelect: function(dateText) {  
				var send = dateText;
		    	var senddate = {'statRegDate':send}
		    	$.ajax({
				    	method : 'POST'
						, url  : 'selectday'
						, data : JSON.stringify(senddate)
						, dataType : 'json'
						, contentType : 'application/json; charset:utf-8' 
						, success : function(resp){
							var succ = '<p align="center">조회수</p>'
								succ += '<h3 align="center">'+resp.statBlogCount+'</h3>';
							$(".one").html(succ);
							var succ2 = '<p align="center">공감수예정</p>'
								succ2 += '<h3 align="center">'+resp.statBbsCount+'</h3>';
							$(".two").html(succ2);
							var succ3 = '<p align="center">댓글수</p>'
								succ3 += '<h3 align="center">'+resp.statReplyCount+'</h3>';
							$(".three").html(succ3);
							var sub2 = resp.statSubscribe;
							alert(sub2);
							$.ajax({
								method : 'POST'
									, url  : 'beforeselectday'
									, data : JSON.stringify(senddate)
									, dataType : 'json'
									, contentType : 'application/json; charset:utf-8' 
									, success : function(beresp){
										
									var sub3 = beresp.statSubscribe;
									alert(sub3)
									var sub = sub2 - sub3;
									
									var succ4 = '<p align="center">구독 중감수</p>'
									
									succ4 += '<h3 align="center">'+sub+'</h3>';
									
									$(".four").html(succ4)
								
									}
							})
							
						}
						
					});
		    	  }
		    	});
			// 일간 데이터 출력
		    function ddate() {
				$.ajax({
					method : 'GET'
				 , url  : 'selectchart'
				 , dataType : 'json'
				 , success : function(data) {
					var c = data.length;
				
					 
						 
					$.each(data, function(i, arrjson) {
						var a = data[i].statRegDate;
						var res = a.substring(0, 10)
						
						$('<tr>').html("<td>" + res+ "</td>"+
							 "<td >" +  data[i].statBlogCount+ "</td>"+
							  "<td >" +  data[i].statBbsCount+ "</td>"+
							 "<td >" +  data[i].statSubscribe + "</td>").appendTo('.datein');
							
				
					})
				 }
				})
			}
			// 주간 데이터 출력
		    function wdate() {
				$.ajax({
					method : 'GET'
					, url  : 'selectchart2'
					, dataType : 'json'
					, success : function(data) {
					
						 
						$.each(data, function(i, arrjson) {
							var a = data[i].statRegDate;
							var res = a.substring(0, 10)
							
							var formattedDate = new Date(a); 
							var d = formattedDate.getDate(); d += 6;
							var m = formattedDate.getMonth();
							var ma = ("0" + (m + 1)).slice(-2);
							
							var y = formattedDate.getFullYear(); 
							var ers = y + "-" + ma + "-" + d;
	
							$('<tr>').html("<td>" +res+ "&nbsp "+'~'+ "&nbsp "+ers+ "</td>"+
								 "<td >" +  data[i].statBlogCount+ "</td>"+
								  "<td >" +  data[i].statBbsCount+ "</td>"+
								 "<td >" +  data[i].statSubscribe + "</td>").appendTo('.datein');
						
								 }
								
							)
						
					 }
				
				})
			}
		
			
		    //월 간 데이터 출력
		    function mdate() {
				$.ajax({
					method : 'GET'
				 , url  : 'selectchart3'
				 , dataType : 'json'
				 , success : function(data) {
					
						 
					$.each(data, function(i, arrjson) {
						var a = data[i].statRegDate;
						var res = a.substring(0, 7)
					

						$('<tr>').html("<td>" +res+ "</td>"+
							 "<td >" +  data[i].statBlogCount+ "</td>"+
							  "<td >" +  data[i].statBbsCount+ "</td>"+
							 "<td >" +  data[i].statSubscribe + "</td>").appendTo('.datein');
					
							 }
							
						)
					
				 }
				
					})
				}
		    
		    
		   // 테이블 리셋
		    function tablereset() {
		       $( '.mytable > tbody').empty();
		        }
			
		   
		   	// 일간 블로그 조회수 차트 
		   	function Chartdate() {
		   		var data2 = new Array();
				var labal = new Array(); 
				var dchart = $("#chart1")[0].getContext('2d');	 
				var chart = null;
				
				$.ajax({
					method : 'GET'
					 , url  : 'selectchart'
					 , dataType : 'json'
					 , success : function(data) {
						var c = data.length;
						
						$.each(data, function(i, arrjson) {
							var a = data[i].statRegDate;
							var res = a.substring(0, 10)
							labal.push(res);
							data2.push(data[i].statBlogCount)
							
						})
						
					 }
				});
				
				
				setTimeout(function(){
					chart = new Chart(dchart, {
						type: 'line',
					    data: {
	
					        labels: labal,
	
					        datasets: [{
	
					            label: "블로그조회수",
					            fillColor: "rgba(220,220,220,0.2)",
					            strokeColor: "rgba(220,220,220,1)",
					            pointColor: "rgba(220,220,220,1)",
					            pointStrokeColor: "#fff",
					            pointHighlightFill: "#fff",
					            pointHighlightStroke: "rgba(220,220,220,1)",
					            data: data2
					         
							
							 }]
	
					    },
					    options: {
					    	 responsive: true,
					    	    
					    	    scales: { yAxes: [{ ticks: { beginAtZero:true } }] }  
					    	
					    	
					    }
					});
					
					chart.render();
		   	}, 1000);
			}
		   	
		 // 일간 게시글 조회수 차트 
		   	function ChartBBsdate() {
		   		var data2 = new Array();
				var labal = new Array(); 
				var dchart = $("#chart2")[0].getContext('2d');	 
				var chart = null
				$.ajax({
					method : 'GET'
				 , url  : 'selectchart'
				 , dataType : 'json'
				 , success : function(data) {
					var c = data.length;
					
					$.each(data, function(i, arrjson) {
						var a = data[i].statRegDate;
						var res = a.substring(0, 10)
						labal.push(res);
						data2.push(data[i].statBbsCount)
						
					})
					
				 }
				})
				setTimeout(function(){
				chart = new Chart(dchart, {
					type: 'line',
				    data: {

				        labels: labal,

				        datasets: [{

				            label: "블로그조회수",
				            fillColor: "rgba(220,220,220,0.2)",
				            strokeColor: "rgba(220,220,220,1)",
				            pointColor: "rgba(220,220,220,1)",
				            pointStrokeColor: "#fff",
				            pointHighlightFill: "#fff",
				            pointHighlightStroke: "rgba(220,220,220,1)",
				            data: data2
				         
						
						 }]

				    },
				    options: {
				    	 responsive: true,
				    	    
				    	    scales: { yAxes: [{ ticks: { beginAtZero:true } }] }  
				    	
				    	
				    }
				});
				chart.render();
			   	}, 1000);
			}
		 
		    // 일간 댓글 조회수 차트 
		   	function Chartreplydate() {
		   		var data2 = new Array();
				var labal = new Array(); 
				var dchart = $("#chart3")[0].getContext('2d');	 
				var chart = null;
				$.ajax({
					method : 'GET'
				 , url  : 'selectchart'
				 , dataType : 'json'
				 , success : function(data) {
					var c = data.length;
					
					$.each(data, function(i, arrjson) {
						var a = data[i].statRegDate;
						var res = a.substring(0, 10)
						labal.push(res);
						data2.push(data[i].statReplyCount)
						
					})
					
				 }
				})
				setTimeout(function(){
				chart = new Chart(dchart, {
					type: 'line',
				    data: {

				        labels: labal,

				        datasets: [{

				            label: "댓글조회수",
				            fillColor: "rgba(220,220,220,0.2)",
				            strokeColor: "rgba(220,220,220,1)",
				            pointColor: "rgba(220,220,220,1)",
				            pointStrokeColor: "#fff",
				            pointHighlightFill: "#fff",
				            pointHighlightStroke: "rgba(220,220,220,1)",
				            data: data2
				         
						
						 }]

				    },
				    options: {
				    	 responsive: true,
				    	    
				    	    scales: { yAxes: [{ ticks: { beginAtZero:true } }] }  
				    	
				    	
				    }
				});
				chart.render();
		   	}, 1000);
			}
		    // 일간 댓글 조회수 차트 
		   	function Chartsubdate() {
		   		var data2 = new Array();
				var labal = new Array(); 
				var chart = null;
				var dchart = $("#chart4")[0].getContext('2d');	 
				$.ajax({
					method : 'GET'
				 , url  : 'selectchart'
				 , dataType : 'json'
				 , success : function(data) {
					var c = data.length;
					
					$.each(data, function(i, arrjson) {
						var a = data[i].statRegDate;
						var res = a.substring(0, 10)
						labal.push(res);
						data2.push(data[i].statSubscribe)
						
					})
					
				 }
				})
				setTimeout(function(){
				chart = new Chart(dchart, {
					type: 'line',
				    data: {

				        labels: labal,

				        datasets: [{

				            label: "구독자",
				            fillColor: "rgba(220,220,220,0.2)",
				            strokeColor: "rgba(220,220,220,1)",
				            pointColor: "rgba(220,220,220,1)",
				            pointStrokeColor: "#fff",
				            pointHighlightFill: "#fff",
				            pointHighlightStroke: "rgba(220,220,220,1)",
				            data: data2
				         
						
						 }]

				    },
				    options: {
				    	 responsive: true,
				    	    
				    	    scales: { yAxes: [{ ticks: { beginAtZero:true } }] }  
				    	
				    	
				    }
				});
				chart.render();
			   	}, 1000);
			}
		    
		 // 일간 공감수 조회수 차트 
		   	function ChartLikedate() {
		   		var data2 = new Array();
				var labal = new Array(); 
				var chart = null;
				var dchart = $("#chart5")[0].getContext('2d');	 
				$.ajax({
					method : 'GET'
				 , url  : 'selectchart'
				 , dataType : 'json'
				 , success : function(data) {
					var c = data.length;
					
					$.each(data, function(i, arrjson) {
						var a = data[i].statRegDate;
						var res = a.substring(0, 10)
						labal.push(res);
						data2.push(data[i].statBBSLike)
						
					})
					
				 }
				})
				setTimeout(function(){
				chart = new Chart(dchart, {
					type: 'line',
				    data: {

				        labels: labal,

				        datasets: [{

				            label: "총 공감수",
				            fillColor: "rgba(220,220,220,0.2)",
				            strokeColor: "rgba(220,220,220,1)",
				            pointColor: "rgba(220,220,220,1)",
				            pointStrokeColor: "#fff",
				            pointHighlightFill: "#fff",
				            pointHighlightStroke: "rgba(220,220,220,1)",
				            data: data2
				         
						
						 }]

				    },
				    options: {
				    	 responsive: true,
				    	    
				    	    scales: { yAxes: [{ ticks: { beginAtZero:true } }] }  
				    	
				    	
				    }
				});
				chart.render();
			   	}, 1000);
			}
		
		    
		    // 주간 댓글 조회수 차트 
		   	function WChartsubdate() {
		   		var data2 = new Array();
				var labal = new Array(); 
				var chart = null;
				var dchart = $("#chart4")[0].getContext('2d');	 
				$.ajax({
					method : 'GET'
				 , url  : 'selectchart2'
				 , dataType : 'json'
				 , success : function(data) {
					var c = data.length;
					
					$.each(data, function(i, arrjson) {
						var a = data[i].statRegDate;
						var res = a.substring(0, 10)
						labal.push(res);
						data2.push(data[i].statSubscribe)
						
					})
					
				 }
				})
				setTimeout(function(){
				chart = new Chart(dchart, {
					type: 'line',
				    data: {

				        labels: labal,

				        datasets: [{

				            label: "주간구독자",
				            fillColor: "rgba(220,220,220,0.2)",
				            strokeColor: "rgba(220,220,220,1)",
				            pointColor: "rgba(220,220,220,1)",
				            pointStrokeColor: "#fff",
				            pointHighlightFill: "#fff",
				            pointHighlightStroke: "rgba(220,220,220,1)",
				            data: data2
				         
						
						 }]

				    },
				    options: {
				    	 responsive: true,
				    	    
				    	    scales: { yAxes: [{ ticks: { beginAtZero:true } }] }  
				    	
				    	
				    }
				});
				chart.render();
		   	}, 1000);
			}
		 	// 주간 블로그 조회수 차트 
		   	function WChartdate() {
		 		var chart = null;
		   		var data2 = new Array();
				var labal = new Array(); 
				var dchart = $("#chart1")[0].getContext('2d');	 
				$.ajax({
					method : 'GET'
				 , url  : 'selectchart2'
				 , dataType : 'json'
				 , success : function(data) {
					var c = data.length;
					
					$.each(data, function(i, arrjson) {
						var a = data[i].statRegDate;
						var res = a.substring(0, 10)
						labal.push(res);
						data2.push(data[i].statBlogCount)
						
					})
					
				 }
				})
				setTimeout(function(){
			chart =	new Chart(dchart, {
					type: 'line',
				    data: {

				        labels: labal,

				        datasets: [{

				            label: "주간블로그조회수",
				            fillColor: "rgba(220,220,220,0.2)",
				            strokeColor: "rgba(220,220,220,1)",
				            pointColor: "rgba(220,220,220,1)",
				            pointStrokeColor: "#fff",
				            pointHighlightFill: "#fff",
				            pointHighlightStroke: "rgba(220,220,220,1)",
				            data: data2
				         
						
						 }]

				    },
				    options: {
				    	 responsive: true,
				    	    
				    	    scales: { yAxes: [{ ticks: { beginAtZero:true } }] }  
				    	
				    	
				    }
				});
			chart.render();
			   	}, 1000);
			}
		   	
		 // 주간 게시글 조회수 차트 
		   	function WChartBBsdate() {
			 	var chart = null;
		   		var data2 = new Array();
				var labal = new Array(); 
				var dchart = $("#chart2")[0].getContext('2d');	 
				$.ajax({
					method : 'GET'
				 , url  : 'selectchart2'
				 , dataType : 'json'
				 , success : function(data) {
					var c = data.length;
					
					$.each(data, function(i, arrjson) {
						var a = data[i].statRegDate;
						var res = a.substring(0, 10)
						labal.push(res);
						data2.push(data[i].statBbsCount)
						
					})
					
				 }
				})
				setTimeout(function(){
				chart = new Chart(dchart, {
					type: 'line',
				    data: {

				        labels: labal,

				        datasets: [{

				            label: "주간블로그조회수",
				            fillColor: "rgba(220,220,220,0.2)",
				            strokeColor: "rgba(220,220,220,1)",
				            pointColor: "rgba(220,220,220,1)",
				            pointStrokeColor: "#fff",
				            pointHighlightFill: "#fff",
				            pointHighlightStroke: "rgba(220,220,220,1)",
				            data: data2
				         
						
						 }]

				    },
				    options: {
				    	 responsive: true,
				    	    
				    	    scales: { yAxes: [{ ticks: { beginAtZero:true } }] }  
				    	
				    	
				    }
				});
				chart.render();
		   	}, 1000);
			}
		 // 주간 공감 조회수 차트 
		   	function WChartlikedate() {
		   		var data2 = new Array();
				var labal = new Array(); 
				var chart = null;
				var dchart = $("#chart5")[0].getContext('2d');	 
				$.ajax({
					method : 'GET'
				 , url  : 'selectchart2'
				 , dataType : 'json'
				 , success : function(data) {
					var c = data.length;
					
					$.each(data, function(i, arrjson) {
						var a = data[i].statRegDate;
						var res = a.substring(0, 10)
						labal.push(res);
						data2.push(data[i].statBBSLike)
						
					})
					
				 }
				})
				setTimeout(function(){
				chart = new Chart(dchart, {
					type: 'line',
				    data: {

				        labels: labal,

				        datasets: [{

				            label: "주간공감수",
				            fillColor: "rgba(220,220,220,0.2)",
				            strokeColor: "rgba(220,220,220,1)",
				            pointColor: "rgba(220,220,220,1)",
				            pointStrokeColor: "#fff",
				            pointHighlightFill: "#fff",
				            pointHighlightStroke: "rgba(220,220,220,1)",
				            data: data2
				         
						
						 }]

				    },
				    options: {
				    	 responsive: true,
				    	    
				    	    scales: { yAxes: [{ ticks: { beginAtZero:true } }] }  
				    	
				    	
				    }
				});
				chart.render();
		   	}, 1000);
			}
		    // 주간간 댓글 조회수 차트 
		   	function WChartreplydate() {
		    	var chart = null;
		   		var data2 = new Array();
				var labal = new Array(); 
				var dchart = $("#chart3")[0].getContext('2d');	 
				$.ajax({
					method : 'GET'
				 , url  : 'selectchart2'
				 , dataType : 'json'
				 , success : function(data) {
					var c = data.length;
					
					$.each(data, function(i, arrjson) {
						var a = data[i].statRegDate;
						var res = a.substring(0, 10)
						labal.push(res);
						data2.push(data[i].statReplyCount)
						
					})
					
				 }
				})
				setTimeout(function(){
				chart = new Chart(dchart, {
					type: 'line',
				    data: {

				        labels: labal,

				        datasets: [{

				            label: "주간댓글조회수",
				            fillColor: "rgba(220,220,220,0.2)",
				            strokeColor: "rgba(220,220,220,1)",
				            pointColor: "rgba(220,220,220,1)",
				            pointStrokeColor: "#fff",
				            pointHighlightFill: "#fff",
				            pointHighlightStroke: "rgba(220,220,220,1)",
				            data: data2
				         
						
						 }]

				    },
				    options: {
				    	 responsive: true,
				    	    
				    	    scales: { yAxes: [{ ticks: { beginAtZero:true } }] }  
				    	
				    	
				    }
				});
				chart.render();
			   	}, 1000);
			}
		    
		    //월간
		     // 월간 댓글 조회수 차트 
		   	function MChartsubdate() {
		    	
				var chart = null;		    
		   		var data2 = new Array();
				var labal = new Array(); 
				var dchart = $("#chart4")[0].getContext('2d');	 
				
				$.ajax({
					method : 'GET'
				 , url  : 'selectchart3'
				 , dataType : 'json'
				 , success : function(data) {
					var c = data.length;
					
					$.each(data, function(i, arrjson) {
						var a = data[i].statRegDate;
						var res = a.substring(0, 10)
						labal.push(res);
						data2.push(data[i].statSubscribe)
						
					})
					
				 }
				})
				setTimeout(function(){
				chart = new Chart(dchart, {
					type: 'line',
				    data: {

				        labels: labal,

				        datasets: [{

				            label: "월간구독자",
				            fillColor: "rgba(220,220,220,0.2)",
				            strokeColor: "rgba(220,220,220,1)",
				            pointColor: "rgba(220,220,220,1)",
				            pointStrokeColor: "#fff",
				            pointHighlightFill: "#fff",
				            pointHighlightStroke: "rgba(220,220,220,1)",
				            data: data2
				         
						
						 }]

				    },
				    options: {
				    	 responsive: true,
				    	    
				    	    scales: { yAxes: [{ ticks: { beginAtZero:true } }] }  
				    	
				    	
				    }
				});
				chart.render();
			   	}, 2000);
			}
		 	// 월간 블로그 조회수 차트 
		   	function MChartdate() {
		   		var data2 = new Array();
				var labal = new Array(); 
				var chart = null;
				var dchart = $("#chart1")[0].getContext('2d');	 
				
				$.ajax({
					method : 'GET'
				 , url  : 'selectchart3'
				 , dataType : 'json'
				 , success : function(data) {
					var c = data.length;
					
					$.each(data, function(i, arrjson) {
						var a = data[i].statRegDate;
						var res = a.substring(0, 10)
						labal.push(res);
						data2.push(data[i].statBlogCount)
						
					})
					
				 }
				})
				setTimeout(function(){
				chart = new Chart(dchart, {
					type: 'line',
				    data: {

				        labels: labal,

				        datasets: [{

				            label: "월간블로그조회수",
				            fillColor: "rgba(220,220,220,0.2)",
				            strokeColor: "rgba(220,220,220,1)",
				            pointColor: "rgba(220,220,220,1)",
				            pointStrokeColor: "#fff",
				            pointHighlightFill: "#fff",
				            pointHighlightStroke: "rgba(220,220,220,1)",
				            data: data2
				         
						
						 }]

				    },
				    options: {
				    	 responsive: true,
				    	 scales: { 
				    		 yAxes: [{ 
				    			ticks: { 
				    				 beginAtZero:true
				    			} 
				    		 }] 
				    	}  
				    }
				});
				chart.render();
		   	}, 1000);
			}
		   	
		 // 월간 게시글 조회수 차트 
		   	function MChartBBsdate() {
		   		var data2 = new Array();
				var labal = new Array(); 
				var dchart = $("#chart2")[0].getContext('2d');	 
				var chart = null;
				
				$.ajax({
					method : 'GET'
				 , url  : 'selectchart3'
				 , dataType : 'json'
				 , success : function(data) {
					var c = data.length;
					
					$.each(data, function(i, arrjson) {
						var a = data[i].statRegDate;
						var res = a.substring(0, 10)
						labal.push(res);
						data2.push(data[i].statBbsCount)
						
					})
					
				 }
				})
				setTimeout(function(){
				chart = new Chart(dchart, {
					type: 'line',
				    data: {

				        labels: labal,

				        datasets: [{

				            label: "월간블로그조회수",
				            fillColor: "rgba(220,220,220,0.2)",
				            strokeColor: "rgba(220,220,220,1)",
				            pointColor: "rgba(220,220,220,1)",
				            pointStrokeColor: "#fff",
				            pointHighlightFill: "#fff",
				            pointHighlightStroke: "rgba(220,220,220,1)",
				            data: data2
				         
						
						 }]

				    },
				    options: {
				    	 responsive: true,
				    	    
				    	    scales: { yAxes: [{ ticks: { beginAtZero:true } }] }  
				    	
				    	
				    }
				});
				chart.render();
		   	}, 1000);
			}
		 
		    // 월간 댓글 조회수 차트 
		   	function MChartreplydate() {
		   		var data2 = new Array();
				var labal = new Array(); 
				var dchart = $("#chart3")[0].getContext('2d');	 
				var chart = null;
				
				$.ajax({
					method : 'GET'
				 , url  : 'selectchart3'
				 , dataType : 'json'
				 , success : function(data) {
					var c = data.length;
					
					$.each(data, function(i, arrjson) {
						var a = data[i].statRegDate;
						var res = a.substring(0, 10)
						labal.push(res);
						data2.push(data[i].statReplyCount)
						
					})
					
				 }
				})
			setTimeout(function(){
				chart = new Chart(dchart, {
					type: 'line',
				    data: {

				        labels: labal,

				        datasets: [{

				            label: "월간댓글조회수",
				            fillColor: "rgba(220,220,220,0.2)",
				            strokeColor: "rgba(220,220,220,1)",
				            pointColor: "rgba(220,220,220,1)",
				            pointStrokeColor: "#fff",
				            pointHighlightFill: "#fff",
				            pointHighlightStroke: "rgba(220,220,220,1)",
				            data: data2
				         
						
						 }]

				    },
				    options: {
				    	 responsive: true,
				    	    
				    	    scales: { yAxes: [{ ticks: { beginAtZero:true } }] }  
				    	
				    	
				    }
				});
				chart.render();
		   	}, 1000);
			}
		    // 월간 공감수 조회수 차트 
		   	function MChartLikedate() {
		   		var data2 = new Array();
				var labal = new Array(); 
				var dchart = $("#chart5")[0].getContext('2d');	 
				var chart = null;
				
				$.ajax({
					method : 'GET'
				 , url  : 'selectchart3'
				 , dataType : 'json'
				 , success : function(data) {
					var c = data.length;
					
					$.each(data, function(i, arrjson) {
						var a = data[i].statRegDate;
						var res = a.substring(0, 10)
						labal.push(res);
						data2.push(data[i].statBBSLike)
						
					})
					
				 }
				})
			setTimeout(function(){
				chart = new Chart(dchart, {
					type: 'line',
				    data: {

				        labels: labal,

				        datasets: [{

				            label: "월간공감수",
				            fillColor: "rgba(220,220,220,0.2)",
				            strokeColor: "rgba(220,220,220,1)",
				            pointColor: "rgba(220,220,220,1)",
				            pointStrokeColor: "#fff",
				            pointHighlightFill: "#fff",
				            pointHighlightStroke: "rgba(220,220,220,1)",
				            data: data2
				         
						
						 }]

				    },
				    options: {
				    	 responsive: true,
				    	    
				    	    scales: { yAxes: [{ ticks: { beginAtZero:true } }] }  
				    	
				    	
				    }
				});
				chart.render();
		   	}, 1000);
			}
