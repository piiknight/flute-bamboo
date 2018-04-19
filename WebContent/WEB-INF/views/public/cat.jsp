<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp" %>					
<div class="clearfix content">
	<div class="content_title"><h2>${titleCat }</h2></div>
	
	<div class="clearfix single_work_container">
		<c:forEach items="${listNews }" var="news">
		<c:set value="${pageContext.request.contextPath }/${slugUtil.makeSlug(news.cname) }/${slugUtil.makeSlug(news.lname) }-${news.lid }.htm" var="urlNews"></c:set>
		<div class="clearfix single_work">
			<c:choose>
				<c:when test="${not empty news.picture }">
					<img class="img_top"  src="${pageContext.request.contextPath }/files/${news.picture }" alt=""/>
				</c:when>
				<c:otherwise>
					<img class="img_top"  src="${pageContext.request.contextPath }/templates/public/images/work1.png" alt=""/>
				</c:otherwise>
			</c:choose>
			
			<img class="img_bottom" src="${pageContext.request.contextPath }/templates/public/images/work_bg2.png" alt=""/>
			<h2>${news.lname }</h2>
			<a href="${urlNews }"><p class="caption">${stringUtil.cutDescription(news.description, 80) }</p></a>
		</div>
		</c:forEach>
		<div class="clearfix"></div>
		
	</div>
	<c:set value="${pageContext.request.contextPath }/${slugUtil.makeSlug(categoryNext.cname) }-${categoryNext.cid }.htm" var="urlCatPre"></c:set>
	<c:set value="${pageContext.request.contextPath }/${slugUtil.makeSlug(categoryPrevious.cname) }-${categoryPrevious.cid }.htm" var="urlCatNext"></c:set>
	<div>
	<a class="btn" href="${urlCatPre }">Trang trước</a>
	<a class="btn" href="${urlCatNext }">Trang kế</a>
	</div>
</div>
		
