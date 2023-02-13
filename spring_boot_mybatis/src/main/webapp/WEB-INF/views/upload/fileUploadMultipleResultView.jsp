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
		<h3>여러개의 파일 업로드 결과</h3>
		다음의 파일 을 전송하였습니다<br>
		C:\springWorkspace\upload 폴더에서 확인하세요<br><br>
		
		<c:forEach var="file" items="${originalFileNameList }">
		${file }<br>
		
		</c:forEach>
		<br>
		<a href="<c:url value='/'/>">메인</a>
	</body>
</html>