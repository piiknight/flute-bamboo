<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp" %>	    
<div class="clearfix content">

    <div class="contact_us">

        <h1>Liên hệ với chúng tôi</h1>

        <p>
            TRUNG TÂM ĐÀO TẠO LẬP TRÌNH VINAENTER EDU<br /> Trụ sở: 154 Phạm Như Xương, Liên Chiểu, Đà Nẵng<br /> Web: <a href="http://vinaenter.edu.vn" title="">www.vinaenter.edu.vn</a>
        </p>
        <c:if test="${not empty success }">
        	<div class="msg-success">
        		${success }
        	</div>
        </c:if>
        <c:if test="${not empty danger }">
        	<div id="msg.error">
        		${danger }
        	</div>
        </c:if>
        <form:errors path="contact.fullname"></form:errors>
        <form:errors path="contact.email"></form:errors>
        <form:errors path="contact.subject"></form:errors>
        <form:errors path="contact.content"></form:errors>

        <form action="" method="post">
            <p><input type="text" name="fullname" class="wpcf7-text" placeholder="Họ tên *" value="${contact.fullname }" /></p>
            <p><input type="text" name="email" class="wpcf7-email" placeholder="Email *" value="${contact.email }" /></p>
            <p><input type="text" name="subject" class="wpcf7-text" placeholder="Chủ đề *" value="${contact.subject }" /></p>
            <p><textarea class="wpcf7-textarea" name="content" placeholder="Nội dung *">${contact.content }</textarea></p>
            <p><input type="Submit" class="wpcf7-submit" value="Gửi liên hệ" /></p>
        </form>

    </div>

</div>