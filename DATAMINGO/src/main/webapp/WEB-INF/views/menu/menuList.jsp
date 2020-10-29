
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>결제</title>
<!--  font  -->
<link
	href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap&subset=korean"
	rel="stylesheet">
<!-- bootstrap -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link data-require="sweet-alert@*" data-semver="0.4.2" rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
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
		<div class="row">
			<div class="col">

				<table class="table rounded"
					style="text-align: center; font-family: 'Do Hyeon', sans-serif;">
					<thead class="thead-light">
						<tr>

							<th scope="col">메뉴</th>
							<th scope="col">가격</th>

						</tr>
					</thead>
					<tbody>
						<c:forEach var="m" items="${menuList}" varStatus="status">
							<tr>


								<td>
									<button type="button" id="itemName"
										class="btn btn-warning btn-lg btn-block"
										onclick="addrowPrice('${m.goods_no }',${m.sales_price},${m.goods_pk })">${m.goods_no }</button>
								</td>

								<td><br>${m.sales_price}원</td>

							</tr>
						</c:forEach>
					</tbody>
				</table>
				<nav class="navbar navbar-dark bg-dark rounded">
					<!-- nothing to here -->
				</nav>
			</div>
			<div class="col">
				<table class="table rounded"
					style="text-align: center; font-family: 'Do Hyeon', sans-serif;">
					<thead class="thead-light">
						<tr>

							<th scope="col" colspan="2">주문내역</th>
						</tr>
						<tr>
							<th scope="col">주문상품</th>
							<th scope="col">수량</th>
						</tr>
					</thead>
					<tbody id="selectedManu">
						<c:forEach var="m" items="${menuList}" varStatus="status">

						</c:forEach>

					</tbody>

					<tfoot>
						<tr>

							<td>결제금액 :
								<h2 id="totalPrice">0원</h2>
							</td>

							<td>총 주문개수 :
								<h2 id="totalCount">0</h2>
							</td>
						</tr>
					</tfoot>
				</table>
				<div style="font-family: 'Do Hyeon', sans-serif;">
					<button type="button" class="btn btn-danger btn-lg btn-block"
						onclick="deleteOrder( )">주문삭제하기</button>


					<button type="button" class="btn btn-warning btn-lg btn-block"
						onclick=" orderProduct()">결제하기</button>


				
				</div>

			</div>
		</div>
		<!-- On rows -->

	</div>

	<script type="text/javascript">
	let totalPrice = 0;
	let totalCount = 0;
		let goodsName = ""

		
	function addrowPrice( name, price, pk) {
		let goods_name_map = new Map()
		let goods_price_map  = new Map()
		let goods_count_map = new Map()
		
		let goodsCount =0;
		
		
	    goods_name_map.set(pk,name)
	    goodsName = goods_name_map.get(pk)
	    
	    
		goods_price_map.set(pk,price)
		goodsCount=goodsCount+1;
		goods_count_map.set(pk,goodsCount)
		
		
		  $('#selectedManu').append("<tr><td>" +goodsName+ "</td>" + "<td>"+goods_count_map.get(pk)+"</td>"+"</tr>");
		 	
		  totalPrice = totalPrice + goods_price_map.get(pk) ;
		  totalCount = totalCount + goods_count_map.get(pk);
		  document.getElementById("totalPrice").innerHTML = totalPrice+"원";
		  document.getElementById("totalCount").innerHTML = totalCount;
		  
	
		}
	
	function deleteOrder( ) {
		totalPrice = 0;
	    totalCount = 0;
		goodsCount =0;
		goodsName = "";
		
		
		  $('#selectedManu').empty();
		 
		  
		
		  document.getElementById("totalPrice").innerHTML = 0+"원";
		  document.getElementById("totalCount").innerHTML = 0;
		  
	
		}
	
	
	/* /shop/order/calculate?user_Id=manager&total_price=30000 */
	function orderProduct() {
		 
		 
		 if (totalPrice==0) {
		
			 alert(" **결제오류** 주문목록을 확인해주세요.  ")
			 
			 
		 }else{
			 window.open('/menu/order?user_id=01085465265&total_price='+totalPrice+'&product_name='+goodsName+'&product_count='+totalCount+'&manager_id=manager', '결제수단목록','width=500px, height=500px'); return false
		 }

	}
	
	
	function kakaoOrder(){
	
		$.ajax({
			url: '/kakao/order',
			type:'GET',
			dataType: 'text',
			contentType: "application/x-www-form-urlencoded; charset=UTF-8", 
			success:function(result_data){			
				console.log(result_data);
				
 			if(result_data=="success"){
 				alert(result_data);
 				window.location.href('/orderlist'); return false
				}else{
					alert("/?");
				}
 		},
			error:function(jqXHR, textStatus, errorThrown){
			    alert('오류발생 ' +jqXHR+"   ///    "+textStatus+"  ///  "+errorThrown);
			}
		})  
	}

	

	



	</script>
</body>
</html>

