<%@ page contentType="text/html;charset=UTF-8"%>
<%-- <%@ include file="../include/head.jsp" %>
<%@ include file="../include/session_checker.jsp" %>

<body>     
<%@ include file="../include/nav.jsp" %> --%>

	<div class="container text-center">  
			<BR><BR>
			<table class="table table-hover">
				<thead>       	   
					<tr>   
						<th scope="col"><a href="/erp/web/product" class="btn btn-outline-primary btn-lg btn-block" role="button" aria-pressed="true">상품</a></th>
						<th scope="col"><a href="/erp/web/purchase" class="btn btn-primary btn-lg btn-block" role="button" aria-pressed="true">재고</a></th>
						<th scope="col"><a href="/erp/web/sales" class="btn btn-outline-primary btn-lg btn-block" role="button" aria-pressed="true">매출</a></th>
					</tr>
				</thead>   
			</table>   
		<BR>      
		<p class="lead">재고 수동 입력</p>
		<form action="/erp/web/purchase/insert" method="GET">
			<input type="text" name="direct" value="/erp/web/purchase" style="display:none;">
			<table class="table table-hover table-dark">
				<thead>   
					<tr>
						<th scope="col">상품 고유 번호</th>
						<th scope="col">매입 수량</th>
					</tr>
				</thead>
				<tbody>    
					<tr>           
						<th scope="row"><input class="form-control" type="text" name="product_no" placeholder="DE000039" autofocus></th>
						<td><input class="form-control" type="text" name="purchase_cnt" placeholder="100"></td>
					</tr>
				</tbody>
			</table>       
			<button type="submit" class="btn btn-outline-dark btn-lg">추가 입력 +</button><div>또는 엔터</div>
		</form>
		<BR><BR>       
		<table class="table table-hover">
		<thead>
			<tr>
				<th scope="col">상품 번호</th>
				<th scope="col">매입 수량</th>
				<th scope="col">매입 일자</th>
				<th scope="col">삭제</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="p" items="${purchase}" varStatus="status">	
				<tr>
					<td>${p.product_no}</td>
					<td>${p.purchase_cnt}</td>
					<td>${p.purchase_timestamp}</td>
					<td><button type="button" class="btn btn-outline-dark" onclick="DELETE(${p.purchase_pk},${p.purchase_cnt},'${p.product_no}')">삭제</button></td>
				</tr>
			</c:forEach>
		</tbody>
		</table>      
  
  	</div>  
</body>

<script>
  
function DELETE(pk,cnt,no){
	document.location.href = "/erp/web/purchase/delete?direct=/erp/web/purchase&purchase_pk="+pk+"&purchase_cnt="+cnt+"&product_no="+no;
}

</script>