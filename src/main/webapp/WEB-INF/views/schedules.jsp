<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<section class="sub-bnr sub-404" data-stellar-background-ratio="0.3">
    <div class="overlay-gr">
      <div class="container">
        <h2>Schedule_Inventory</h2>
        <p>시간표 관리 페이지입니다.</p>
      </div>
    </div>
</section>
  
<!-- Breadcrumb -->
<ol class="breadcrumb">
  <li> <a href="<c:url value="/"/>" > Home </a> </li>
  <li class="active">Schedule_Inventory</li>
</ol>

<!-- CONTENT START -->
<div class="content">
  <div class="container">
  	<!-- student-page -->
	<div class="student-page text-center">
		<h2>Schedule_Inventory</h2>
		<p>Now Schedule_Inventorys</p>
		<table class="table table-striped text-center">
			<thead>
				<tr class="bg-success text-center">
					<th class="text-center">name</th>
					<th class="text-center">number</th>
					<th class="text-center">day</th>
					<th class="text-center">time</th>
					<th class="text-center"> </th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="schedule" items="${schedules}">
					<tr>
						<td>${schedule.name}</td>
						<td>${schedule.number}</td>
						 <td>
		                     <c:set var="day" value="${schedule.day}" /> 
		                     <c:choose>
		                           <c:when test="${day==1}">일요일</c:when>
		                           <c:when test="${day==2}">월요일</c:when>
		                           <c:when test="${day==3}">화요일</c:when>
		                           <c:when test="${day==4}">수요일</c:when>
		                           <c:when test="${day==5}">목요일</c:when>
		                           <c:when test="${day==6}">금요일</c:when>
		                           <c:when test="${day==7}">토요일</c:when>
		                        </c:choose>
		                </td>
						<td>${schedule.time}교시</td>
						<td>
							<a  href="<c:url value="/admin/buildings/schedules/${schedule.num}" />"> 
							<i class="fa fa-user-plus" style="color:#0000ff;"></i></a>
							<a  href="<c:url value="/admin/buildings/schedules/${schedule.num}" />"> 
							<i class="fa fa-user-times" style="color:#0000ff;"></i></a>
						</td>
				</c:forEach>
			</tbody>
		</table>
		<a href="<c:url value="/admin/buildings/schedules/addSchedule"/>" class="btn btn-primary">Add_Schedule</a>
		<a href="<c:url value="/admin/buildings"/>" class="btn btn-primary">Back</a>
	</div>
	<br />
	<br />
</div>
</div>