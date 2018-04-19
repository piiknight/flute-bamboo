<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp" %>
<div class="content-box-large">
    <div class="row">
        <div class="panel-heading">
            <div class="panel-title ">Quản lý người dùng</div>
        </div>
    </div>
    <hr>
    <div class="row">
        <div class="col-md-8">
            <a href="${pageContext.request.contextPath }/admin/user/add" class="btn btn-success"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>&nbsp;Thêm</a>

        </div>
        <div class="col-md-4">
            <div class="input-group form">
                <input type="text" class="form-control" placeholder="Search...">
                <span class="input-group-btn">
         <button class="btn btn-primary" type="button">Search</button>
       </span>
            </div>
        </div>
    </div>
	
	<c:if test="${not empty flash }">
		<div class="alert alert-${flash.key }">
			<strong>${flash.key }!</strong>${flash.value }
		</div>
	</c:if>
    <div class="row">
        <div class="panel-body">
            <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="example">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Username</th>
                        <th>Fullname</th>
                        <th>Role</th>
                        <th class="center text-center" width="20%">Chức năng</th>
                    </tr>
                </thead>
                <tbody>
                	<c:forEach items="${users }" var="user">
                	<c:set var="editUrl" value="${pageContext.request.contextPath }/admin/user/edit/${user.id }"></c:set>
                	<c:set var="delUrl" value="${pageContext.request.contextPath }/admin/user/del/${user.id }"></c:set>
                    <tr class="odd gradeX">
                        <td>${user.id }</td>
                        <td>${user.username }</td>
                        <td>${user.fullname }</td>
                        <td>${user.name }</td>
                        <td class="center text-center">
                            <a href="${editUrl }" title="Sửa" class="btn btn-primary"><span class="glyphicon glyphicon-pencil "></span> Sửa</a>
                            <a href="${delUrl }" title="Xóa" onclick="return confirm('Bạn có chắc chắn muốn xóa')" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span> Xóa</a>
                        </td>
                    </tr>
                    </c:forEach>
                </tbody>
            </table>
            <!-- Pagination -->
            <nav class="text-center" aria-label="...">
                <ul class="pagination">
                    <c:if test="${not empty previous }">
			            <li ><a href="${pageContext.request.contextPath}/admin/user/${previous}">&lsaquo;&lsaquo;&lsaquo;</a></li>
			         </c:if>
			         <c:forEach var="i" begin="${pageStart }" end="${pageEnd }">
			            <c:url var="urlPage" value="${pageContext.request.contextPath}/admin/user/${i}"></c:url>
			            <li 
			            <c:if test="${page == i }">class="active-pagination"</c:if>
			            ><a href="${pageContext.request.contextPath}/admin/user/${i}">${i } </a></li>
			         </c:forEach>
			         <c:if test="${not empty next }">
			            <li ><a href="${pageContext.request.contextPath}/admin/user/${next}">&rsaquo;&rsaquo;&rsaquo;</a></li>
			         </c:if>
                </ul>
            </nav>
            <!-- /.pagination -->
        </div>
    </div>
    <!-- /.row -->
</div>