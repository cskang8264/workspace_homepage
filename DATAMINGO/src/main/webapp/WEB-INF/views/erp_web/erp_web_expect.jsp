<%@ page contentType="text/html;charset=UTF-8"%>
<%-- <%@ include file="../include/head.jsp" %>
<%@ include file="../include/session_checker.jsp" %>

<body>     
<%@ include file="../include/nav.jsp" %> --%>
    
	<div class="container text-center">  
			<BR><BR>
			<h3>검색 조건</h3>
			<form action="/erp/web/sales/insert" method="GET">
			<input type="text" name="direct" value="/erp/web/sales" style="display:none;">
			
				<table class="table table-hover table-borderless table-light ">
					<thead>       	   
						<tr>     
							<th scope="col">고유번호</th>
							<th scope="col">상품명</th>
							<th scope="col">재고보유량</th>
							<th scope="col">정렬순서</th>
							<th scope="col">표시개수</th>
						</tr>
					</thead>   
					<tbody>
						<tr>               
							<th scope="row"><input class="form-control" type="text" name="product_no" placeholder="고유상품명"></th>
							<td><input class="form-control" type="text" name="sales_cnt" placeholder="상품명"></td>
							<td><input class="form-control" type="text" name="sales_cnt" placeholder="100" ></td>
							<td>   
								<select class="form-control">
									<option>최신 등록 날짜 (기본)</option>
									<option>상품명</option>
									<option>재고보유량</option>
									<option>판매량</option>
									<option>오래된 날짜</option>
								</select>
							</td>
							<td>
								<select class="form-control">
									<option>10 (기본)</option>
									<option>20</option>
									<option>30</option>
									<option>50</option>
									<option>전체</option>
								</select>
							</td>
						</tr>
					</tbody>
					
				</table>   
			
			<button type="submit" class="btn btn-outline-dark btn-lg">조건 적용 +</button>
			</form>
			          
		<BR>      
		<hr class="my-4">  
		<BR><BR>       
		
		<table class="table table-hover">
		<thead>
			<tr>
				<th scope="col">상품 번호</th>
				<th scope="col">상품명</th>
				<th scope="col">판매 가격</th>
				<th scope="col">매입 가격</th>
				<th scope="col">상품 수량</th>
				<th scope="col">상품 등록일</th>
				<th scope="col">삭제</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="p" items="${product}" varStatus="status">	
				<tr>
					<td>${p.product_no}</td>
					<td>${p.product_name}</td>
					<td>${p.product_price}</td>
					<td>${p.purchase_cost}</td>
					<td>${p.product_cnt}</td>
					<td>${p.product_timestamp}</td>
					<td><button type="button" class="btn btn-outline-dark" onclick="DELETE(${p.product_pk},'${p.product_no}')">삭제</button></td>
				</tr>
			</c:forEach>
		</tbody>
		</table>      
  
		        
	</div>
</body>

<script>
  
function DELETE(pk,cnt,no){
	document.location.href = "/erp/web/sales/delete?direct=/erp/web/sales&sales_pk="+pk+"&sales_cnt="+cnt+"&product_no="+no;
}

</script>