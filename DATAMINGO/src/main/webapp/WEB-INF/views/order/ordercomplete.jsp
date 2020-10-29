
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
		
		<h2>${response}  결제성공!</h2>
		<h2>주문내역을 확인해주세요!</h2>
		
		
		
		
		
		
		
					<button type="button" class="btn btn-warning btn-lg btn-block"
						onclick="">결제취소</button>
		
	</div>
</body>
</html>
