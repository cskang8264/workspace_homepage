<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">


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
<title>ClientOrderList</title>

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

	<div class="container"
		style="text-align: center; font-family: 'Do Hyeon', sans-serif">
		<br>
		<div>
			<img alt="" src="../resources/img/paylisticon.png" width="45px"
				height="45px" style="margin-right: 10px; margin-bottom: 12px"><span
				style="font-size: 35px; font-weight: bolder;">결제내역</span>

		</div>
		<div></div>
		<br> <br>




		<c:forEach var="col" items="${ClientorderList}" varStatus="status">
			<div class="card  mb-3 mx-auto" style="max-width: 18rem;">
				<div class="card-header">주문내역</div>
				<div class="card-body">
					<h5 class="card-title" id="goods_no">${col.tx_pk }</h5>
					<p class="card-text">${col.shop_id }</p>
					<p class="card-text">${col.product_nm }</p>
					<p class="card-text">${col.price }원</p>
					<p class="card-text">
						<button type="button" class="btn btn-success"
							onclick="location_href_clientorderdetail('${col.tx_id}')">결제내역
							상세보기</button>
					</p>
				</div>
			</div>
		</c:forEach>

	
		<ul class="pagination justify-content-center">
			<c:if test="${pageNo != 1}">
				<li class="page-item"><a class="page-link"
					href="/clientOrderList?pageNo=${pageNo - 1}&limitation=${limitation}">이전</a></li>
			</c:if>
<%-- 			<c:forEach var="pg" begin="${startPage}" end="${endPage}">
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
					href="/clientOrderList?pageNo=${pageNo + 1}&limitation=${limitation}">다음</a></li>
			</c:if>
		</ul>

<br>
<br>
<br>
<br>




	</div>






</body>




</html>


<script>

function location_href_clientorderdetail(tx_id) {
	window.location.href="/clientOrderList/detail/"+tx_id;
}

	

</script>

