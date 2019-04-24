<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<!--======= HOME MAIN SLIDER =========-->
  <section class="sub-bnr sub-schedule" data-stellar-background-ratio="0.3">
    <div class="overlay-gr">
      <div class="container">
        <h2>contact us</h2>
        <p>We are located in downtown Melbourne, just a few miles from Fedral Bank</p>
      </div>
    </div>
  </section>
  
  <!-- Breadcrumb -->
  <ol class="breadcrumb">
    <li><a href="<c:url value="/"/>">Home</a></li>
    <li class="active">Contact</li>
  </ol>
  
  <!-- CONTENT START -->
  <div class="content">
    <section class="sec-100px contact-us">
      <div class="container">
        <div class="row"> 
          <!--======= Contact =========-->
          <div class="col-md-7">
            <div class="contact-form"> 
              
              <!--======= Success Msg =========-->
              <div id="contact_message" class="success-msg"> <i class="fa fa-paper-plane-o"></i>Thank You. Your Message has been Submitted</div>
              <!--======= FORM  =========-->
	              <sf:form action="${pageContext.request.contextPath}/admin/students/updateStudent"
						method="post" modelAttribute="student">
						
						<sf:hidden path="num" id="num" />
						
						<div class="form-group">
							<label for="name">Name</label>
							<sf:input path="name" id="name" class="form-control" />
							<sf:errors path="name" cssStyle="color:#ff0000;" />
						</div>
						<div class="from-group">
							<label for="id">ID </label>
							<sf:input path="id" id="id" class="form-control" />
							<sf:errors path="id" cssStyle="color:#ff0000;" />
						</div>
						<div class="from-group">
							<label for="password">Password</label>
							<sf:input path="password" id="password" class="form-control" />
							<sf:errors path="password" cssStyle="color:#ff0000;" />
						</div>
						<div class="from-group">
							<label for="check">Check </label>
							<sf:input path="check" id="check" class="form-control" />
							<sf:errors path="check" cssStyle="color:#ff0000;" />
						</div>
						<br />
						<input type="submit" value="submit" class="btn btn-primary">
						<a href="<c:url value="/admin/students" />"
							class="btn btn-primary">Cancel</a>
					</sf:form>
            </div>
          </div>
          
          <!-- TIMING -->
          <div class="col-md-5 about">
            <div class="hrs">
              <h3><i class="ion-ios-clock-outline"></i> Hours of visiting</h3>
              <ul>
                <li class="col-md-5 no-padding">
                  <h5>Mon - Wed</h5>
                  <p>8:00 Am to 7:00 Pm</p>
                </li>
                <li class="col-md-7 no-padding"> <span class="appoiment">School  appoinments</span> </li>
              </ul>
              <ul>
                <li class="col-md-5 no-padding">
                  <h5>Thu -  Sun</h5>
                  <p>8:00 Am to 7:00 Pm</p>
                </li>
                <li class="col-md-7 no-padding"> <span class="appoiment">Tourists  appoinments</span> </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>