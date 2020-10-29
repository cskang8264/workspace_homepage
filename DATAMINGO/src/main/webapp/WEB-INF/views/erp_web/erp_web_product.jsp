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
						<th scope="col"><a href="/erp/web/product" class="btn btn-primary btn-lg btn-block" role="button" aria-pressed="true">상품</a></th>
						<th scope="col"><a href="/erp/web/purchase" class="btn btn-outline-primary btn-lg btn-block" role="button" aria-pressed="true">재고</a></th>
						<th scope="col"><a href="/erp/web/sales" class="btn btn-outline-primary btn-lg btn-block" role="button" aria-pressed="true">매출</a></th>
					</tr>
				</thead>     
			</table>   
		<BR>      
		<p class="lead">상품 수동 입력</p>   
		<form action="/erp/web/product/insert" method="GET">
			<input type="text" name="direct" value="/erp/web/product" style="display:none;">
			<table class="table table-hover table-dark">
				<thead>   
					<tr>   
						<th scope="col">상품 이름 (중복 불가)</th>
						<th scope="col">매입 가격</th>
						<th scope="col">판매 가격</th>
						<th scope="col">상품 설명</th>
					</tr>
				</thead>
				<tbody>        
					<tr>      
						<th scope="row"><input class="form-control" type="text" name="product_no" autofocus></th>
						<td><input class="form-control" type="text" name="purchase_cost"></td>
						<td><input class="form-control" type="text" name="sales_price"></td>
						<td><input class="form-control" type="text" name="product_name" placeholder="필요시 입력"></td>
					</tr>
					<tr class="table-light">          
						<td><a class="btn btn-outline-dark" href="/erp/web/category" role="button">카테고리 설정</a></td>
						<td>
							<select class="form-control" name="category_a_no" id="category_a_no" onchange="CATEGORY_B()">
								<option value="미분류">카테고리 대</option>
								<c:forEach var="c1" items="${category_a}" varStatus="status">
									<option value="${c1.category_a_no}">${c1.category_a_no}</option>
								</c:forEach>
								<option value="미분류">미분류</option>
							</select>
						</td> 
						<td>
							<select class="form-control" name="category_b_no" id="category_b_no" onchange="CATEGORY_C()">
								<option value="미분류">카테고리 중</option>
							</select>
						</td> 
						<td>
							<select class="form-control" name="category_c_no" id="category_c_no">
								<option value="미분류">카테고리 소</option>
							</select>
						</td>  
					</tr>
				</tbody>
			</table>       
   			<button type="submit" class="btn btn-outline-dark btn-lg">추가 입력 +</button>
			<div>또는 엔터</div>
		</form>
		<BR>
		<div class="text-left"><button type="button" class="btn btn-outline-dark" onclick="DISPLAY_ON()">조건 설정</button></div><br>
		<div id="search_condition" style="display:none;">
			<form action="/erp/web/product" method="GET">
			<input class="form-control" type="text" name="search" value="true" style="display:none;">
			<table class="table table-hover table-borderless">
				<tbody>      
					<tr>
						<th scope="row">상품 이름</th>
						<td colspan="2"><input class="form-control" type="text" name="product_no" value="" placeholder="상품 이름"></td>
						<th scope="row">상품 설명</th>
						<td colspan="2"><input class="form-control" type="text" name="product_name" value="" placeholder="상품 설명"></td>
					</tr>
					<tr>      
						<th scope="row">매입 가격</th>
						<td><input class="form-control" type="text" name="purchase_cost_min" value="" placeholder="최소"></td>
						<td><input class="form-control" type="text" name="purchase_cost_max" value="" placeholder="최대"></td>
						<th scope="row">판매 가격</th>
						<td><input class="form-control" type="text" name="sales_cost_min" value="" placeholder="최소"></td>
						<td><input class="form-control" type="text" name="sales_cost_max" value="" placeholder="최대"></td>
					</tr>
					<tr>
						<th scope="row">정렬 기준</th>
						<td colspan="2">
							<select class="form-control" name="order_type">
								<option value="product_timestamp">업데이트 날짜 기준 (기본)</option>
								<option value="product_no">상품명 기준</option>
								<option value="category_a_no">카테고리명 기준</option>
							</select>
						</td>						
						<th scope="row">분류 (대)</th>
						<td colspan="2">
							<select class="form-control" name="category_a_no">
								<option  value="DO_NOT_HAVE_CONDITION">카테고리 대</option>
								<c:forEach var="c500" items="${category_a}" varStatus="status">
									<option value="${c500.category_a_no}">${c500.category_a_no}</option>
								</c:forEach>   
								<option value="미분류">미분류</option>
								<option value="">전체</option>
							</select>
						</td>
					</tr>  
					<tr>                  
						<th scope="row">표시 개수</th>
						<td colspan="2">							
							<select class="form-control" name="limitation">
								<option value="20">20 (기본)</option>
								<option value="30">30</option>
								<option value="50">50</option>
								<option value="100">100</option>
								<option value="DO_NOT_HAVE_CONDITION">전체</option>
							</select>
						</td>
						<td class="text-right" colspan="3"><button type="submit" class="btn btn-primary">SEARCH</button></td>
					</tr>
				</tbody>   
			</table>      
		</div>    
		<br>      
		<table class="table table-hover table-borderless">
		</form>
		<thead>
			<tr>           
				<th scope="col">상품 이름</th>
				<th scope="col">상품 설명</th>
				<th scope="col">매입 가격</th>
				<th scope="col">판매 가격</th>
				<th scope="col">상품 등록일</th>
				<th scope="col">수정</th>
				<th scope="col">삭제</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="p" items="${product}" varStatus="status">	
				<tr id="TABLE_${p.product_pk}">
					<td><input class="form-control" type="text" id="TABLE_${p.product_pk}_NO" value="${p.product_no}"></td>
					<td><input class="form-control" type="text" id="TABLE_${p.product_pk}_NAME" value="${p.product_name}"></td>
					<td><input class="form-control" type="text" id="TABLE_${p.product_pk}_COST" value="${p.purchase_cost}"></td>
					<td><input class="form-control" type="text" id="TABLE_${p.product_pk}_PRICE" value="${p.sales_price}"></td>
					<td>${p.product_timestamp}</td>
					<td><button type="button" class="btn btn-outline-dark" style="word-break: keep-all;" onclick="UPDATE(${p.product_pk},'${p.product_no}')">수정</button></td>
					<td><button type="button" class="btn btn-outline-dark" style="word-break: keep-all;" onclick="DELETE(${p.product_pk},'${p.product_no}')">삭제</button></td>
				</tr>
			</c:forEach>
		</tbody>
		</table>      
	</div>
</body>
		
         
<script>  
function DELETE(pk,no){
	$.ajax({
		url: '/erp/web/product/delete',
		type:'POST',
		data: { 
			'product_pk' : pk,
			'product_no' : no
		},
		success:function(result_data){
			if(result_data=='success'){
				document.getElementById("TABLE_"+pk).setAttribute('style','display:none;');
			}
		},
		error:function(jqXHR, textStatus, errorThrown){
		    alert("오류가 발생하였습니다.. : \n" + textStatus + " : " + errorThrown);
		}
	})  
}

function UPDATE(pk,no){
	const updated_no = document.getElementById("TABLE_"+pk+"_NO").value;
	const product_name = document.getElementById("TABLE_"+pk+"_NAME").value;
	const purchase_cost = document.getElementById("TABLE_"+pk+"_COST").value;
	const sales_price = document.getElementById("TABLE_"+pk+"_PRICE").value;
	$.ajax({
		url: '/erp/web/product?update',
		type:'POST',
		data: { 
			'product_pk' : pk,
			'product_no' : no,
			'updated_no' : updated_no,
			'product_name' : product_name,
			'purchase_cost' : purchase_cost,
			'sales_price' : sales_price
		},
		success:function(result_data){
			if(result_data=='success'){
				document.getElementById("TABLE_"+pk).setAttribute('class','table-primary');
			}
		},
		error:function(jqXHR, textStatus, errorThrown){
		    alert("오류가 발생하였습니다.. : \n" + textStatus + " : " + errorThrown);
		}
	})  
}

function CATEGORY_B() {
  const category_a_no = document.getElementById("category_a_no").value;
  console.log(category_a_no);
  
  $.ajax({
	    url: '/erp/web/product?category_b',
	    type:'POST',
	    data: { 	
	    	'category_a_no' : category_a_no, 'CATEGORY_B':'CATEGORY_B'
	    	},
	    success:function(result_data){
	    	document.getElementById("category_b_no").innerHTML = result_data;
	    },
	    error:function(jqXHR, textStatus, errorThrown){
	        alert("오류가 발생하였습니다.. : \n" + textStatus + " : " + errorThrown);
	    }
	})  

}

function CATEGORY_C() {
	  const category_b_no = document.getElementById("category_b_no").value;
	  console.log(category_b_no);
	  
	  $.ajax({
		    url: '/erp/web/product?category_c',
		    type:'POST',
		    data: { 	
		    	'category_b_no' : category_b_no, 'CATEGORY_C':'CATEGORY_C'
		    	},
		    success:function(result_data){
		    	document.getElementById("category_c_no").innerHTML = result_data;
		    },
		    error:function(jqXHR, textStatus, errorThrown){
		        alert("오류가 발생하였습니다.. : \n" + textStatus + " : " + errorThrown);
		    }
		})  

	}

function DISPLAY_ON(){
	document.getElementById("search_condition").style.display="block";
	}
  
</script>

<style>
table th {
	word-break: keep-all;
}
</style>