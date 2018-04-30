<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp" %> 
<form id="form-dang-ky">
	<c:if test="${not empty flash }">
	   <div class="alert alert-${flash.key }">
	        <strong>${flash.key }!</strong>${flash.value }
	   </div>
	</c:if>
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
   <a class="button" href="javascript:;" id="dang-ky" disabled>Đăng kí</a>
</form>
<script>
$("#dang-ky").click(function(){
	$.ajax({
		method: "POST",
		url: location.pathname + "/dang-ky",
		data: $("form-dang-ky").serialize(),
		success : function(response){//kết quả trả về từ server nếu gửi thành công
			console.log(response);
			
			$( '#form-dang-ky' ).html(response);
		}
	});
});
</script>


