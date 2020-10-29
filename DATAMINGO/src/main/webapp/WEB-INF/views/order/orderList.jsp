
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>주문관리</title>
<!--  font  -->
<link
	href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap&subset=korean"
	rel="stylesheet">
<!-- bootstrap -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<!-- jquery -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
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
		<H2>주문목록</H2>
		<br> <br>
		<table class="table" style="text-align: center">
			<thead class="thead-light">
				<tr>
					<th scope="col">주문번호</th>
					<th scope="col">주문일시</th>
					<th scope="col">고객전화번호</th>
				
					<th scope="col">주문상태</th>
					<th scope="col">주문상세</th>
				</tr>
			</thead>
			<tbody>


				<c:forEach var="o" items="${orderList}" varStatus="status">
					<tr>
						<th scope="row">${o.order_no}</th>
						<td>${o.order_timestamp}</td>

						<td>${o.customer_phone}</td>
					 
						<td><c:choose>

								<c:when test="${ o.order_status == 0}"> 주문대기  </c:when>

								<c:when test="${ o.order_status == 1}"> 주문완료   </c:when>

								<c:otherwise> 주문취소  </c:otherwise>

							</c:choose></td>

						<td>
							<button type="button" class="btn btn-success"
								onclick="location_href_orderdetail(${o.order_id})">주문상세보기</button>

						</td>

					</tr>
				</c:forEach>

				<%-- <c:forEach var="od" items="${orderDetailList}" varStatus="status">
					<td>${od.order_amount}</td>
				</c:forEach> --%>



			</tbody>
		</table>
		<script type="text/javascript">
		
		function location_href_orderdetail(order_id) {
			window.location.href="/order/detail/"+order_id;
		}
		
		</script>
</body>
</html>
