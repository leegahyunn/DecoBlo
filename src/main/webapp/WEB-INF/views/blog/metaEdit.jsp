<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="pixelarity/assets/css/font-awesome.min.css">
<link type="text/css" rel="stylesheet" href="decoblo/css/blockConfig.css">

<script src="resources/jquery-3.3.1.min.js"></script>
<script src="decoblo/js/menuConfig.js"></script>
</head>
<body>
<form>
	<table>
		<tr>
			<td>제작자 이름</td>
			<td>
				<input class="form-control" type="text"/>
			</td>
		</tr>
		
		<tr>
			<td>사이트 제목</td>
			<td>
				<input class="form-control" type="text"/>
			</td>
		</tr>
		
		<tr>
			<td>사이트 설명</td>
			<td>
				<input class="form-control" type="text"/>
			</td>
		</tr>
	
		<tr>
			<td>사이트 제목</td>
			<td>
				<input class="form-control" type="text"/>
			</td>
		</tr>
		<tr>
			<th colspan="2">
				<input class="btn btn-secondary" type="submit" value="확인" onclick = "return memberCheck()"/>
				<input class="btn btn-secondary" type="reset" value="취소" />
			</th>
		</tr>
	</table>
</form>
</body>
</html>