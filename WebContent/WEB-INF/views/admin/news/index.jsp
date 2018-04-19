<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp" %>
<div class="content-box-large">
    <div class="row">
        <div class="panel-heading">
            <div class="panel-title ">Quản lý tin</div>
        </div>
    </div>
    <hr>
    <div class="row">
    <c:if test="${not empty flash }">
		<div class="alert alert-${flash.key }">
			<strong>${flash.key }!</strong>${flash.value }
		</div>
	</c:if>
        <div class="col-md-8">
            <a href="${pageContext.request.contextPath }/admin/news/add" class="btn btn-success"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>&nbsp;Thêm</a>

        </div>
        
    </div>

    <div class="row">
        <div class="panel-body">
            <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="example">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th th width="35%">Tên</th>
                        <th>Danh mục</th>
                        <th>Hình ảnh</th>
                        <th>Diện tích</th>
                        <th>Địa chỉ</th>
                        <th>Ngày đăng</th>
                        <th width="16%">Chức năng</th>
                    </tr>
                </thead>
                <tbody>
                	<c:forEach items="${listNews }" var="news">
                	<c:set var="editUrl" value="${pageContext.request.contextPath }/admin/news/edit/${news.lid }"></c:set>
                	<c:set var="delUrl" value="${pageContext.request.contextPath }/admin/news/del/${news.lid }"></c:set>
                    <tr class="odd gradeX">
                        <td>${news.lid }</td>
                        <td>${news.lname }</td>
                        <td>${news.cname }</td>
                        <td class="center text-center">
                        	<c:choose>
                        		<c:when test="${not empty news.picture }">
                        			<img class="my_img" alt="" src="${pageContext.request.contextPath }/files/${news.picture }">
                        		</c:when>
                        		<c:otherwise>
                        			<p>Không có hình ảnh</p>
                        		</c:otherwise>
                        	</c:choose>
                        </td>
                        <td>${news.area }</td>
                        <td>${news.address }</td>
                        <td>
                        	<fmt:formatDate value="${news.date_create }" pattern="HH:mm:ss dd/MM/yyyy"/>
                        </td>
                        <td class="center text-center">
                            <a href="${editUrl }" title="" class="btn btn-primary"><span class="glyphicon glyphicon-pencil "></span> Sửa</a>
                            <a href="${delUrl }" onclick="return confirm('Bạn có chắc muốn xóa? ')" title="" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span> Xóa</a>
                        </td>
                    </tr>
                    </c:forEach>
                </tbody>
            </table>

            <!-- Pagination -->
            <nav class="text-center" aria-label="...">
                <ul class="pagination">
                    <c:if test="${not empty previous }">
			            <li ><a href="${pageContext.request.contextPath}/admin/news/${previous}">&lsaquo;&lsaquo;&lsaquo;</a></li>
			         </c:if>
			         <c:forEach var="i" begin="${pageStart }" end="${pageEnd }">
			            <c:url var="urlPage" value="${pageContext.request.contextPath}/admin/news/${i}"></c:url>
			            <li 
			            <c:if test="${page == i }">class="active-pagination"</c:if>
			            ><a href="${pageContext.request.contextPath}/admin/news/${i}">${i } </a></li>
			         </c:forEach>
			         <c:if test="${not empty next }">
			            <li ><a href="${pageContext.request.contextPath}/admin/news/${next}">&rsaquo;&rsaquo;&rsaquo;</a></li>
			         </c:if>
                </ul>
            </nav>
            <!-- /.pagination -->

        </div>
    </div>
    <!-- /.row -->
</div>