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
                     <h3 class="title-w3-agile">Thêm mới sản phẩm</h3>
                  </div>
                  
                  <div class="frame-content">
                  	 <a href="${pageContext.request.contextPath }/admin" class="btn btn-primary">Trở về</a>
                  	 <br /><br />
                  	 <c:if test="${not empty flash }">
	                    <div class="alert alert-${flash.key }">
	                       <strong>${flash.key }!</strong>${flash.value }
	                    </div>
	                 </c:if>
	                 
                     <form id="form-add" class="my-form" action="" method="post" enctype="multipart/form-data">
                     	
                        <label>Tên: </label>
                        <form:errors path="flute.name" cssClass="alert alert-danger"></form:errors>
                        <input type="text" name="name" value="${flute.name }" class="my-input"/>
                        <label>Picture: </label>
                        <form:errors path="flute.picture" cssClass="alert alert-danger"></form:errors>
                        <input type="file" name="hinhanh" value="" class="btn btn-primary">
                        <br />
                        
                        <label>Price: </label>
                        <form:errors path="flute.price" cssClass="alert alert-danger"></form:errors>
                        <input type="number" name="price" value="${(not empty flute.price)?flute.price:0 }" step="any" class="my-input"/>
                        
                        <label>Sale off: </label>
                        <form:errors path="flute.saleoff" cssClass="alert alert-danger"></form:errors>
                        <select name="saleoff" class="my-input">
                        	<c:forEach items="${supportUtil.saleoff() }" var="i">
                        		<option value="${i }" ${(flute.saleoff == i )?'selected':'' } >${i }%</option>
                        	</c:forEach>
                        </select>
                        
                        <label>Mục Tiêu sáo: </label>
                        <select name="id_fl" class="my-input">
                        	<c:forEach items="${fluteList }" var="obj">
                        		<option value="${obj.id_fl }" ${(flute.id_fl == obj.id_fl )?'selected':'' } >${obj.name_fl }</option>
                        	</c:forEach>
                        </select>
                        
                        <label>Preview: </label>
                        <form:errors path="flute.preview" cssClass="alert alert-danger"></form:errors>
                        <textarea name="preview" rows="7" cols="90" value="" class="my-input-preview">${flute.preview }</textarea>
                        <label>Detail: </label>
                         <form:errors path="flute.detail" cssClass="alert alert-danger"></form:errors>
                        <textarea name="detail" rows="7" cols="90" value="" class="my-input" id="editor">${flute.detail }</textarea>
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