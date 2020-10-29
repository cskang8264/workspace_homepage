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
<title>board</title>

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
		<div id="left_menu" class="collapse navbar-collapse"
			style="position: fixed; z-index: 0; top: 0; left: 5%; width: 20%; height: 100%; background-color: #eeeeee;">
			<ul class="nav navbar-nav">
				<li><i style="color: #bdbdbd" class="fas fa-th-large"></i><a
					class="iconWithText"
					style="margin-left: 10px; color: black !important;" href="">밍고</a></li>
				<li><i style="color: #bdbdbd" class="fas fa-shopping-cart"></i><a
					class="iconWithText"
					style="margin-left: 10px; color: black !important;" href="">데이터
						밍고</a></li>
				<li><i style="color: #bdbdbd" class="fas fa-user-friends"></i><a
					class="iconWithText"
					style="margin-left: 10px; color: black !important;" href="">하이브리드</a></li>
				<li><i style="color: #bdbdbd" class="fas fa-chart-bar"></i><a
					class="iconWithText"
					style="margin-left: 10px; color: black !important;" href="">차트</a></li>
			</ul>
		</div>
		<body>
			<div id="page-wrap" class="container"
				style="background-color: #eeeeee;">
				<div>
					<nav class="navbar navbar-custom">
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#left_menu" aria-expanded="false">
						<span class="navbar-toggler-icon"><i class="fas fa-bars"
							style="color: black; font-size: 28px;"></i></span>
					</button>
					</nav>
				</div>
				<div style="margin-left: 30%; margin-top: 5%;">
					<input style="width: 40%; font-size: 30px;" type="text" value="김태영"
						readonly>
					<button id="button"
						style="float: right; border-radius: 20px !important; word-break: keep-all; width: 70px; border-color: #6c7a89; font-weight: bolder; color: #6c7a89 !important;"
						class="btn btn-light" type="button" data-toggle="modal"
						data-target=".bd-example-modal-lg">알림</button>
					<div class="modal fade bd-example-modal-lg" tabindex="-1"
						role="dialog" aria-labelledby="myLargeModalLabel"
						aria-hidden="true">
						<div class="modal-dialog modal-lg">
							<div class="modal-content">
								<br>
								<div class="alert alert-warning" role="alert" style="text-align:  center;"><strong>공지사항</strong></div>
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

										</div>
									</div>

								</c:forEach>

				<ul class="pagination justify-content-center">
			<c:if test="${pageNo != 1}">
				<li class="page-item"><a class="page-link"
					href="/board?pageNo=${pageNo - 1}&limitation=${limitation}">이전</a></li>
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
					href="/board?pageNo=${pageNo + 1}&limitation=${limitation}">다음</a></li>
			</c:if>
		</ul>
							</div>
						</div>
					</div>
					<br> <i style="color: #bdbdbd" class="fas fa-home"></i><input
						style="width: 100%; font-size: 15px; color: #6c7a89 !important;"
						type="text" value="655-81-00978" readonly>
				</div>

				<div id="icon1" class="row" style="margin-left: 15%;">
					<div id="bars-chart" style="width: 20%; height: 35%;">
						<img src="img/bars-chart.png">
						<p id="report">리포트</p>
					</div>
					<div id="calendar" style="width: 20%; height: 35%;">
						<img src="img/calendar.png">
						<p id="calendar_str">캘린더</p>
					</div>
					<div id="search" style="width: 20%; height: 35%;">
						<img src="img/search.png">
						<p id="reference">조회</p>
					</div>
					<div id="idea" style="width: 20%; height: 35%;">
						<img src="img/idea.png">
						<p id="diagnosis_fit">맞춤진단</p>
					</div>
				</div>
				<div id="icon2" class="row" style="margin-left: 15%;">
					<div id="engineer" style="width: 20%; height: 35%;">
						<img src="img/engineer.png">
						<p id="report">매장관리</p>
					</div>
					<div id="star" style="width: 20%; height: 35%;">
						<img src="img/star.png">
						<p id="calendar_str">리뷰관리</p>
					</div>
					<div id="pie-chart" style="width: 20%; height: 35%;">
						<img src="img/pie-chart.png">
						<p id="reference">방문분석</p>
					</div>
					<div id="marker" style="width: 20%; height: 35%;">
						<img src="img/marker.png">
						<p id="diagnosis_fit">상권분석</p>
					</div>
				</div>
				<!-- carousel -->
				<div class="container" style="margin-top: 20px;">
					<div id="myCarousel" class="carousel slide" data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
							<li data-target="#myCarousel" data-slide-to="1"></li>
						</ol>

						<div class="carousel-inner">
							<div class="carousel-item active">
								<img class="d-block w-10"
									style="width: 100% !important; height: 200px !important;"
									src="img/1.jpg" alt="First slide">
							</div>
							<div class="carousel-item">
								<img class="d-block w-10"
									style="width: 100% !important; height: 200px !important;"
									src="img/2.jpg" alt="Second slide">
							</div>
						</div>

						<a class="carousel-control-prev" href="#myCarousel" role="button"
							data-slide="prev"> <span class="carousel-control-prev-icon"
							aria-hidden="true"></span> <span class="sr-only">Previous</span>
						</a> <a class="carousel-control-next" href="#myCarousel" role="button"
							data-slide="next"> <span class="carousel-control-next-icon"
							aria-hidden="true"></span> <span class="sr-only">Next</span>
						</a>
					</div>
				</div>
				<div class="container" id="deposit"
					style="background-color: #fafafa; margin-top: 20px; height: 15%; padding-bottom: 2%;">
					<span><u><a>입금 예정</a></u></span><a style="float: right;">카드매출
						기준</a><br> <input
						style="background-color: #fafafa !important; color: #6c7a89 !important;"
						value="2월 14일(오늘)"><br> <input
						style="background-color: #fafafa !important; font-size: 25px; color: black"
						value="6,658원"><br> <input
						style="width: 100px; background-color: #fafafa !important; color: #6c7a89 !important;"
						value="2월 17일 (월)"><input
						style="width: 100px; background-color: #fafafa !important; font-size: 25px; color: black"
						value="6,151원"><br>
					<hr>
					<a style="color: black">입금달력 보기 ></a>
					<button
						style="float: right; border-radius: 20px !important; font-size: 10px;"
						class="btn btn-light" type="button">
						<span class="fas fa-chart-pie"></span>통계
					</button>
				</div>
				<div class="container" id="sales"
					style="background-color: #fafafa; margin-top: 2%; height: 15%; padding-bottom: 2%;">
					<span><u><a>어제 매출</a></u></span><a style="float: right;">00:00~
						24:00 기준</a><br> <input
						style="background-color: #fafafa !important;" value="수집 전"><br>
					<span class="fas fa-info-circle"></span><a style="margin-left: 1%">매일
						오전 중에 어제 매출이 수집됩니다. </a>
					<hr>
					<a style="color: black">매출달력 보기 ></a>
					<button
						style="float: right; border-radius: 20px !important; font-size: 10px;"
						class="btn btn-light" type="button">
						<span class="fas fa-chart-pie"></span>통계
					</button>
				</div>



				<div id="site-footer">
					<hr>
					<div class="row">
						<div id="home" class="iconWithText"
							style="margin-left: 20%; margin-bottom: 2%;">
							<span class="fas fa-comment-dots fa-lg"></span>
							<p>홈</p>
						</div>
						<div id="cog" class="iconWithText"
							style="margin-left: 12%; margin-bottom: 2%;">
							<span class="fas fa-chart-pie fa-lg"></span>
							<p>장부</p>
						</div>
						<div id="diagnosis" class="iconWithText"
							style="margin-left: 12%; margin-bottom: 2%;">
							<span class="far fa-lightbulb fa-lg"></span>
							<p>진단</p>
						</div>
						<div id="customer" class="iconWithText"
							style="margin-left: 12%; margin-bottom: 2%;">
							<span class="far fa-user fa-lg"></span>
							<p>고객</p>
						</div>
						<div id="setting" class="iconWithText"
							style="margin-left: 12%; margin-bottom: 2%;">
							<span class="fas fa-cog fa-lg"></span>
							<p>설정</p>
						</div>
					</div>
				</div>
			</div>
	</div>




</body>




</html>


<script>
	

</script>

