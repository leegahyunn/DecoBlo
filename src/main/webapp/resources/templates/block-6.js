window.onload = function(){
			startTime();
			
		}

function startTime() {
	var today = new Date();
	var h = today.getHours();
	var m = today.getMinutes();
	var s = today.getSeconds();
	m = checkTime(m);
	s = checkTime(s);
	var dd = today.getDate();
	var mm = today.getMonth()+1; 
	var yyyy = today.getFullYear();
	var form;

	if(dd<10) {
	    dd='0'+dd
	} 

	if(mm<10) {
	    mm='0'+mm
	} 
	
	document.getElementById('block-6').innerHTML ='<br/>'+ h + ":" + m + ":" + s + '<br/>'+'<p style="font-size: 50px;" >' + yyyy+'년 '+mm+'월 '+dd+'일 '+'<p/>';
	var t = setTimeout(startTime, 500);
	
}
function checkTime(i) {
	if (i < 10) {
		i = "0" + i;
	}
	
	return i;
}
