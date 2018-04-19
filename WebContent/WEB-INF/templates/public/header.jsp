<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
	<head>
		<title>CLand | VinaEnter Edu</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<!--Oswald Font -->
		<link href='http://fonts.googleapis.com/css?family=Oswald:400,300,700' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" type="text/css" href="${defines.urlPublic }/css/tooltipster.css" />
		<!-- home slider-->
		<link href="${defines.urlPublic }/css/pgwslider.css" rel="stylesheet">
		<!-- Font Awesome -->
		<link rel="stylesheet" href="${defines.urlPublic }/css/font-awesome.min.css">
		<link href="${defines.urlPublic }/style.css" rel="stylesheet" media="screen">	
		<link href="${defines.urlPublic }/responsive.css" rel="stylesheet" media="screen">
<%-- 		<script type="text/javascript" src="${defines.urlPublic }/js/pgwslider.js"></script>
		<script type="text/javascript" src="${defines.urlPublic }/js/jquery-3.2.1.min.js"></script> --%>
				
	</head>

	<body>
	
		<section id="header_area">
			<div class="wrapper header">
				<div class="clearfix header_top">
					<div class="clearfix logo floatleft">
						<a href="${pageContext.request.contextPath }/"><h1><span>C</span>Land</h1></a>
					</div>
					<div class="clearfix search floatright">
						<form action="${pageContext.request.contextPath }/search" method="get">
							<input type="text" name="search" placeholder="Search"/>
							<input type="submit" />
						</form>
					</div>
				</div>
				<div class="header_bottom">
					<nav>
						<ul id="nav">
							<li><a href="${pageContext.request.contextPath }/">Trang chủ</a></li>
							<li id="dropdown"><a href="#">Bất động sản</a>
								<ul>
									<c:forEach items="${itemsCat }" var="cat">
									<c:set value="${pageContext.request.contextPath }/${slugUtil.makeSlug(cat['key'].cname) }-${cat['key'].cid }.htm" var="urlCat"></c:set>
									<li><a href="${urlCat }">${cat['key'].cname }</a></li>
									</c:forEach>
								</ul>
							</li>
							<li><a href="${pageContext.request.contextPath }/contact">Liên hệ</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</section>