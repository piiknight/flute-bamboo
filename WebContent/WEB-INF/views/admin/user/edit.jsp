<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@include file="/templates/taglib.jsp" %>   
<form action="" method="post">
<div class="row">
      <div class="col-md-12 panel-info">
          <div class="content-box-header panel-heading">
              <div class="panel-title ">Sửa người dùng</div>
          </div>
          <div class="content-box-large box-with-header">
              <div>
                  <div class="row mb-10"></div>
				  <c:if test="${not empty flash }">
					 <div class="alert alert-${flash.key }">
					 	 <strong>${flash.key }!</strong>${flash.value }
					 </div>
				  </c:if>
                  <div class="row">
                      <div class="col-sm-6">
                          <div class="form-group">
                              <label for="name">Tên đăng nhập</label>
                              <input type="text" name="username" class="form-control" value="${user.username }" readonly="readonly" placeholder="Nhập user">
                          </div>
                          
                          <div class="form-group">
                              <label for="password">Password</label>
                              <input type="password" name="password" class="form-control" value="" placeholder="Nhập password">
                          </div>
                          
                          <div class="form-group">
                              <label for="fullname">Fullname</label>
                              <input type="text" name="fullname" class="form-control" value="${user.fullname }" placeholder="Nhập Fullname">
                          </div>
                          
                          <label>Quyền</label>
                          <select name="role_id" class="form-control">
		                      <c:forEach items="${roles }" var="obj">
							  <option  ${(user.role_id == obj.role_id)?"selected":"" } value="${obj.role_id }" >${obj.name }</option>
							  </c:forEach>
			  			  </select>

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