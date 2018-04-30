<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp" %>     
<div class="sidebar" data-background-color="white" data-active-color="danger">
    	<div class="sidebar-wrapper" id="menu-bar">
            <div class="logo">
                <a href="${pageContext.request.contextPath }/admin/" class="simple-text">
                    Pii Knight
                </a>
            </div>

            <ul class="nav">
				<li id="index">
                    <a href="${pageContext.request.contextPath }/admin">
                        <i class="ti-home"></i>
                        <p>Home</p>
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath }/admin/flute-list">
                        <i class="ti-menu"></i>
                        <p>Danh mục Tiêu sáo</p>
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath }/admin/flute">
                        <i class="ti-music-alt"></i>
                        <p>Tiêu sáo</p>
                    </a>
                </li>
                <c:if test="${userInfo.name == 'ADMIN' }">
                <li>
                    <a href="${pageContext.request.contextPath }/admin/user">
                        <i class="ti-user"></i>
                        <p>Người dùng</p>
                    </a>
                </li>
                </c:if>
                <c:if test="${userInfo.name == 'ADMIN' || userInfo.name == 'EDITOR'}">
                <li>
                    <a href="${pageContext.request.contextPath }/admin/bill">
                        <i class="ti-files"></i>
                        <p>Hóa Đơn</p>
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath }/admin/code">
                        <i class="ti-medall"></i>
                        <p>Mã khuyến mãi</p>
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath }/admin/payment">
                        <i class="ti-truck"></i>
                        <p>Hình thức thanh toán</p>
                    </a>
                </li>
                </c:if>
                 <%-- <li>
                    <a href="${pageContext.request.contextPath }/admin/slide">
                        <i class="ti-music"></i>
                        <p>Các bài viết</p>
                    </a>
                </li> --%>
            </ul>
    	</div>
    </div>