<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="utf-8">
		<title>Winni's-파일 업로드 폼</title>
		
		<link rel="stylesheet" href="css/reset.css">
		<style>

		</style>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script>
			$(function() {
			});
		</script>
	</head>
	<body>
		<h3>파일 업로드 폼</h3>
		<center>
			<!-- 
				파일업로드를 위해선 반드시 method="post" enctype="Multipart/form-data"여야함!
			 -->
			<form action="uploadFile" method="post" enctype="Multipart/form-data">
				<!-- 
					파일 업로드는 input type="file"로 지정한다.
				 -->
				파일명1 : <input type="file" name="file" /><br/>
				<input type="submit" value="전송" />  
				<input type="reset" value="취소" />
			</form>
		</center>
	</body>
</html>


