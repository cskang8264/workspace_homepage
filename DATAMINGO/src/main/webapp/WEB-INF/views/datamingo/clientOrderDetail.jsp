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
			<span
				style="font-size: 35px; font-weight: bolder;">결제상세내역</span>
					
		</div>
		<br> <br>
		<table class="table" style="text-align: center">
			<thead class="thead-light">
				<tr>
					<!-- <th scope="col">주문번호</th> -->
					<th scope="col">상품상세내역</th>
					<th scope="col">상품가격</th>
					<th scope="col">상품갯수</th>




				</tr>
			</thead>
			<tbody>


				<c:forEach var="cod" items="${ClientorderDetail}" varStatus="status">
					<tr>
						<%-- 	<th scope="row">${cod.tx_detail_pk}</th> --%>
						<td>${cod.goods_no}</td>
						<th scope="col">${cod.sales_price}</th>
						<th scope="col">${cod.goods_cnt}</th>




					</tr>
				</c:forEach>

				<%-- <c:forEach var="od" items="${orderDetailList}" varStatus="status">
					<td>${od.order_amount}</td>
				</c:forEach> --%>



			</tbody>
		</table>

		<div class="alert alert-warning" role="alert">고객님의 현재 주문상태는 <strong>
		<c:choose>
								<c:when test='${statusByTxid == "READY" }'>
       													     "상품승인대기"
      							    </c:when>
								<c:when test='${statusByTxid == "APPROVAL" }'>
        													    "상품준비중"
       							    </c:when>
								<c:otherwise>
   													         "상품준비완료"
       							  </c:otherwise>
							</c:choose>
		
	
		
		</strong> 입니다. </div>


	</div>
	<%-- <c:set target="${statusByTxid}" /> --%>










</body>




</html>


<script>
	function location_href_clientorderdetail(user_id) {
		window.location.href = "/clientOrderList/detail/" + user_id;
	}
</script>

