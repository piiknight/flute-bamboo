<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp" %>
<c:set var="namePage" value="index" scope="request"></c:set>  
<div class="main-panel">
   <div class="content">
      <div class="container-fluid">
         <div class="row">
            <div class="col-md-12">
               <div class="card">
                  <div class="header">
                     <h3 class="title-w3-agile">Admin >> Quản lý Các loại Tiêu Sáo</h3>
                  </div>
                  <c:if test="${not empty flash }">
                     <div class="alert alert-${flash.key }">
                        <strong>${flash.key }!</strong>${flash.value }
                     </div>
                  </c:if>
                  <div class="add-item">
                     <a href="${pageContext.request.contextPath }/admin/flute-list/add" class="btn btn-info" role="button">
                     <span>Thêm danh sách</span>
                     <i class="ti-plus"></i>
                     </a>
                  </div>
                  <div class="clearfix"></div>
                  <div class="content table-responsive table-full-width">
                     <table class="table table-striped">
                        <thead>
                           <th width="5%">ID</th>
                           <th width="10%">Tên danh mục</th>
                           <th width="25%">Mô tả</th>
                           <th width="25%">Chi tiết</th>
                           <th width="20%">Hình ảnh</th>
                           <th width="15%">Chức năng</th>
                        </thead>
                        <tbody>
                        <c:forEach items="${fluteList }" var="obj">
                           <tr>
                              <td>${obj.id_fl }</td>
                              <td><a href="${pageContext.request.contextPath }/admin/flute-list/edit/${obj.id_fl }" title="">${obj.name_fl }</a></td>
                              <td>${stringUtil.cutDescription(obj.preview_text, 100) }</td>
                              <td>${stringUtil.cutDescription(obj.detail_text, 100) }</td>
                              <td>
                              	<div class="background-img-table">
                              		<c:choose>
		                        		<c:when test="${not empty obj.picture }">
		                        			<img src="${pageContext.request.contextPath }/files/fl/${obj.picture }" />
		                        		</c:when>
		                        		<c:otherwise>
		                        			<img src="${defines.urlAdmin }/img/default.png" />
		                        		</c:otherwise>
		                        	</c:choose>
                              	</div>
                              <td>
                                 <a href="${pageContext.request.contextPath }/admin/flute-list/edit/${obj.id_fl }">
                                 <i class="ti-pencil"></i>
                                 <span>Sửa</span>
                                 </a>
                                 <a onclick="return confirm('Bạn có chắc muốn xóa ?')" href="${pageContext.request.contextPath }/admin/flute-list/del/${obj.id_fl }">
                                 <i class="ti-trash"></i>
                                 <span>Xóa</span>
                                 </a>
                              </td>
                           </tr>
                        </c:forEach>
                        </tbody>
                     </table>
                     <div class="my_pagination pagination">
                        <span>PAGE</span>
                        <a id="backlistpage" href="javascript:;">&laquo;</a>
				 		<c:if test="${page != 1 }">
				 		<a href="${pageContext.request.contextPath }/admin/flute-list/${page - 1 }">&lsaquo;</a>
				 		</c:if>
				 		<c:forEach begin="1" end="${sumPage }" var="i">
						<a id="idpage${i }" ${ (page == i )?"class='active'":"" } href="${pageContext.request.contextPath }/admin/flute-list/${i }">${i }</a>
						</c:forEach>
						<c:if test="${page != sumPage }">
				 		<a href="${pageContext.request.contextPath }/admin/flute-list/${page + 1 }">&rsaquo;</a>
				 		</c:if>
						<a id="nextlistpage" href="javascript:;">&raquo;</a>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
<div class="clearfix">...</div>