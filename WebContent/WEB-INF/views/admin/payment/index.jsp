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
                     <h3 class="title-w3-agile">Admin >> Quản lý Hình thức thanh toán</h3>
                  </div>
                  <c:if test="${not empty flash }">
                     <div class="alert alert-${flash.key }">
                        <strong>${flash.key }!</strong>${flash.value }
                     </div>
                  </c:if>
                  <div class="add-item">
                     <a href="${pageContext.request.contextPath }/admin/payment/add" class="btn btn-info" role="button">
                     <span>Thêm Hình thức thanh toán</span>
                     <i class="ti-plus"></i>
                     </a>
                  </div>
                  <div class="clearfix"></div>
                  
                  <form action="${pageContext.request.contextPath }/admin/payment/delete-all">
                  <div class="content table-responsive table-full-width">
                     <table class="table table-striped">
                        <thead>
                           <th>ID</th>
                           <th>Tên hình thức</th>
                           <th>Chức năng</th>
                        </thead>
                        <tbody>
                        <c:forEach items="${payments }" var="payment">
                           <tr>
                              <td>${payment.pid }</td>
                              <td><a href="${pageContext.request.contextPath }/admin/payment/edit/${payment.pid }" title="">${payment.pname }</a></td>
                              <td>
                                 <a onclick="return confirm('Bạn có chắc muốn xóa ?')" href="${pageContext.request.contextPath }/admin/payment/del/${payment.pid }">
                                 <i class="ti-trash"></i>
                                 <span>Xóa</span>
                                 </a>
                              </td>
                           </tr>
                        </c:forEach>
                        </tbody>
                     </table>
                     <input onClick="return confirm('Bạn có chắc muốn xóa?');" style="display: none" class="btn btn-info" id="delete_all" type="submit" name="submit" value="Xóa các lựa chọn">
					 </form>
                     <div class="my_pagination pagination">
                        <span>PAGE</span>
                        <a id="backlistpage" href="javascript:;">&laquo;</a>
				 		<c:if test="${page != 1 }">
				 		<a href="${pageContext.request.contextPath }/admin/payment/${page - 1 }">&lsaquo;</a>
				 		</c:if>
				 		<c:forEach begin="1" end="${sumPage }" var="i">
						<a id="idpage${i }" ${ (page == i )?"class='active'":"" } href="${pageContext.request.contextPath }/admin/payment/${i }">${i }</a>
						</c:forEach>
						<c:if test="${page != sumPage }">
				 		<a href="${pageContext.request.contextPath }/admin/payment/${page + 1 }">&rsaquo;</a>
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
<script type="text/javascript">
	$(document).ready(function(){
		$(document).on('change', '#check_all', function(){
			$('.check_item').prop('checked', this.checked).trigger('change');
		});
		$(document).on('change', '.check_item', function(){
			var dem_r = 0;
			var check_r = 1;
			$('.check_item').each(function(){
				if($(this).is(':checked')){
					dem_r++;
				} else {
					check_r = 0;
				}
			});
			$('#check_all').prop('checked', check_r);
			if (dem_r > 0){
				$('#delete_all').show();
			} else {
				$('#delete_all').hide();
			}
		});

	});
</script>
<div class="clearfix">...</div>