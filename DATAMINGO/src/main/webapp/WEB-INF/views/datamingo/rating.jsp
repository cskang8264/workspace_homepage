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
<title>rating</title>
<link rel="stylesheet" type="text/css"
	href="../resources/css/rating.css">
</head>
<body>




	<div class="container"
		style="text-align: center; font-family: 'Do Hyeon', sans-serif">

		<div class="row justify-content-md-center">
			<div class="col col-lg-2"></div>
			<div class="col-md-auto">

				<span style="font-size: 35px; font-weight: bolder;">리뷰관리</span> <br>
				<br>
				<div>
					<ul class="nav nav-tabs" id="myTab" role="tablist">
						<li class="nav-item"><a class="nav-link active" id="home-tab"
							data-toggle="tab" href="#home" role="tab" aria-controls="home"
							aria-selected="true">전체리뷰</a></li>
						<li class="nav-item"><a class="nav-link" id="profile-tab"
							data-toggle="tab" href="#profile" role="tab"
							aria-controls="profile" aria-selected="false">메뉴별리뷰</a></li>

					</ul>
				</div>
				<div class="tab-content" id="myTabContent">
					<div class="tab-pane fade show active" id="home" role="tabpanel"
						aria-labelledby="home-tab">
						<br>
						<c:forEach var="mrt" items="${menuRatingbytime}"
							varStatus="status">

							<div class="card  mb-3 mx-auto" style="max-width: 18rem;">
								<div class="card-header" style="text-align: center;">
									<strong>${mrt.user_id} </strong>님의 리뷰
								</div>
								<div class="card-body" style="text-align: left;">

									<p class="card-text">
										<strong>일시</strong> : ${mrt.order_date}
									</p>
									<p class="card-text">
										<strong>가격</strong> : ${mrt.order_price}원
									</p>
									<p class="card-text">
										<strong>주문메뉴</strong> : ${mrt.menuList}
									</p>
									<p class="card-text">
										<strong>평점</strong> :
										<c:choose>

											<c:when test="${mrt.review_score eq '1'}">
												<div style="width: 100px;">
													<span class="fa fa-star checked"></span><span
														class="fa fa-star "></span> <span class="fa fa-star "></span><span
														class="fa fa-star "></span><span class="fa fa-star "></span>
												</div>
											</c:when>

											<c:when test="${mrt.review_score eq '2'}">
												<span class="fa fa-star checked"></span>
												<span class="fa fa-star checked"></span>
												<span class="fa fa-star "></span>
												<span class="fa fa-star "></span>
												<span class="fa fa-star "></span>
											</c:when>

											<c:when test="${mrt.review_score eq '3'}">
												<span class="fa fa-star checked"></span>
												<span class="fa fa-star checked"></span>
												<span class="fa fa-star checked"></span>
												<span class="fa fa-star "></span>
												<span class="fa fa-star "></span>
												</span>
											</c:when>

											<c:when test="${mrt.review_score eq '4'}">
												<span class="fa fa-star checked"></span>
												<span class="fa fa-star checked"></span>
												<span class="fa fa-star checked"></span>
												<span class="fa fa-star checked"></span>
												<span class="fa fa-star "></span>
												</span>
											</c:when>

											<c:when test="${mrt.review_score eq '5'}">
												<span class="fa fa-star checked"></span>
												<span class="fa fa-star checked"></span>
												<span class="fa fa-star checked"></span>
												<span class="fa fa-star checked"></span>
												<span class="fa fa-star checked"></span>
											</c:when>
											<c:otherwise>
											</c:otherwise>

										</c:choose>
									</p>
								</div>
							</div>

						</c:forEach>

						<ul class="pagination justify-content-center">
							<c:if test="${pageNo != 1}">
								<li class="page-item"><a class="page-link"
									href="/rating?pageNo=${pageNo - 1}&limitation=${limitation}">이전</a></li>
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
									href="/rating?pageNo=${pageNo + 1}&limitation=${limitation}">다음</a></li>
							</c:if>
						</ul>
					</div>
					<div class="tab-pane fade" id="profile" role="tabpanel"
						aria-labelledby="profile-tab">
						<br> <br>
						<c:forEach var="rbm" items="${RatingbyMenu}" varStatus="status">

							<div class="card  mb-3 mx-auto" style="max-width: 18rem;">
								<div class="card-header" style="text-align: center;">
									<strong>${rbm.menu_name} </strong>
								</div>
								<div class="card-body" style="text-align: left;">
									<p class="card-text">
										<strong>평균</strong> : ${rbm.goods_avg} 점 
									</p>

									<p class="card-text">
										<strong>평점</strong> :
										<c:choose>
											<c:when
												test="${(rbm.goods_avg >=0 ) &&  (rbm.goods_avg < 0.5 )}">

												<span class="fa fa-star "></span>
												<span class="fa fa-star "></span>
												<span class="fa fa-star "></span>
												<span class="fa fa-star "></span>
												<span class="fa fa-star "></span>
											</c:when>

											<c:when
												test="${(rbm.goods_avg >=0.5 ) &&  (rbm.goods_avg < 1.5 )}">

												<span class="fa fa-star checked"></span>
												<span class="fa fa-star "></span>
												<span class="fa fa-star "></span>
												<span class="fa fa-star "></span>
												<span class="fa fa-star "></span>

											</c:when>

											<c:when
												test="${(rbm.goods_avg >=1.5 ) &&  (rbm.goods_avg < 2.5 )}">
												<span class="fa fa-star checked"></span>
												<span class="fa fa-star checked"></span>
												<span class="fa fa-star "></span>
												<span class="fa fa-star "></span>
												<span class="fa fa-star "></span>
											</c:when>

											<c:when
												test="${(rbm.goods_avg >=2.5 ) &&  (rbm.goods_avg < 3.5 )}">
												<span class="fa fa-star checked"></span>
												<span class="fa fa-star checked"></span>
												<span class="fa fa-star checked"></span>
												<span class="fa fa-star "></span>
												<span class="fa fa-star "></span>

											</c:when>

											<c:when
												test="${(rbm.goods_avg >=3.5 ) &&  (rbm.goods_avg < 4.5 )}">
												<span class="fa fa-star checked"></span>
												<span class="fa fa-star checked"></span>
												<span class="fa fa-star checked"></span>
												<span class="fa fa-star checked"></span>
												<span class="fa fa-star "></span>

											</c:when>

											<c:when
												test="${(rbm.goods_avg >=5 ) &&  (rbm.goods_avg <= 5 )}">
												<span class="fa fa-star checked"></span>
												<span class="fa fa-star checked"></span>
												<span class="fa fa-star checked"></span>
												<span class="fa fa-star checked"></span>
												<span class="fa fa-star checked"></span>
											</c:when>
											<c:otherwise>
											</c:otherwise>

										</c:choose>
									</p>
								</div>
							</div>

						</c:forEach>

					</div>
					<div class="tab-pane fade" id="contact" role="tabpanel"
						aria-labelledby="contact-tab">...</div>
				</div>

				<br> <br> <br> <br> <br> <br> <br>
				<br> <br>
			</div>
			<div class="col col-lg-2"></div>
		</div>




	</div>




</body>




</html>


<script>

</script>

