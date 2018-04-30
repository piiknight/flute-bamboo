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
                     <h3 class="title-w3-agile">Thông tin Người dùng</h3>
                  </div>
                  
                  <div class="frame-content">
                  	 <a href="${pageContext.request.contextPath }/admin/user" class="btn btn-primary">Trở về</a>
                  	 <a href="${pageContext.request.contextPath }/admin/user/password/${id }" class="btn btn-primary">Đổi mật khẩu</a>
                  	 <br /><br />
                  	 <c:if test="${not empty flash }">
	                    <div class="alert alert-${flash.key }">
	                       <strong>${flash.key }!</strong>${flash.value }
	                    </div>
	                 </c:if>
	                 
                     <form id="form-add" class="my-form" action="" method="post" enctype="multipart/form-data">
                       <label>Username: </label>
                        <form:errors path="user.username" cssClass="alert alert-danger"></form:errors>
                        <input type="text" name="username" value="${u.username }" readonly class="my-input"/>
                        
                        <label>Họ và tên: </label>
                        <form:errors path="user.fullname" cssClass="alert alert-danger"></form:errors>
                        <input type="text" name="fullname" value="${u.fullname }" class="my-input"/>
                        
                        <label>Địa chỉ: </label>
                        <form:errors path="user.address" cssClass="alert alert-danger"></form:errors>
                        <input type="text" name="address" value="${u.address }" class="my-input"/>
                        
                        <label>Phone: </label>
                        <form:errors path="user.phone" cssClass="alert alert-danger"></form:errors>
                        <input type="text" name="phone" value="${u.phone }" class="my-input"/>
                        
                        <label>Email: </label>
                        <form:errors path="user.email" cssClass="alert alert-danger"></form:errors>
                        <input type="text" name="email" value="${u.email }" class="my-input"/>
                        
                        <label>Roles: </label>
                        <select name="role_id" class="my-input">
                        	<c:forEach items="${roles }" var="role">
                        		<option value="${role.role_id }" ${(u.role_id == role.role_id)?'selected':'' } >${role.name }</option>
                        	</c:forEach>
                        </select>
                        
                        
                        <input type="submit" name="them" value="Cập nhật" class="btn btn-primary">
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