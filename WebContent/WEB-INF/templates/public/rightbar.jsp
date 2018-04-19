<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp" %>
<div class="clearfix sidebar">
	<div class="clearfix single_sidebar category_items">
		<h2>Danh mục bất động sản</h2>
		<ul>
			<c:forEach items="${itemsCat }" var="cat">
			<c:set value="${pageContext.request.contextPath }/${slugUtil.makeSlug(cat['key'].cname) }-${cat['key'].cid }.htm" var="urlCat"></c:set>
			<li class="cat-item"><a href="${urlCat }">${cat['key'].cname }</a>${cat.value }</li>
			</c:forEach>
		</ul>
	</div>
	
	<div class="clearfix single_sidebar">
		<div class="popular_post">
			<div class="sidebar_title"><h2>Mới nhât</h2></div>
			<ul>
				<c:forEach items="${newItemsNews }" var="newNews">
				<c:set value="${pageContext.request.contextPath }/${slugUtil.makeSlug(newNews.cname) }/${slugUtil.makeSlug(newNews.lname) }-${newNews.lid }.htm" var="urlNew"></c:set>
				<li><a href="${urlNew }">${newNews.lname }</a></li>
				</c:forEach>
			</ul>
		</div>
		</div>

	<div class="clearfix single_sidebar">
		<div class="popular_post">
			<div class="sidebar_title"><h2>Xem nhiều</h2></div>
			<ul>
				<c:forEach items="${hotItemsNews }" var="hotNews">
				<c:set value="${pageContext.request.contextPath }/${slugUtil.makeSlug(hotNews.cname) }/${slugUtil.makeSlug(hotNews.lname) }-${hotNews.lid }.htm" var="urlHot"></c:set>
				<li><a href="${urlHot }">${hotNews.lname }</a></li>
				</c:forEach>
			</ul>
		</div>
		</div>
	
	<div class="clearfix single_sidebar">
		<h2>Danh mục hot</h2>
		<ul>
			<c:forEach items="${hotItemsCat }" var="cat">
			<c:set value="${pageContext.request.contextPath }/${slugUtil.makeSlug(cat['key'].cname) }-${cat['key'].cid }.htm" var="urlCat"></c:set>
			<li><a href="${urlCat }">${cat['key'].cname } <span>(${cat['value'] })</span></a></li>
			</c:forEach>
		</ul>
	</div>
</div>