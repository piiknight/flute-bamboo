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
                     <h3 class="title-w3-agile">Thêm mới Mã khuyến mãi</h3>
                  </div>
                  
                  <div class="frame-content">
                  	 <a href="${pageContext.request.contextPath }/admin/code" class="btn btn-primary">Trở về</a>
                  	 <br /><br />
                  	 <c:if test="${not empty flash }">
	                    <div class="alert alert-${flash.key }">
	                       <strong>${flash.key }!</strong>${flash.value }
	                    </div>
	                 </c:if>
	                 
                     <form id="form-add" class="my-form" action="" method="post" enctype="multipart/form-data">
                     	
                        <label>Tên Mã khuyến mãi: </label>
                        <form:errors path="code.cname" cssClass="alert alert-danger"></form:errors>
                        <input type="text" name="cname" value="${code.cname }" class="my-input"/>
                        
                        <label>Số lượng: </label>
                        <form:errors path="code.quantity" cssClass="alert alert-danger"></form:errors>
                        <input type="number" name="quantity" value="${(not empty code.quantity)?code.quantity:'0' }" class="my-input"/>
                        
                        <label>Phần trăm khuyến mãi: </label>
                        <form:errors path="code.percent" cssClass="alert alert-danger"></form:errors>
                        <select name="percent" class="my-input">
                        	<c:forEach items="${supportUtil.saleoff() }" var="i">
                        		<option value="${i }" ${(code.percent == i )?'selected':'' } >${i }%</option>
                        	</c:forEach>
                        </select>
                        
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