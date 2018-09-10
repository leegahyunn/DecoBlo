<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header id="header">
	<h1>
		<a href="/www/">Deco <span>Blo</span></a>
	</h1>
	<nav id="nav">
		<ul>
			<li><a href="#" class="icon fa-angle-down">${loginName}님</a>
				<ul>
					<li><a href="/www/user/profile">계정설정</a></li>
					<li><a href="config?menuNo=0">내 블로그</a></li>
					<li><a href="">대시보드</a></li>
					<li><a href="#">1대1 문의</a></li>
					<li><a href="/www/user/logout">로그아웃</a></li>
				</ul>
			<li><a href="#" class="icon fa-angle-down">한국어(KO)</a>
				<ul>
					<li><a href="#">한국어(KO)</a></li>
					<li><a href="#">日本語(JP)</a></li>
				</ul></li>
			<li><a href="#">고객센터</a></li>
		</ul>
	</nav>
</header>