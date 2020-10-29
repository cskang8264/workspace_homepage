
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




	<h2>${response} 결제실패........ㅎㅎㅎㅎ</h2>
	<H2>${tx_id}TT</H2>
	<H2>${store_cd}SS</H2>
	<H2>${linq_appr_no}LL</H2>
	<H2>${price}PP</H2>
	<h2>${result_msg}??</h2>
	<h2>${cell_phone_no} </h2>
		<h2>주문내역을 확인해주세요 </h2>

	<div class="container"
		style="text-align: center; font-family: 'Do Hyeon', sans-serif">
		<br>
		<H2>${orderDetailList[0].customer_phone}님의  주문 상세목록</H2>
		<br> <br>
		<table class="table" style="text-align: center">

			<thead class="thead-light">
				<tr>
					<th scope="col">상품별주문번호</th>
					<th scope="col">메뉴
					<th>
					<th scope="col">수량
					<th>
					<th scope="col">가격</th>
					<th scope="col">주문승인여부</th>
				</tr>
			</thead>

			<tbody>



				<c:forEach var="o" items="${orderDetailList}" varStatus="status">
					<tr>

						<th scope="col">${o.order_detail_id}</th>
						<th scope="col">${o.order_menu}
						<th>
						<th scope="col">${o.order_count}개
						<th>
						<th scope="col">${o.order_value}원</th>
						<th scope="col"><input type="checkbox" name="ordercheck"
							value="orderconfirm"></th>



					</tr>
				</c:forEach>

			</tbody>
		</table>
		<br>
		<c:set var="sum" value="0" />
		<c:set var="order_id" value="${orderDetailList[0].order_id}" />


		<c:forEach var="o" items="${orderDetailList}">

			<c:set var="sum" value="${sum + o.order_value}" />
			<c:set var="order_detail_id" value="${o.order_detail_id}" />

		</c:forEach>

		<h2>
			총주문금액 :
			<c:out value="${sum}" />
			원
		</h2>
		
		
		
		
					<button type="button" class="btn btn-warning btn-lg btn-block"
						onclick="orderCancel(${o.order_id},'${tx_id}','${store_cd}',${cell_phone_no},'${linq_appr_no}'  )">결제취소</button>
		

	
	</div>
	<script type="text/javascript">
	
	
	function orderCancel(order_id,tx_id,store_cd,cell_phone_no,linq_appr_no) {
		
		
		window.location.href('/cancel/'+cell_phone_no?'order_id='+order_id+'&tx_id='+tx_id+'&store_cd='+store_cd+'$linq_appr_no='+linq_appr_no); return false
		
		
		
		
		
	}
		
	
	
	</script>
</body>
</html>
