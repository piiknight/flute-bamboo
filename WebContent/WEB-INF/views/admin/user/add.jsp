<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp" %>  
<div class="main-panel">
   <div class="content">
      <div class="container-fluid">
         <div class="row">
            <div class="col-md-12">
               <div class="card">
                  <div class="header">
                     <h3 class="title-w3-agile">Thêm mới Người dùng</h3>
                  </div>
                  
                  <div class="frame-content">
                  	 <a href="${pageContext.request.contextPath }/admin/user" class="btn btn-primary">Trở về</a>
                  	 <br /><br />
                  	 <c:if test="${not empty flash }">
	                    <div class="alert alert-${flash.key }">
	                       <strong>${flash.key }!</strong>${flash.value }
	                    </div>
	                 </c:if>
	                 
                     <form id="form-add" class="my-form" action="" method="post" enctype="multipart/form-data">
                     	
                        <label>Username: </label>
                        <form:errors path="user.username" cssClass="alert alert-danger"></form:errors>
                        <input type="text" name="username" value="${user.username }" class="my-input"/>
                        
                        <label>Mật khẩu: </label>
                        <form:errors path="user.password" cssClass="alert alert-danger"></form:errors>
                        <input type="password" name="password" value="" class="my-input"/>
                        
                        <label>Xác nhận mật khẩu: </label>
                        <form:errors path="user.validPass" cssClass="alert alert-danger"></form:errors>
                        <input type="password" name="repass" value="" class="my-input"/>
                        
                        <label>Họ và tên: </label>
                        <form:errors path="user.fullname" cssClass="alert alert-danger"></form:errors>
                        <input type="text" name="fullname" value="${user.fullname }" class="my-input"/>
                        
                        <label>Địa chỉ: </label>
                        <form:errors path="user.address" cssClass="alert alert-danger"></form:errors>
                        <input type="text" name="address" value="${user.address }" class="my-input"/>
                        
                        <label>Phone: </label>
                        <form:errors path="user.phone" cssClass="alert alert-danger"></form:errors>
                        <input type="text" name="phone" value="${user.phone }" class="my-input"/>
                        
                        <label>Email: </label>
                        <form:errors path="user.email" cssClass="alert alert-danger"></form:errors>
                        <input type="text" name="email" value="${user.email }" class="my-input"/>
                        
                        <label>Roles: </label>
                        <select name="role_id" class="my-input">
                        	<c:forEach items="${roles }" var="role">
                        		<option value="${role.role_id }"  >${role.name }</option>
                        	</c:forEach>
                        </select>
                        
                        <input type="submit" name="them" value="Thêm" class="btn btn-primary">
                        <input type="reset" name="reset" value="Nhập lại" class="btn btn-primary">
                     </form>
                     
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
<script>
   var editor= CKEDITOR.replace('editor');
   CKFinder.setupCKEditor(editor, '<%=request.getContextPath()%>/templates/admin/js/ckfinder/');
</script>
<div class="clearfix">...</div>