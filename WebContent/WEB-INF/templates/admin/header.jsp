<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp" %> 
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="${defines.urlAdmin }/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="${defines.urlAdmin }/img/favicon.png">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Pii Knight</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />

	<link href="https://fonts.googleapis.com/css?family=Dancing+Script" rel="stylesheet">

    <!-- Bootstrap core CSS     -->
    <link href="${defines.urlAdmin }/css/bootstrap.min.css" rel="stylesheet" />
    
    <link href="${defines.urlAdmin }/css/style.css" rel="stylesheet" />
    <link href="${defines.urlAdmin }/css/hover-min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="${defines.urlAdmin }/css/animate.min.css" rel="stylesheet"/>

    <!--  Paper Dashboard core CSS    -->
    <link href="${defines.urlAdmin }/css/paper-dashboard.css" rel="stylesheet"/>

    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="${defines.urlAdmin }/css/demo.css" rel="stylesheet" />

    <!--  Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' type='text/css'>
    <link href="${defines.urlAdmin }/css/themify-icons.css" rel="stylesheet">
    <script type="text/javascript" src="${defines.urlAdmin }/js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="${defines.urlAdmin }/js/jquery.validate.min.js"></script>
	<script type="text/javascript" src="${defines.urlAdmin }/js/ckeditor/ckeditor.js"></script>
	<script type="text/javascript" src="${defines.urlAdmin }/js/ckfinder/ckfinder.js"></script>

</head>
<body>
<div class="wrapper">
	<header class="header">
		<nav class="navbar navbar-default">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="${pageContext.request.contextPath }">SHOP TIÊU SÁO</a>
				</div>
				<div class="collapse navbar-collapse">
					<ul class="nav navbar-nav navbar-right">
                   		
                   		<li>
							<a href="${pageContext.request.contextPath }/admin" title="">
								<i class="ti-panel"></i>
								<p>Chào ${userInfo.fullname }</p>
							</a>
						</li>
						<li class="dropdown">
							  <a href="#" class="dropdown-toggle" data-toggle="dropdown">
									<i class="ti-bell"></i>
									<p class="notification"></p>
									<p>Managements</p>
									<b class="caret"></b>
							  </a>
							  <ul class="dropdown-menu">
							  	<li><a href="${pageContext.request.contextPath }/admin/profile">Thông tin cá nhân</a></li>
							  	<li><a href="${pageContext.request.contextPath }/admin/profile/password">Đổi Mật khẩu</a></li>
								<li><a href="${pageContext.request.contextPath }/admin/profile/bill">Lịch sử mua hàng</a></li>
								<li><a href="${pageContext.request.contextPath }/admin/flute-list">Danh mục Tiêu sáo</a></li>
								<li><a href="${pageContext.request.contextPath }/admin/flute">Sản phẩm Tiêu sáo</a></li>
								<c:if test="${userInfo.name == 'ADMIN' }">
									<li><a href="${pageContext.request.contextPath }/admin/user">Người dùng</a></li>
								</c:if>
								<c:if test="${userInfo.name == 'ADMIN' || userInfo.name == 'EDITOR' }">
									<li><a href="${pageContext.request.contextPath }/admin/bill">Hóa đơn</a></li>
									<li><a href="${pageContext.request.contextPath }/admin/code">Mã khuyến mãi</a></li>
									<li><a href="${pageContext.request.contextPath }/admin/payment">Hình thức thanh toán </a></li>
									<li><a href="${pageContext.request.contextPath }/admin/chart">Dữ liệu thống kê </a></li>
								</c:if>
							  </ul>
						</li>
						<li>
							<a href="${pageContext.request.contextPath }/auth/logout">
								<i class="ti-settings"></i>
								<p>Log out</p>
							</a>
						</li>				
						
					</ul>
	
				</div>
			</div>
		</nav>
	</header>