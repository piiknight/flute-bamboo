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
                     <h3 class="title-w3-agile">Thêm mới loại Tiêu sáo</h3>
                  </div>
                  
                  <div class="frame-content">
                  	 <a href="${pageContext.request.contextPath }/admin/flute-list" class="btn btn-primary">Trở về</a>
                  	 <br /><br />
                  	 <c:if test="${not empty flash }">
	                    <div class="alert alert-${flash.key }">
	                       <strong>${flash.key }!</strong>${flash.value }
	                    </div>
	                 </c:if>
	                 
                     <form id="form-add" class="my-form" action="" method="post" enctype="multipart/form-data">
                     	
                        <label>Tên: </label>
                        <form:errors path="fluteList.name_fl" cssClass="alert alert-danger"></form:errors>
                        <input type="text" name="name_fl" value="${fluteList.name_fl }" class="my-input"/>
                        <label>Picture: </label>
                        <form:errors path="fluteList.picture" cssClass="alert alert-danger"></form:errors>
                        <input type="file" name="hinhanh" value="" class="btn btn-primary">
                        <br />
                        <label>Preview: </label>
                        <form:errors path="fluteList.preview_text" cssClass="alert alert-danger"></form:errors>
                        <textarea name="preview_text" rows="7" cols="90" value="" class="my-input-preview">${fluteList.preview_text }</textarea>
                        <label>Detail: </label>
                         <form:errors path="fluteList.detail_text" cssClass="alert alert-danger"></form:errors>
                        <textarea name="detail_text" rows="7" cols="90" value="" class="my-input" id="editor">${fluteList.detail_text }</textarea>
                        <br />
                        
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