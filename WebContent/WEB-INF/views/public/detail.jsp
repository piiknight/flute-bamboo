<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp" %>	
<div class="clearfix content">
						
						<h1>${news.lname } </h1>
						<div class="clearfix post-meta">
							<p><span><i class="fa fa-clock-o"></i> Địa chỉ: ${news.address }</span> <span><i class="fa fa-folder"></i> Diện tích: ${news.area }</span></p>
						</div>
						
						<div class="vnecontent">
							${news.description }
						</div>
						<c:set value="${pageContext.request.contextPath }/${slugUtil.makeSlug(newsPrevious.cname) }/${slugUtil.makeSlug(newsPrevious.lname) }-${newsPrevious.lid }.htm" var="urlNewsPre"></c:set>
						<c:set value="${pageContext.request.contextPath }/${slugUtil.makeSlug(newsNext.cname) }/${slugUtil.makeSlug(newsNext.lname) }-${newsNext.lid }.htm" var="urlNewsnext"></c:set>
						<a class="btn" href="${urlNewsPre }">Bài trước</a>
						<a class="btn" href="${urlNewsnext }">Bài kế</a>
					
					</div>
					
						<div class="more_themes">
							<h2>Bất động sản liên quan <i class="fa fa-thumbs-o-up"></i></h2>
							<div class="more_themes_container">
								<c:forEach items="${newsInvolve }" var="news">
								<c:set value="${pageContext.request.contextPath }/${slugUtil.makeSlug(news.cname) }/${slugUtil.makeSlug(news.lname) }-${news.lid }.htm" var="urlNews"></c:set>
								<div class="single_more_themes floatleft">
									<c:if test="${not empty news.picture }">
									<img src="${pageContext.request.contextPath }/files/${news.picture }" alt=""/>
									</c:if>
									<a href="${urlNews }"><h2>${news.lname }</h2></a>
								</div>
								</c:forEach>

							</div>
						</div>