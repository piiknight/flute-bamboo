<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp" %>					
<div class="clearfix content">
	<div class="content_title"><h2>${titleCat }</h2></div>
	
	<div class="clearfix single_work_container">
		<c:forEach items="${listNews }" var="news">
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
			<a href="${pageContext.request.contextPath }/detail/${news.lid }"><p class="caption">${stringUtil.cutDescription(news.description, 80) }</p></a>
		</div>
		</c:forEach>
		<div class="clearfix work_pagination">
			<nav>
				<a class="newer floatleft" href=""> < -- Trang trước</a>
				<a class="older floatright" href="">Trang sau -- ></a>
			</nav>
		</div>

	</div>
</div>
		
