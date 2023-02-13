<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h3>upload폴더 내 모든 파일 목록 출력</h3>
		
		<c:forEach var="file" items="${fileList }">
		<a href="<c:url value='/fileDownload/${file}'/>">${file } 파일다운로드</a><br>
		</c:forEach>
		<a href="<c:url value='/'/>">메인</a>
	</body>
</html>