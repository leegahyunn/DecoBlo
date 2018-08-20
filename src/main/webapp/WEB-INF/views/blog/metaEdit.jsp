<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="decoblo/css/bootstrap.min.css">
</head>
<body>
<div id="wrapper" align="center">
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
</div>
</body>
</html>