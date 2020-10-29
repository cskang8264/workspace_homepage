
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col">
				<c:forEach var="m" items="${menuList}" varStatus="status">
					<c:out value="${m.name}" />
					<c:out value="${m.price}" />
				

				</c:forEach>

			</div>

			<div class="col">2 of 2</div>
		</div>

		<div class="row">
			<div class="col"></div>




			<div class="col">2 of 2</div>
		</div>
	</div>

</body>
</html>

