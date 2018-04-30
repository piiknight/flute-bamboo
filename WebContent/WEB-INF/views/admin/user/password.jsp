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
                     <h3 class="title-w3-agile">Chỉnh sửa Mật khẩu người dùng</h3>
                  </div>
                  
                  <div class="frame-content">
                  	 <a href="${pageContext.request.contextPath }/admin/user" class="btn btn-primary">Trở về</a>
                  	 <br /><br />
                  	 <c:if test="${not empty flash }">
	                    <div class="alert alert-${flash.key }">
	                       <strong>${flash.key }!</strong>${flash.value }
	                    </div>
	                 </c:if>
	                 
                     <form id="form-add" class="my-form" action="" method="post">
                        <label>Mật khẩu cũ: </label>
                        <form:errors path="user.oldpassword" cssClass="alert alert-danger"></form:errors>
                        <input type="password" name="oldpassword" value="" class="my-input"/>
                        
                         <label>Mật khẩu mới: </label>
                        <form:errors path="user.password" cssClass="alert alert-danger"></form:errors>
                        <input type="password" name="password" value="" class="my-input"/>
                        
                         <label>Xác nhận mật khẩu mới: </label>
                        <form:errors path="user.validPass" cssClass="alert alert-danger"></form:errors>
                        <input type="password" name="repass" value="" class="my-input"/>
                        
                        
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