<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp" %>
<!-- header -->
<script type="text/javascript">
        document.title = '<tiles:getAsString name="title"></tiles:getAsString>';
</script>
<tiles:insertAttribute name="header"></tiles:insertAttribute>
<!-- /.header -->
    <div class="page-content">
    	<tiles:insertAttribute name="body"></tiles:insertAttribute>
    </div><!-- /.page-content -->

    <!-- Footer -->
   <tiles:insertAttribute name="footer"></tiles:insertAttribute>
    <!-- /.footer -->