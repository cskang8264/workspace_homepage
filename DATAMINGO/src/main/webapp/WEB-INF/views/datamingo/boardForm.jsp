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
		<div style="text-align: center;">
			<span style="font-size: 35px; font-weight: bolder;">공지사항등록</span> <br>
		</div>

		<br> <br>
		<form action="/noticeRegistration" method="POST">
			<div class="form-group">
				<i class="fa fa-edit" style="font-size: 25px; color: red"> </i> <label
					for="exampleFormControlInput1">제목</label> 
					<input type="text"
					class="form-control" id="title"
					placeholder="공지사항 제목을 입력해주세요." name="title">
			</div>

			<div class="form-group">
				<i class="fa fa-align-left" style="font-size: 25px; color: red">
				</i> <label for="exampleFormControlInput1">본문</label>
				<textarea class="form-control" id="text"
					rows="10" placeholder="공지할 내용을 입력해주세요." name="text"></textarea>
			</div>
			<div style="text-align: center;">
				<button type="submit" class="btn btn-primary mb-2">제출하기</button>
			</div>
		</form>

	</div>




</body>




</html>


<script>
	

</script>

