<%@include file="./header.jsp" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring Boot Application with JSP</title>

<style>
	table {
		border-collapse: collapse;
	}
	tr, td{
		border: 1px solid;
	}
</style>
</head>
<body>
	
	

	<table>
		<tr>
			<td>${vo.seq_no}</td>
			<td>${vo.title}</td>
			<td>${vo.content}</td>
			<td>${vo.date}</td>
			<td>${vo.hit}</td>
			<td>${vo.id}</td>
			<td>${vo.password}</td>
		</tr>
	</table>

</body>
</html>