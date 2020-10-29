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
						<th scope="col"><a href="/erp/web/category/a" class="btn btn-primary btn-lg btn-block" role="button" aria-pressed="true">카테고리 대</a></th>
						<th scope="col"><a href="/erp/web/category/b" class="btn btn-outline-primary btn-lg btn-block" role="button" aria-pressed="true">카테고리 중</a></th>
						<th scope="col"><a href="/erp/web/category/c" class="btn btn-outline-primary btn-lg btn-block" role="button" aria-pressed="true">카테고리 소</a></th>
						<th scope="col"><a href="/erp/web/product" class="btn btn-outline-primary btn-lg btn-block" role="button" aria-pressed="true">상품으로 돌아가기</a></th>
					</tr>
				</thead> 
			</table>   
		<BR>      
		<p class="lead">카테고리 설정</p>
		<form action="/erp/web/category/a?insert" method="POST">
			<input type="text" name="direct" value="/erp/web/category/a" style="display:none;">
			<table class="table table-hover table-dark">
				<thead>   
					<tr>   
						<th scope="col">카테고리 대 이름 (중복 불가)</th>
						<th scope="col">카테고리 대 설명</th>
					</tr>
				</thead>
				<tbody>     
					<tr>      
						<th scope="row"><input class="form-control" type="text" name="category_a_no" autofocus></th>
						<td><input class="form-control" type="text" name="category_a_name" placeholder="필요시 입력"></td>
					</tr>
				</tbody>
			</table>       
			<button type="submit" class="btn btn-outline-dark btn-lg">추가 입력 +</button><div>또는 엔터</div>
		</form>
		<BR><BR>       
		<table class="table table-hover">
		<thead>
			<tr>
				<th scope="col">카테고리 이름</th>
				<th scope="col">카테고리 설명</th>
				<th scope="col">등록일</th>
				<th scope="col">수정</th>
				<th scope="col">삭제</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="c" items="${category_a}" varStatus="status">	
				<tr id="TABLE_${c.category_a_pk}">
					<td><input class="form-control" type="text" id="TABLE_${c.category_a_pk}_NO" value="${c.category_a_no}"></td>
					<td><input class="form-control" type="text" id="TABLE_${c.category_a_pk}_NAME" value="${c.category_a_name}"></td>
					<td>${c.category_a_timestamp}</td>
					<td><button type="button" class="btn btn-outline-dark" style="word-break: keep-all;" onclick="UPDATE(${c.category_a_pk},'${c.category_a_no}')">수정</button></td>
					<td><button type="button" class="btn btn-outline-dark" style="word-break: keep-all;" onclick="DELETE(${c.category_a_pk},'${c.category_a_no}')">삭제</button></td>
				</tr>
			</c:forEach>
		</tbody>
		</table>      
	</div>
</body>
		
      
<script>  
function DELETE(pk,no){
	$.ajax({
		url: '/erp/web/category/a?delete',
		type:'POST',
		data: { 
			'category_a_pk' : pk,
			'category_a_no' : no
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
	const category_a_name = document.getElementById("TABLE_"+pk+"_NAME").value;
	$.ajax({
		url: '/erp/web/category/a?update',
		type:'POST',
		data: { 
			'category_a_pk' : pk,
			'category_a_no' : no,
			'updated_no' : updated_no,
			'category_a_name' : category_a_name
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
</script>

<style>
table th {
	word-break: keep-all;
}
</style>