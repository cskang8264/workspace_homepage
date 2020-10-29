<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:forEach var="eep" items="${EnterEmoProbByTime}" varStatus="status">

			<input id="EMO_ENTER${status.index}_HOUR" value="${eep.hour}">
			<input id="EMO_ENTER${status.index}_PROB_AVG" value="${eep.avg_prob}">
			<Br>


		</c:forEach>
		<input id="emo_enter_end" value="${fn:length(EnterEmoProbByTime)}"><Br>


		<c:forEach var="oep" items="${OutEmoProbByTime}" varStatus="status">

			<input id="EMO_OUT${status.index}_HOUR" value="${oep.hour}">
			<input id="EMO_OUT${status.index}_PROB_AVG" value="${oep.avg_prob}">
			<Br>


		</c:forEach>
	<input id="emo_out_end" value="${fn:length(OutEmoProbByTime)}"><Br>

