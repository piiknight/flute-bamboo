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
						
						<a class="btn" href="${pageContext.request.contextPath }/detail/${newsPrevious }">Bài trước</a>
						<a class="btn" href="${pageContext.request.contextPath }/detail/${newsNext }">Bài kế</a>
					
					</div>
					
						<div class="more_themes">
							<h2>Bất động sản liên quan <i class="fa fa-thumbs-o-up"></i></h2>
							<div class="more_themes_container">
								<c:forEach items="${newsInvolve }" var="news">
								<div class="single_more_themes floatleft">
									<c:if test="${not empty news.picture }">
									<img src="${pageContext.request.contextPath }/files/${news.picture }" alt=""/>
									</c:if>
									<a href="${pageContext.request.contextPath }/detail/${news.lid }"><h2>${news.lname }</h2></a>
								</div>
								</c:forEach>

							</div>
						</div>