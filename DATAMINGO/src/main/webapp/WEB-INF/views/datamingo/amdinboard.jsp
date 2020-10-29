<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="https://use.fontawesome.com/releases/v5.12.1/js/all.js"></script>
<script type="text/javascript"
	src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.bundle.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
<title>MINGO</title>

</head>
<body>
	<nav id="mingo_navbar" class="navbar navbar-light"
		style="background-color: #e3f2fd;">
	<div class="container">
		<a id="logo" href="/" class="navbar-brand">MINGO</a> <a id="back"
			href="/" class="btn btn-dark my-2 my-sm-0" role="button"
			aria-pressed="true">돌아가기</a>
		<button id="exit" style="display: none;" type="button"
			class="btn btn-outline-dark" data-toggle="modal"
			data-target="#exampleModalCenter">프로그램 종료</button>
	</div>
	</nav>

	<div class="container">



		<br>
		<div class="alert alert-warning" role="alert"
			style="text-align: center;">
			<strong>공지사항 관리페이지입니다.</strong>
		</div>
		<c:forEach var="bl" items="${boardList}" varStatus="status">



			<div class="card  mb-3 mx-auto" style="max-width: 18rem;">
				<div class="card-header" style="text-align: center;">
					제목 : <strong>${bl.title} </strong>
				</div>
				<div class="card-body" style="text-align: left;">

					<p class="card-text">
						<strong>본문:</strong> ${bl.text}
					</p>
					<p class="card-text">
						<strong>작성자:</strong> ${bl.author}님
					</p>
					<p class="card-text">
						<strong>작성일시:</strong> ${bl.board_date}
					</p>
					<div style="text-align: center;">
						<button type="button" class="btn btn-success" onclick="updateBoard(${bl.board_id})">수정</button>
						<button type="button" class="btn btn-danger" onclick="deleteBoard(${bl.board_id})">삭제</button>
					</div>
				</div>
				</div>
		</c:forEach>
	
		<ul class="pagination justify-content-center">
			<c:if test="${pageNo != 1}">
				<li class="page-item"><a class="page-link"
					href="/admin/boardlist?pageNo=${pageNo - 1}&limitation=${limitation}">이전</a></li>
			</c:if>
			<%-- <c:forEach var="pg" begin="${startPage}" end="${endPage}">
				<c:if test="${pg==pageNo}">
					<li class="page-item active"><a class="page-link"
						href="/clientOrderList?pageNo=${pg}&limitation=${limitation}">${pg}</a></li>
				</c:if>
				<c:if test="${pg!=pageNo}">
					<li class="page-item"><a class="page-link"
						href="/clientOrderList?pageNo=${pg}&limitation=${limitation}">${pg}</a></li>
				</c:if>t
			</c:forEach> --%>
			<c:if test="${pageNo != totalPage}">
				<li class="page-item"><a class="page-link"
					href="/admin/boardlist?pageNo=${pageNo + 1}&limitation=${limitation}">다음</a></li>
			</c:if>
		</ul>
	</div>

</body>




</html>


<script>

function deleteBoard(board_id) {
	
	window.location.href='/deleteBoard/'+board_id;  return false
	
	
}

function updateBoard(board_id) {
	
	window.location.href='/updateBoard/'+board_id;  return false
	
	
}
	
</script>

