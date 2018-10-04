<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix= "spring" %>      
<header id="header">
	<h1>
		<a href="/www/"><img src="resources/images/logo/logo_full_white.png" style="width: 100px; "></a>
	</h1>
	<nav id="nav">
		<ul>
			<li><a href="#" class="icon fa-angle-down">${loginName}<spring:message code="h1" /></a>
				<ul>
					<li><a href="/www/user/profile"><spring:message code="h2" /></a></li>
					<li><a href="/www/blog/${loginBlogAddress}"><spring:message code="h3" /></a></li>
					<li><a href="/www/config"><spring:message code="h4" /></a></li>
					<li><a href="/www/dashboard"><spring:message code="h5" /></a></li>
					<li><a href="#"><spring:message code="h6" /></a></li>
					<li><a href="/www/user/logout"><spring:message code="h7" /></a></li>
				</ul>
			<li><a href="#" class="icon fa-angle-down">日本語(JP)</a>
				<ul>
					<li><a href="?lang=ko">한국어(KO)</a></li>
					<li><a href="?lang=ja">日本語(JP)</a></li>
				</ul></li>
			<li><a href="/www/bbsList?boardNo=1"><spring:message code="h8" /></a></li>
		</ul>
	</nav>
</header>
