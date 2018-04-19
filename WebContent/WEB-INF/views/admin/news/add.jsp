<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp" %>
<form action="" method="post" enctype="multipart/form-data" id="addNews">
<div class="row">
      <div class="col-md-12 panel-info">
          <div class="content-box-header panel-heading">
              <div class="panel-title ">Thêm tin</div>
          </div>
          <div class="content-box-large box-with-header">
              <div>
                  <div class="row mb-10"></div>
				  <form:errors path="news.*" cssClass="alert alert-danger"></form:errors>
				  <c:if test="${not empty flash }">
					  <div class="alert alert-${flash.key }">
						  <strong>${flash.key }!</strong>${flash.value }
					  </div>
				  </c:if>
                  <div class="row">
                      <div class="col-sm-6">
                          <div class="form-group">
                              <label for="name">Tên tin</label>
                              <input value="${news.lname }" name="lname" type="text" class="form-control" placeholder="Nhập tên tin">
                          </div>

                          <div class="form-group">
                              <label>Danh mục</label>
                              <select name="cid" class="form-control">
                              	<c:forEach items="${categories }" var="category">
                              		<option value="${category.cid }" >${category.cname }
                              		</option>
                              	</c:forEach>
							  </select>
                             </div>

                             <div class="form-group">
                                 <label>Thêm hình ảnh</label>
                                 <input type="file" name="hinhanh" class="btn btn-default" id="exampleInputFile1">
                                 <p class="help-block"><em>Định dạng: jpg, png, jpeg,...</em></p>
                             </div>
							
							 <div class="form-group">
                                 <label>Địa chỉ</label>
                                 <input value="${news.address }" name="address" type="text" class="form-control" placeholder="Nhập địa chỉ">
                             </div>
                             
                             <div class="form-group">
                                 <label>Diện tích (m2)</label>
                                 <input value="${(not empty news.area)?news.area:0 }" name="area" step="any" type="number" class="form-control" placeholder="Nhập diện tích">
                             </div>
                             
                             <div class="form-group">
                                 <label>Mô tả</label>
                                 <textarea name="description" id="description" class="form-control" rows="10" cols="80">${news.description }</textarea>
                             </div>
                         </div>
                     </div>

                     <hr>

                     <div class="row">
                         <div class="col-sm-12">
                             <input type="submit" value="Thêm" class="btn btn-success" />
                             <input type="reset" value="Nhập lại" class="btn btn-default" />
                         </div>
                     </div>

                 </div>
             </div>
         </div>
     </div>
     
</form>	
<script>
	var editor= CKEDITOR.replace('description');
	CKFinder.setupCKEditor(editor, '<%=request.getContextPath()%>/templates/admin/ckfinder/');
</script>
 