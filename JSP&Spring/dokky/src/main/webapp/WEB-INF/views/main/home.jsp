<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<style>
	body {
			background-color: #fbf0db;
	}
</style>

<script type="text/javascript">
		$(document).ready(() => {
			$("#loginButton").click(() => {
				location.href = "${pageContext.request.contextPath}/member/gologin";
			});
		})
	</script>
<title>Home</title>
</head>
<body class="bg-light">
	<c:set var="home" value="/dokky/WEB-INF/views/main/home.jsp"></c:set>
	<c:set var="login" value="/dokky/WEB-INF/views/member/login.jsp"></c:set>
	<c:set var="join" value="/dokky/WEB-INF/views/member/join.jsp"></c:set>
	<div class="menu">
		<%@ include file="menu.jsp" %>
	</div>
	<div class="body">
		<c:if test="${pageContext.request.requestURI eq home}">
			<%@ include file="mainBody.jsp" %>
		</c:if>
		<c:if test="${pageContext.request.requestURI eq login}">
			<%@ include file="../member/login.jsp" %>
		</c:if>
		<c:if test="${pageContext.request.requestURI eq join}">
			<%@ include file="../member/join.jsp" %>
		</c:if>
	</div>
</body>
</html>