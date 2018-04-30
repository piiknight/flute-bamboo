<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp" %>
<!-- header -->
<script type="text/javascript">
        document.title = '<tiles:getAsString name="title"></tiles:getAsString>';
</script>
<tiles:insertAttribute name="header"></tiles:insertAttribute>
<!-- /.header -->
<tiles:insertAttribute name="left-bar"></tiles:insertAttribute>

<tiles:insertAttribute name="body"></tiles:insertAttribute>

<!-- Footer -->
<tiles:insertAttribute name="footer"></tiles:insertAttribute>
<!-- /.footer -->