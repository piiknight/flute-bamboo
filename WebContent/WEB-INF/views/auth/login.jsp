<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp" %>
<tiles:insertAttribute name="header"></tiles:insertAttribute>
<form action="${pageContext.request.contextPath }/auth/login" method="post">
    <div class="page-content container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-wrapper">
                    <div class="box">
                        <div class="content-wrap">
                            <img width="100px" height="100px" class="img-circle" src="${defines.urlAdmin }/images/icon-180x180.png">
                            <h6>Đăng nhập</h6>
                            <c:if test="${not empty param.error }">
                            	<div class="alert alert-danger" >
	                            	Đăng nhập thất bại
	                            </div>
                            </c:if>
                            <div class="form-group">
                                <label class="text-left pull-left" for="username">Tên đăng nhập</label>
                                <input class="form-control" name="username" type="text" placeholder="Username">
                            </div>

                            <div class="form-group">
                                <label class="text-left pull-left" for="password">Mật khẩu</label>
                                <input class="form-control" name="password" type="password" placeholder="Password">
                            </div>

                            <div class="action">
                                <input type="submit" class="btn btn-primary signup btn-block" value="Log in" />
                            </div>
                        </div>
                    </div>

                    <div class="already">
                        <p>Don't have an account yet?</p>
                        <a href="javascript:void(0)">Sign Up</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
<tiles:insertAttribute name="footer"></tiles:insertAttribute>