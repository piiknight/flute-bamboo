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
                     <h3 class="title-w3-agile">Thông tin Sản phẩm</h3>
                  </div>
                  
                  <div class="frame-content">
                  	 <a href="${pageContext.request.contextPath }/admin/flute" class="btn btn-primary">Trở về</a>
                  	 <br /><br />
                  	 <c:if test="${not empty flash }">
	                    <div class="alert alert-${flash.key }">
	                       <strong>${flash.key }!</strong>${flash.value }
	                    </div>
	                 </c:if>
	                 
                     <form id="form-add" class="my-form" action="" method="post" enctype="multipart/form-data">
                       <div class="left-area">
	                       	<label>Tên: </label>
	                        <form:errors path="flute.name" cssClass="alert alert-danger"></form:errors>
	                        <input type="text" name="name" value="${f.name }" readonly class="my-input"/>
	                        <label>Preview: </label>
	                        <form:errors path="flute.preview" cssClass="alert alert-danger"></form:errors>
	                        <textarea name="preview" rows="7" cols="60" value="" class="my-input-preview">${f.preview }</textarea>
                       </div>
                        <div class="right-area">
                        	<label>Picture: </label>
                        	<form:errors path="flute.picture" cssClass="alert alert-danger"></form:errors>
                        	<c:choose>
                        		<c:when test="${not empty f.picture }">
                        			<img src="${pageContext.request.contextPath }/files/flute/${f.picture }" />
                        		</c:when>
                        		<c:otherwise>
                        			<img src="${defines.urlAdmin }/img/default.png" />
                        		</c:otherwise>
                        	</c:choose>
                        	<input type="hidden" name="picture" value="${f.picture }" class="my-input"/>
	                        
	                        <input type="file" name="hinhanh" value="" class="btn btn-primary">
	                        <br />
                        </div>
                        <div class="clearfix"></div>
                        
                        <label>Price: </label>
                        <form:errors path="flute.price" cssClass="alert alert-danger"></form:errors>
                        <input type="number" name="price" value="${(not empty f.price)?f.price:0 }" step="any" class="my-input"/>
                        
                        <label>Sale off: </label>
                        <form:errors path="flute.saleoff" cssClass="alert alert-danger"></form:errors>
                        <select name="saleoff" class="my-input">
                        	<c:forEach items="${supportUtil.saleoff() }" var="i">
                        		<option value="${i }" ${(f.saleoff == i )?'selected':'' }>${i }%</option>
                        	</c:forEach>
                        </select>
                        
                        <label>Mục Tiêu sáo: </label>
                        <select name="id_fl" class="my-input">
                        	<c:forEach items="${fluteList }" var="obj">
                        		<option value="${obj.id_fl }" ${(f.id_fl == obj.id_fl )?'selected':'' } >${obj.name_fl }</option>
                        	</c:forEach>
                        </select>
                        
                        <label>Detail: </label>
                         <form:errors path="flute.detail" cssClass="alert alert-danger"></form:errors>
                        <textarea name="detail" rows="7" cols="90" value="" class="my-input" id="editor">${f.detail }</textarea>
                        <br />
                        
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