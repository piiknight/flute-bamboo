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
                     <h3 class="title-w3-agile">Hóa đơn số ${id } >> Chi tiết Hóa đơn</h3>
                  </div>
                  <a href="${pageContext.request.contextPath }/admin/bill" class="btn btn-primary">Trở về</a>
                  <c:if test="${not empty flash }">
                     <div class="alert alert-${flash.key }">
                        <strong>${flash.key }!</strong>${flash.value }
                     </div>
                  </c:if>
                  <div class="clearfix"></div>
                  
                  <div class="detail">
                  	<span><strong>Tên người mua:</strong> ${user.fullname }</span><br />
                  	<span><strong>Địa chỉ:</strong> ${user.address }</span><br />
                  	<span><strong>Số điện thoại:</strong> ${user.phone }</span><br />
                  	<span><strong>Email:</strong> ${user.email }</span><br />
                  	<span><strong>Hình thức thanh toán:</strong> ${bill.pname }</span><br />
                  	<span><strong>Trạng thái:</strong> ${(bill.status == 0)?'Chưa thanh toán':'Đã thanh toán' }</span><br />
                  </div>
                  
                  <form action="${pageContext.request.contextPath }/admin/bill/delete-all">
                  <div class="content table-responsive table-full-width">
                     <table class="table table-striped">
                        <thead>
                           <th width="5%">STT</th>
                           <th width="15%">Sản phẩm</th>
                           <th width="20%">Đơn giá</th>
                           <th width="10%">Số lượng</th>
                           <th width="15%">Giảm giá</th>
                           <th width="30%">Tổng tiền</th>
                        </thead>
                        <tbody>
                        <c:set var="i" value="0"></c:set>
                        <c:set var="sum" value="0"></c:set>
                        <c:forEach items="${details }" var="detail">
                           <tr>
                           	  <c:set var="i" value="${i + 1 }"></c:set>
                           	  <c:set var="sum" value="${sum + detail.total }"></c:set>
                              <td>${i }</td>
                              <td><a href="${pageContext.request.contextPath }/admin/flute/edit/${detail.id }" title="">${detail.name }</a></td>
                              <td><fmt:formatNumber>${detail.price }</fmt:formatNumber> VNĐ</td>
                              <td>${detail.quantity }</td>
                              <td>${detail.saleoff }%</td>
                              <td><fmt:formatNumber>${detail.total }</fmt:formatNumber> VNĐ</td>
                           </tr>
                        </c:forEach>
                        <tr>
                        	<td colspan="6">Tổng: <fmt:formatNumber> ${sum }</fmt:formatNumber> VNĐ</td>
                        </tr>
                        <tr>
                        	<td colspan="6">Giảm giá từ Mã khuyến mãi ${code.cname }: ${code.percent } %</td>
                        </tr>
                        <tr>
                        	<td colspan="6">Tổng tất cả: <fmt:formatNumber> ${sum * (1- code.percent/100) }</fmt:formatNumber> VNĐ</td>
                        </tr>
                        
                        </tbody>
                     </table>
					 </form>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
<div class="clearfix">...</div>