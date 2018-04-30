<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp" %>     
<!DOCTYPE html>
<html lang="en" >
   <head>
      <meta charset="UTF-8">
      <title>Flat Login Form 3.0</title>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
      <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900|RobotoDraft:400,100,300,500,700,900'>
      <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
      <link rel="stylesheet" href="${defines.urlAuth }/css/style.css">
   </head>
   <body>
      <!-- Form Mixin-->
      <!-- Input Mixin-->
      <!-- Button Mixin-->
      <!-- Pen Title-->
      <div class="pen-title">
         <h1>Login Form</h1>
      </div>
      <!-- Form Module-->
      <div class="module form-module">
         <div class="toggle">
            <i class="fa fa-times fa-pencil"></i>
            <div class="tooltip">Click Me</div>
         </div>
         <div class="form">
            <h2>Login to your account</h2>
            <c:if test="${not empty flash }">
			   <div class="alert alert-${flash.key }">
			        <strong>${flash.key }!</strong>${flash.value }
			   </div>
			</c:if>
            <form action="${pageContext.request.contextPath }/auth/login" method="post">
               <input type="text" placeholder="Username" name="username" />
               <input type="password" placeholder="Password" name="password" />
               <input type="submit" name="submit" value="Đăng nhập" class="button">
            </form>
         </div>
         <div class="form" id="register-area">
            <h2>Create an account</h2>
            <form id="form-dang-ky" action="${pageContext.request.contextPath }/auth/login/dang-ky" method="post">
				<form:errors path="user.username" cssClass="alert alert-danger"></form:errors>
			   <input type="text" placeholder="Username" name="username" value="${user.username }" />
			   
			   <form:errors path="user.password" cssClass="alert alert-danger"></form:errors>
			   <input type="password" placeholder="Mật khẩu" name="password" />
			   
			   <form:errors path="user.validPass" cssClass="alert alert-danger"></form:errors>
			   <input type="password" placeholder="Xác nhận mật khẩu" name="repass" />
			   
			   <form:errors path="user.fullname" cssClass="alert alert-danger"></form:errors>
			   <input type="text" placeholder="Họ và tên"name="fullname" value="${user.fullname }" />
			   
			   <form:errors path="user.email" cssClass="alert alert-danger"></form:errors>
			   <input type="email" placeholder="Email"name="email" value="${user.email }" />
			   
			   <form:errors path="user.phone" cssClass="alert alert-danger"></form:errors>
			   <input type="number" placeholder="Số điện thoại" name="phone" value="${user.phone }" />
			   
			   <form:errors path="user.address" cssClass="alert alert-danger"></form:errors>
			   <input type="text" placeholder="Địa chỉ" name="address" value="${user.address }" />
			   
			   <input type="submit" name="submit" value="Đăng ký" class="button">
            </form>
         </div>
         <!-- <div class="cta"><a href="#">Forgot your password?</a></div> -->
      </div>
      <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
      <script  src="${defines.urlAuth }/js/index.js"></script>
   </body>
   <c:if test="${check == 1 }">
   	<script type="text/javascript">
	   	$('.form').animate({
	   	    height: "toggle",
	   	    'padding-top': 'toggle',
	   	    'padding-bottom': 'toggle',
	   	    opacity: "toggle"
	   	  }, "slow");
   	</script>
   </c:if>
</html>

