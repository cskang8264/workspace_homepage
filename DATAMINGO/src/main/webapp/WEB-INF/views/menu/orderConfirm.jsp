
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


	<div class="container"
		style="text-align: center; font-family: 'Do Hyeon', sans-serif">
	<br>
	<br>
		<h3>결제를 완료하시려면 아래의 결제 완료를 눌러주세요.</h3>
		<br>
		<br>
		<button type="button" class="btn btn-warning btn-lg btn-block"
			onclick="kakaoOrder()">결제완료</button>

	</div>

	<script type="text/javascript">
		/* /shop/order/calculate?user_Id=manager&total_price=30000 */
		function orderConfirm() {
			
			
			
			window.open('http://54.180.94.83/payment/success?price=');
			return false

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
	