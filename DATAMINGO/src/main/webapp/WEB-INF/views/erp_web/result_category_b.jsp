<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<select class="form-control" name="category_b_no" id="category_b_no" onchange="CATEGORY_C()">
	<option value="미분류">카테고리 중</option>
	<c:forEach var="c" items="${category_b}" varStatus="status">
		<option value="${c.category_b_no}">${c.category_b_no}</option>
	</c:forEach>
	<option value="미분류">미분류</option>
</select>