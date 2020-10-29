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
<title>chart</title>

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

			<div class="col-12">
				<Br> <span style="color: red;" class="fas fa-chart-bar"></span><a
					style="margin-left: 10px">월별 주문 현황 한눈에 보기</a>
				<hr>
				<div id="OrderChart" style="height: 370px; width: 100%;"></div>
				<br> <br> <br>
			</div>

			<div class="col-6">
				<span style="color: red;" class="fas fa-chart-bar"></span><a
					style="margin-left: 10px">부문별 주문 현황 분석</a>
				<hr>
				<ul class="nav nav-tabs" id="myTab" role="tablist"
					style="font-size: 11px;">
					<li class="nav-item"><a class="nav-link active" id="date-tab"
						data-toggle="tab" href="#date" role="tab" aria-controls="date"
						aria-selected="false">날짜별 주문 현황 </a></li>
					<li class="nav-item"><a class="nav-link" id="time-tab"
						data-toggle="tab" href="#time" role="tab" aria-controls="time"
						aria-selected="false">시간대별 주문 현황 </a></li>
					<li class="nav-item"><a class="nav-link " id="menu-tab"
						data-toggle="tab" href="#menu" role="tab" aria-controls="menu"
						aria-selected="true">메뉴별 주문 현황 </a></li>
					<li class="nav-item"><a class="nav-link " id="accu-tab"
						data-toggle="tab" href="#accu" role="tab" aria-controls="accu"
						aria-selected="false">누적 주문 현황 </a></li>
					<li class="nav-item"><a class="nav-link" id="target-tab"
						data-toggle="tab" href="#target" role="tab" aria-controls="target"
						aria-selected="false">목표 주문 수량</a></li>

				</ul>
				<div class="tab-content" id="myTabContent">
					<div class="tab-pane fade show active" id="date" role="tabpanel"
						aria-labelledby="date-tab">
						<div style="margin-top: 41px;"></div>
						<div id="OrderChartByDate" style="height: 100%; width: 100%;"></div>
					</div>
					<div class="tab-pane fade" id="time" role="tabpanel"
						aria-labelledby="time-tab">
						<div style="margin-top: 41px;"></div>
						<div id="OrderChartByTime" style="height: 100%; width: 100%;"></div>
					</div>
					<div class="tab-pane fade" id="menu" role="tabpanel"
						aria-labelledby="menu-tab">
						<div style="margin-top: 41px;"></div>
						<div id="OrderChartByMenu" style="height: 100%; width: 100%;"></div>
					</div>
					<div class="tab-pane fade" id="accu" role="tabpanel"
						aria-labelledby="accu-tab">
						<div style="margin-top: 41px;"></div>
						<div id="AccOrderCount" style="height: 100%; width: 100%;"></div>
					</div>
					<div class="tab-pane fade" id="target" role="tabpanel"
						aria-labelledby="target-tab">
						<div style="margin-top: 41px;"></div>
						<div id="targetChart" style="height: 100%; width: 100%;"></div>
					</div>
				</div>



			</div>

			<div class="col-6">
				<span style="color: red;" class="fas fa-chart-bar"></span><a
					style="margin-left: 10px">고객정보 분석</a>
				<hr>
				<ul class="nav nav-tabs" id="myTab2" role="tablist"
					style="font-size: 11px;">
					<li class="nav-item"><a class="nav-link active" id="age-tab"
						data-toggle="tab" href="#age" role="tab" aria-controls="age"
						aria-selected="true">방문 연령대 </a></li>
					<li class="nav-item"><a class="nav-link" id="emo-tab"
						data-toggle="tab" href="#emo" role="tab" aria-controls="emo"
						aria-selected="false">방문 고객감정 현황 </a></li>
					<li class="nav-item"><a class="nav-link" id="newusers-tab"
						data-toggle="tab" href="#newusers" role="tab"
						aria-controls="newusers" aria-selected="false">신규 고객 현황 </a></li>
					<li class="nav-item"><a class="nav-link " id="ad-tab"
						data-toggle="tab" href="#ad" role="tab" aria-controls="ad"
						aria-selected="false">광고수 현황 </a></li>
				</ul>
				<div class="tab-content" id="myTabContent2">
					<div class="tab-pane fade show active" id="age" role="tabpanel"
						aria-labelledby="aget-ab">
						<div style="margin-top: 41px;"></div>
						<div id="agechart" style="height: 100%; width: 100%;"></div>
					</div>
					<div class="tab-pane fade" id="emo" role="tabpanel"
						aria-labelledby="emo-tab">


						<div style="margin-top: 10px; text-align: right;">
							<select id="selectEmo" class="custom-select "
								style="width: 100px; height: 31px; font-size: 12px;">

								<option value="happy" selected>행복함</option>
								<option value="sad">슬픔</option>
								<option value="angry">화남</option>
								<option value="neutral">평온</option>
								<option value="scared">두려움</option>
							</select>

							<button onclick="chooseEmo()" class="btn btn-success btn-sm"
								style="width: 68px;">확인</button>

						</div>
						<div id="emoChart" style="height: 100%; width: 100%;"></div>
					</div>
					<div class="tab-pane fade" id="newusers" role="tabpanel"
						aria-labelledby="newusers-tab">
						<div style="margin-top: 41px;"></div>
						<div id="newCustomerChart" style="height: 100%; width: 100%;"></div>
					</div>
					<div class="tab-pane fade" id="ad" role="tabpanel"
						aria-labelledby="ad-tab">
						<div style="margin-top: 41px;"></div>
						<div id="adCountChart" style="height: 100%; width: 100%;"></div>
					</div>

				</div>

			</div>
			<br> <br> <br>

		</div>

		<div style="display: none;">
			<c:forEach var="ocy" items="${orderCountYear}" varStatus="status">

				<input id="ORDER_YEAR_${status.index}_MONTH" value="${ocy.month}">
				<input id="ORDER_YEAR_${status.index}_CNT" value="${ocy.cnt}">
				<Br>



			</c:forEach>
			<input id="order_year_end" value="${fn:length(orderCountYear)}">
			<Br>


			<c:forEach var="o" items="${orderCount}" varStatus="status">

				<input id="ORDER_${status.index}_DATE" value="${o.date}">
				<input id="ORDER_${status.index}_CNT" value="${o.cnt}">
				<Br>



			</c:forEach>
			<input id="order_end" value="${fn:length(orderCount)}"> <Br>

			<c:forEach var="oc" items="${orderCountByMenu}" varStatus="status">

				<input id="ORDER_${status.index}_MENU" value="${oc.menu_name}">
				<input id="ORDER_${status.index}_CNTBYMENU" value="${oc.menu_count}">
				<Br>


			</c:forEach>
			<input id="order_menu_end" value="${fn:length(orderCountByMenu)}">
			<Br>


			<c:forEach var="ot" items="${orderCountByTime}" varStatus="status">

				<input id="ORDER_${status.index}_HOUR" value="${ot.hour}">
				<input id="ORDER_${status.index}_CNTBYTIME" value="${ot.cnt}">
				<Br>


			</c:forEach>
			<input id="order_hour_end" value="${fn:length(orderCountByTime)}"><Br>


			<div id="emoData">

				<c:forEach var="eep" items="${EnterEmoProbByTime}"
					varStatus="status">

					<input id="EMO_ENTER${status.index}_HOUR" value="${eep.hour}">
					<input id="EMO_ENTER${status.index}_PROB_AVG"
						value="${eep.avg_prob}">
					<Br>


				</c:forEach>
				<input id="emo_enter_end" value="${fn:length(EnterEmoProbByTime)}"><Br>


				<c:forEach var="oep" items="${OutEmoProbByTime}" varStatus="status">

					<input id="EMO_OUT${status.index}_HOUR" value="${oep.hour}">
					<input id="EMO_OUT${status.index}_PROB_AVG" value="${oep.avg_prob}">
					<Br>


				</c:forEach>
				<input id="emo_out_end" value="${fn:length(OutEmoProbByTime)}"><Br>




			</div>


			<h1>age</h1>

			<c:forEach var="oca" items="${CountByAge}" varStatus="status">

				<input id="AGE_CNT_TOTAL" value="${oca.total}">
				<input id="AGE_CNT_10" value="${oca.teenage}">
				<input id="AGE_CNT_20" value="${oca.twenties}">
				<input id="AGE_CNT_30" value="${oca.thirties}">
				<input id="AGE_CNT_40" value="${oca.forties}">
				<Br>


			</c:forEach>
			<input id="order_age_end" value="${fn:length(CountByAge)}"><Br>

			<h1>targetValue</h1>

			<c:forEach var="tv" items="${TargetValue}" varStatus="status">

				<input id="TARGET_SALES" value="${tv.target_sales}">
				<Br>


			</c:forEach>
			<h1>orderWeekCount</h1>
			<c:forEach var="ocw" items="${OrderCountWeek}" varStatus="status">

				<input id="ORDER_CNT_WEEK" value="${ocw.cnt}">
				<Br>


			</c:forEach>





			<h1>UsersByTime</h1>
			<c:forEach var="ubd" items="${UsersByDate}" varStatus="status">

				<input id="USERS_${status.index}_DATE" value="${ubd.date}">
				<input id="USERS_${status.index}_CNT" value="${ubd.users}">

				<Br>


			</c:forEach>
			<input id="uers_date_end" value="${fn:length(UsersByDate)}"><Br>


			<h1>NewUsersByTime</h1>
			<c:forEach var="nubd" items="${NewUserByDate}" varStatus="status">

				<input id="NEW_USERS_${status.index}_DATE"
					value="${nubd.FirstVisitDate}">
				<input id="NEW_USERS_${status.index}_CNT"
					value="${nubd.FirstTimeVisitors}">

				<Br>


			</c:forEach>
			<input id="new_uers_date_end" value="${fn:length(NewUserByDate)}"><Br>


			<h1>adCountByManager</h1>
			<c:forEach var="acbm" items="${adCountByManager}" varStatus="status">

				<input id="AD_${status.index}_DATE" value="${acbm.date}">
				<input id="AD_${status.index}_CNT" value="${acbm.adCnt}">

				<Br>


			</c:forEach>
			<input id="ad_date_end" value="${fn:length(adCountByManager)}"><Br>



		</div>





	</div>




</body>




</html>


<script>
	var endOrder = document.getElementById("order_end").value
	var orderMenuEnd = document.getElementById("order_menu_end").value;
	var orderHourEnd = document.getElementById("order_hour_end").value;
	var orderYearEnd = document.getElementById("order_year_end").value;  
	var emoEnterEnd = document.getElementById("emo_enter_end").value;
	var emoOutEnd = document.getElementById("emo_out_end").value;
	var orderAgeEnd = document.getElementById("order_age_end").value;
	var UserTimeEnd = document.getElementById("uers_date_end").value;
	var NewUserTimeEnd = document.getElementById("new_uers_date_end").value;
	var AdDateEnd = document.getElementById("ad_date_end").value;  
	
	
	
	
	
	var age_10 = document.getElementById("AGE_CNT_10").value;
	var age_20 = document.getElementById("AGE_CNT_20").value;
	var age_30 = document.getElementById("AGE_CNT_30").value;
	var age_40 = document.getElementById("AGE_CNT_40").value;

	var target_sales = document.getElementById("TARGET_SALES").value;
	var orderCountWeek,
    orderCountWeekElement = document.getElementById("ORDER_CNT_WEEK");
    if(orderCountWeekElement != null){
    	orderCountWeek = orderCountWeekElement.value
    }else{
		
		 orderCountWeek = 0
	}

	target_sales = parseInt(target_sales)
	orderCountWeek = parseInt(orderCountWeek);
	
	age_10 = parseInt(age_10)
	age_20 = parseInt(age_20)
	age_30 = parseInt(age_30)
	age_40 = parseInt(age_40)

	var total_age_count = age_10 + age_20 + age_30 + age_40
	total_age_count = parseInt(total_age_count)

	age_10 = Math.round((age_10 / total_age_count) * 100)
	age_20 = Math.round((age_20 / total_age_count) * 100)
	age_30 = Math.round((age_30 / total_age_count) * 100)
	age_40 = Math.round((age_40 / total_age_count) * 100)

	var orderArray = new Array();
	var accOrderArray = new Array();
	var OrderByMenuArray = new Array();
	var OrderByHourArray = new Array();
	var OrderByYearArray = new Array();
	var EmoEnterArray = new Array();
	var EmoOutArray = new Array();
	var UserByDateArray = new Array();
	var NewUserByDateArray = new Array();
	var AdCountByMangerArray = new Array();

	function toogleDataSeries(e) {
		if (typeof (e.dataSeries.visible) === "undefined"
				|| e.dataSeries.visible) {
			e.dataSeries.visible = false;
		} else {
			e.dataSeries.visible = true;
		}
		lineChart.render();
	}
	//pass to data
	
	
	for (var i = 0; i < orderYearEnd; i++) {
		
		if(document.getElementById("ORDER_YEAR_" + i + "_MONTH") == null ){
			var month = 0

			var cnt = 0
			
		}else{
			var month = document.getElementById("ORDER_YEAR_" + i + "_MONTH").value

			var cnt = document.getElementById("ORDER_YEAR_"+ i + "_CNT").value
			
		}

	
		cnt = parseInt(cnt)
		
		OrderByYearArray.push({
			x : month,
			y : cnt
		})

	}
	for (var i = 0; i < AdDateEnd; i++) {
		var date = 0
		var cnt = 0
		 date = document.getElementById("AD_" + i + "_DATE").value

		 cnt = document.getElementById("AD_" + i + "_CNT").value
		cnt = parseInt(cnt)

		var year = date.substring(0, 4);
		var month = date.substring(5, 7);
		month = month - 1;
		var day = date.substring(8, 10);
		date = new Date(year, month, day)
		AdCountByMangerArray.push({
			x : date,
			y : cnt
		})

	}
	
	for (var i = 0; i < NewUserTimeEnd; i++) {
		var date = 0
		var cnt = 0

		 date = document.getElementById("NEW_USERS_" + i + "_DATE").value

		 cnt = document.getElementById("NEW_USERS_" + i + "_CNT").value
		cnt = parseInt(cnt)

		var year = date.substring(0, 4);
		var month = date.substring(5, 7);
		month = month - 1;
		var day = date.substring(8, 10);
		date = new Date(year, month, day)
		NewUserByDateArray.push({
			x : date,
			y : cnt
		})

	}

	for (var i = 0; i < UserTimeEnd; i++) {
		var date = 0
		var cnt = 0

		 date = document.getElementById("USERS_" + i + "_DATE").value

		 cnt = document.getElementById("USERS_" + i + "_CNT").value
		cnt = parseInt(cnt)

		var year = date.substring(0, 4);
		var month = date.substring(5, 7);
		month = month - 1;
		var day = date.substring(8, 10);
		date = new Date(year, month, day)

		UserByDateArray.push({
			x : date,
			y : cnt
		})

	}
	
	
	for (var i = 0; i < emoOutEnd; i++) {
		var hour = 0
		var avg_prob = 0

		 hour = document.getElementById("EMO_OUT" + i + "_HOUR").value
		hour = parseInt(hour)
		 avg_prob = document.getElementById("EMO_OUT" + i + "_PROB_AVG").value
		avg_prob = parseFloat(avg_prob)

		EmoOutArray.push({
			x : hour,
			y : avg_prob
		})

	}
	for (var i = 0; i < emoEnterEnd; i++) {
		var hour = 0
		var avg_prob = 0

		 hour = document.getElementById("EMO_ENTER" + i + "_HOUR").value
		hour = parseInt(hour)
		 avg_prob = document.getElementById("EMO_ENTER" + i + "_PROB_AVG").value
		avg_prob = parseFloat(avg_prob)

		EmoEnterArray.push({
			x : hour,
			y : avg_prob
		})

	}
	for (var i = 0; i < orderHourEnd; i++) {
		
		var hour = 0 
		var cnt = 0 
	

			 hour = document.getElementById("ORDER_" + i + "_HOUR").value
		hour = parseInt(hour)
		 cnt = document.getElementById("ORDER_" + i + "_CNTBYTIME").value
		cnt = parseInt(cnt)

		OrderByHourArray.push({
			x : hour,
			y : cnt
		})

	}

	for (var i = 0; i < endOrder; i++) {
		if(document.getElementById("ORDER_" + i + "_DATE")!=null){
			var date1 = document.getElementById("ORDER_" + i + "_DATE").value
			var cnt = document.getElementById("ORDER_" + i + "_CNT").value
			cnt = parseInt(cnt)
			var year = date1.substring(0, 4);
			var month = date1.substring(4, 6);
			month = month - 1;
			var day = date1.substring(6, 8);
			var date = new Date(year, month, day)
			orderArray.push({
				x : date,
				y : cnt
			})
			
		}else{
			orderArray.push({
				x :  "데이터를 입력해주세요.",
				y :  "데이터를 입력해주세요."
			})
			
		}
	

		

	}

	for (var i = 0; i < endOrder - 1; i++) {
		if(document.getElementById("ORDER_" + i + "_DATE")!=null) {
			
			var date1 = document.getElementById("ORDER_" + i + "_DATE").value
			 var cnt = cnt
					+ parseInt(document.getElementById("ORDER_" + i + "_CNT").value)

			cnt = parseInt(cnt)
			var year = date1.substring(0, 4);
			var month = date1.substring(4, 6);
			month = month - 1;
			var day = date1.substring(6, 8);
			var date = new Date(year, month, day)
			accOrderArray.push({
				x : date,
				y : cnt
			})
			
			
			
		}else{
			
			accOrderArray.push({
				x : "데이터를 입력해주세요.",
				y : "데이터를 입력해주세요."
			})
			
		}

	

	}

	for (var i = 0; i < orderMenuEnd; i++) {
		if( document.getElementById("ORDER_" + i + "_MENU")!= null){
			
			
			var menu = document.getElementById("ORDER_" + i + "_MENU").value
			var cnt = document.getElementById("ORDER_" + i + "_CNTBYMENU").value
		cnt = parseInt(cnt)
		OrderByMenuArray.push({
			label : menu,
			y : cnt
		})
			
		}else{
			
			OrderByMenuArray.push({
				label : "메뉴데이터 입력필요",
				y : 0
			})
			
		}
		


		
	}

	window.onload = function() {

		//colorSet

		CanvasJS.addColorSet("dougnutColorSet", [//colorSet Array

		"#ff4040", "#EDDE45", "#3ec5f1", "#6c7a89", "#3e44ef", "#ff00ff",
				"#079999", "#ff8a2b"

		]);
		//make chart
		var chart1 = new CanvasJS.Chart("OrderChart", {
			animationEnabled : true,
			theme : "light2", // "light1", "light2", "dark1", "dark2"
			title : {
				text : "월별 주문현황",
				fontFamily : "calibri",
				fontSize : "25",
				fontStyle : "normal",
				fontWeight :"normal",
				margin: 15,
			},
			axisX : {
				maximum:12,
				interval : 1,
				intervalType : "month",
				valueFormatString : "## 월"
				
			},
			axisY : {
				interval : 1,
				valueFormatString : "### 개 "
				
			},
			toolTip : {
				enabled : false,
			},
			data : [ {
				color : "#fc3f61",
				type : "column",
				legendMarkerColor : "grey",
				xValueFormatString : "##월",
				dataPoints : OrderByYearArray
			} ]
		});
		chart1.render();

		var chart3 = new CanvasJS.Chart("AccOrderCount", {
			animationEnabled : true,
			title : {
				text : "누적 주문수",
				ontFamily : "calibri",
				fontSize : "25",
				fontStyle : "normal",
				fontWeight :"normal",
				margin: 15,
			},
			axisX : {
				interval : 3,
				intervalType : "day",
				valueFormatString : "DD-MMM",
				labelAngle : -50
			},
			axisY : {
				interval : 5,
				valueFormatString : "#0.# 개 "
			},
			data : [ {
				type : "splineArea",
				color : "#ff8a2b",
				markerSize : 5,
				yValueFormatString : "#0.# 개 ",
				dataPoints : accOrderArray
			} ]

		});
		chart3.render();

		var chart4 = new CanvasJS.Chart("OrderChartByMenu", {
			animationEnabled : true,
			theme : "light2", // "light1", "light2", "dark1", "dark2"
			title : {
				text : "메뉴별 주문현황  ",
				ontFamily : "calibri",
				fontSize : "25",
				fontStyle : "normal",
				fontWeight :"normal",
				margin: 15,
			},

			axisY : {
				interval : 1,
				valueFormatString : "### 개 "
			},
			toolTip : {
				enabled : false,
			},
			dataPointMaxWidth : 60,
			data : [ {
				color : "#51cda0",
				type : "column",
				legendMarkerColor : "grey",
				dataPoints : OrderByMenuArray
			} ]
		});
		chart4.render();

		var lineChartByDate = new CanvasJS.Chart("OrderChartByDate", {
			animationEnabled : true,
			theme : "light2",
			title : {
				text : "날짜별 주문현황",
				ontFamily : "calibri",
				fontSize : "25",
				fontStyle : "normal",
				fontWeight :"normal",
				margin: 15,
			},
			axisX : {
				title : "날짜 별",
				interval : 3,
				intervalType : "day",
				valueFormatString : "DD-MMM",
				labelAngle : -50,
				crosshair : {
					enabled : true,
					snapToDataPoint : true
				}
			},
			axisY : {
				title : "주문수",
				valueFormatString : "### 개 ",
				crosshair : {
					enabled : true
				}
			},
			toolTip : {
				shared : true
			},
			legend : {
				cursor : "pointer",
				verticalAlign : "bottom",
				horizontalAlign : "left",
				dockInsidePlotArea : true,
				itemclick : toogleDataSeries
			},
			data : [ {
				type : "line",
				showInLegend : true,
				name : "날짜별 주문추이 ",
				markerType : "square",
				
			    yValueFormatString: " #### 개 ",
				color : "#3ec5f1",
				dataPoints : orderArray
			} ]
		});
		lineChartByDate.render();

		var lineChartByTime = new CanvasJS.Chart("OrderChartByTime", {
			animationEnabled : true,
			theme : "light2",
			title : {
				text : "시간대별 주문현황",
				ontFamily : "calibri",
				fontSize : "25",
				fontStyle : "normal",
				fontWeight :"normal",
				margin: 15,
			},
			axisX : {
				title : "시간대 별",
				valueFormatString : "### 시 ",
				crosshair : {
					enabled : true,
					snapToDataPoint : true
				}
			},
			axisY : {
				title : "주문수",
				valueFormatString : "### 개 ",
				crosshair : {
					enabled : true
				}
			},
			toolTip : {
				shared : true
			},
			legend : {
				cursor : "pointer",
				verticalAlign : "bottom",
				horizontalAlign : "left",
				dockInsidePlotArea : true,
				itemclick : toogleDataSeries
			},
			data : [ {
				type : "line",
				showInLegend : true,
				name : "시간대별 주문현황  ",
				markerType : "square",

				color : "#F08080",
				dataPoints : OrderByHourArray
			} ]
		});
		lineChartByTime.render();

		var emoChart = new CanvasJS.Chart("emoChart", {
			animationEnabled : true,
			theme : "light2",
			title : {
				text : "방문고객 감정추이",
				ontFamily : "calibri",
				fontSize : "25",
				fontStyle : "normal",
				fontWeight :"normal",
				margin: 15,
			},
			axisX : {
				title : "방문시점",
				valueFormatString : "### 시 ",
				crosshair : {
					enabled : true,
					snapToDataPoint : true
				}
			},
			axisY : {
				title : "감정 수치",
				maximum : 1,
				interval : 0.1,
				crosshair : {
					enabled : true
				}
			},
			toolTip : {
				shared : true
			},
			legend : {
				cursor : "pointer",
				verticalAlign : "bottom",
				horizontalAlign : "left",
				dockInsidePlotArea : true,
				itemclick : toogleDataSeries
			},
			data : [ {
				type : "line",
				showInLegend : true,
				name : "고객 주문 시점",
				markerType : "square",

				color : "#F08080",
				dataPoints : EmoEnterArray
			}, {
				type : "line",
				showInLegend : true,
				name : "고객 퇴장 시점  ",
				lineDashType : "dash",
				dataPoints : EmoOutArray
			} ]
		});
		emoChart.render();

		var pieChart = new CanvasJS.Chart("agechart", {
			exportEnabled : true,
			animationEnabled : true,
			colorSet : "dougnutColorSet",
			title : {
				text : "방문고객 연령비율",
				ontFamily : "calibri",
				fontSize : "25",
				fontStyle : "normal",
				fontWeight :"normal",
				margin: 15,
			},
			data : [ {
				type : "doughnut",
				innerRadius : 60,
				showInLegend : true,
				toolTipContent : "{name}: <strong>{y}%</strong>",
				indexLabel : "{name} - {y}%",
				dataPoints : [ {
					y : age_10,
					name : "10대 ",
					exploded : true
				}, {
					y : age_20,
					name : "20대"
				}, {
					y : age_30,
					name : "30대"
				}, {
					y : age_40,
					name : "40대"
				}, {
					y : 0,
					name : "50대"
				}, {
					y : 0,
					name : "60대"
				}, {
					y : 0,
					name : "70대"
				}, {
					y : 0,
					name : "80대"
				}

				]
			} ]
		});
		pieChart.render();

		var targetChart = new CanvasJS.Chart("targetChart", {
			animationEnabled : true,
			theme : "light2", // "light1", "light2", "dark1", "dark2"
			title : {
				text : "목표주문량",
				ontFamily : "calibri",
				fontSize : "25",
				fontStyle : "normal",
				fontWeight :"normal",
				margin: 15,
			},
			subtitles : [ {
				text : "최근 1주간 주문량"
			} ],

			axisY : {
				suffix : "개",
				maximum : 120,
				lineColor : "red",
				stripLines : [ {
					startValue : target_sales,
					endValue : target_sales + 20,
					color : "#eda1a1",

					opacity : ".1"
				}, {
					startValue : 120,
					endValue : 120,
					color : "#red",

					opacity : ".1"
				} ]
			},
			dataPointMaxWidth : 60,
			data : [ {
				type : "column",
				yValueFormatString : "#,##0개",
				dataPoints : [ {
					label : "주문수량",
	
				 	y : orderCountWeek, 
					color : "#f2e87d"
				}

				]
			} ]
		});
		targetChart.render();

		var newCustomerChart = new CanvasJS.Chart("newCustomerChart", {
			animationEnabled : true,
			title : {
				text : "신규고객현황",
				ontFamily : "calibri",
				fontSize : "25",
				fontStyle : "normal",
				fontWeight :"normal",
				margin: 15,
			},
			axisX : {
				title : "날짜"
			},
			axisY : {
				title : "고객",
				valueFormatString : "### 명 ",
			},
			legend : {
				verticalAlign : "top",
				horizontalAlign : "right",
				dockInsidePlotArea : true
			},
			toolTip : {
				shared : true
			},
			data : [ {
				name : "고객",
				showInLegend : true,
				legendMarkerType : "square",
				type : "area",
				color : "#3EC5F1",
				markerSize : 0,
				dataPoints : UserByDateArray
			}, {
				name : "신규고객",
				showInLegend : true,
				legendMarkerType : "square",
				type : "area",
				color : "#edde45",
				markerSize : 0,
				dataPoints : NewUserByDateArray
			} ]
		});

		newCustomerChart.render();

		var adCountChart = new CanvasJS.Chart("adCountChart", {
			animationEnabled : true,
			theme : "light2",
			title : {
				text : "날짜별 광고현황",
				ontFamily : "calibri",
				fontSize : "25",
				fontStyle : "normal",
				fontWeight :"normal",
				margin: 15,
			},
			axisX : {
				title : "날짜 별",

				crosshair : {
					enabled : true,
					snapToDataPoint : true
				}
			},
			axisY : {
				title : "광고수",
				valueFormatString : "### 개",
				interval : 1,
				crosshair : {
					enabled : true
				}
			},
			toolTip : {
				shared : true
			},
			legend : {
				cursor : "pointer",
				verticalAlign : "bottom",
				horizontalAlign : "left",
				dockInsidePlotArea : true,
				itemclick : toogleDataSeries
			},
			data : [ {
				type : "line",
				showInLegend : true,
				name : "날짜별 광고추이 ",
				markerType : "square",

				color : "#ffe500",
				dataPoints : AdCountByMangerArray
			} ]
		});

		adCountChart.render();

	}
	
	
	

	function chooseEmo(){
	var e = document.getElementById("selectEmo");
	var selectedemo=e.options[e.selectedIndex].value;
	console.log(selectedemo)

		$.ajax({
			url: 'emochart',
			type:'GET',
			data: {
				'emo' : selectedemo,
		
			},
			success:function(result_data){
				console.log(result_data)
				document.getElementById("emoData").innerHTML = result_data;
				
				var emoEnterEnd = document.getElementById("emo_enter_end").value;
				var emoOutEnd = document.getElementById("emo_out_end").value;
				EmoEnterArray = []
				EmoOutArray	= []
					for (var i = 0; i < emoOutEnd; i++) {

						var hour = document.getElementById("EMO_OUT" + i + "_HOUR").value
						hour = parseInt(hour)
						var avg_prob = document.getElementById("EMO_OUT" + i + "_PROB_AVG").value
						avg_prob = parseFloat(avg_prob)

						EmoOutArray.push({
							x : hour,
							y : avg_prob
						})

					}
					for (var i = 0; i < emoEnterEnd; i++) {

						var hour = document.getElementById("EMO_ENTER" + i + "_HOUR").value
						hour = parseInt(hour)
						var avg_prob = document.getElementById("EMO_ENTER" + i + "_PROB_AVG").value
						avg_prob = parseFloat(avg_prob)

						EmoEnterArray.push({
							x : hour,
							y : avg_prob
						})

					}
					
					var emoChart = new CanvasJS.Chart("emoChart", {
						animationEnabled : true,
						theme : "light2",
						title : {
							text : "방문고객 감정추이",
							ontFamily : "calibri",
							fontSize : "25",
							fontStyle : "normal",
							fontWeight :"normal",
							margin: 15,
						},
						axisX : {
							title : "방문시점",
							valueFormatString : "### 시 ",
							crosshair : {
								enabled : true,
								snapToDataPoint : true
							}
						},
						axisY : {
							title : "감정 수치",
							maximum : 1,
							interval : 0.1,
							crosshair : {
								enabled : true
							}
						},
						toolTip : {
							shared : true
						},
						legend : {
							cursor : "pointer",
							verticalAlign : "bottom",
							horizontalAlign : "left",
							dockInsidePlotArea : true,
							itemclick : toogleDataSeries
						},
						data : [ {
							type : "line",
							showInLegend : true,
							name : "고객 주문 시점",
							markerType : "square",

							color : "#F08080",
							dataPoints : EmoEnterArray
						}, {
							type : "line",
							showInLegend : true,
							name : "고객 퇴장 시점  ",
							lineDashType : "dash",
							dataPoints : EmoOutArray
						} ]
					});
				emoChart.render();
				
				
				
		

				
				
			},
			error:function(jqXHR, textStatus, errorThrown){
			    alert("오류가 발생하였습니다.. : \n" + textStatus + " : " + errorThrown);
			}
		})  
	}

</script>

