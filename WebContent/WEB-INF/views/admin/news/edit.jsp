<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp" %>
<form action="" method="post" enctype="multipart/form-data">
<div class="row">
      <div class="col-md-12 panel-info">
          <div class="content-box-header panel-heading">
              <div class="panel-title ">Sửa tin</div>
          </div>
          <div class="content-box-large box-with-header">
              <div>
                  <div class="row mb-10"></div>

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
                              		<c:choose>
                              			<c:when test="${category.cid == news.cid }">
                              				<c:set value="selected" var="temp"></c:set>
                              			</c:when>
                              		</c:choose>
                              		<option ${temp } value="${category.cid }" >${category.cname }
                              		</option>
                              	</c:forEach>
							  </select>
                             </div>

                             <div class="form-group">
                                 <label>Thêm hình ảnh</label>
                                 <input type="file" name="hinhanh" class="btn btn-default" id="exampleInputFile1">
                                 <p class="help-block"><em>Định dạng: jpg, png, jpeg,...</em></p>
                                 <c:if test="${not empty news.picture }">
                                 	<img class="my_imgEdit"alt="" src="${pageContext.request.contextPath }/files/${news.picture }">
                                 </c:if>
                             </div>

                             <div class="form-group">
                                 <label>Mô tả</label>
                                 <textarea name="description" class="form-control" rows="3">${news.description }</textarea>
                             </div>
							
							 <div class="form-group">
                                 <label>Địa chỉ</label>
                                 <input value="${news.address }" name="address" type="text" class="form-control" placeholder="Nhập địa chỉ">
                             </div>
                             
                             <div class="form-group">
                                 <label>Diện tích (m2)</label>
                                 <input value="${news.area }" name="area" type="text" class="form-control" placeholder="Nhập diện tích">
                             </div>
							
                         </div>
                     </div>

                     <hr>

                     <div class="row">
                         <div class="col-sm-12">
                             <input type="submit" value="Sửa" class="btn btn-success" />
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