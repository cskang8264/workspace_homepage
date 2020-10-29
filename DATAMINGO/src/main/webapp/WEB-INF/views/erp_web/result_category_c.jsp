<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<select class="form-control" name="category_c_no" id="category_c_no">
	<option value="미분류">카테고리 소</option>
	<c:forEach var="c4000" items="${category_c}" varStatus="status">
		<option value="${c4000.category_c_no}">${c4000.category_c_no}</option>
	</c:forEach>
	<option value="미분류">미분류</option>
</select>