<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp" %> 
<footer class="footer">
            <div class="container-fluid">
                <nav class="pull-left">
                    <ul>

                        <li>
                            <a href="#">
                                Pii Knight
                            </a>
                        </li>
                        <li>
                            <a href="#">
                               Blog
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                Licenses
                            </a>
                        </li>
                    </ul>
                </nav>
				<div class="copyright pull-right">
                    &copy; <script>document.write(new Date().getFullYear())</script><i class="fa fa-heart heart"></i>
                </div>
            </div>
        </footer>
        
</div>

</body>

    <!--   Core JS Files   -->

	<script src="${defines.urlAdmin }/js/bootstrap.min.js" type="text/javascript"></script>

	<!--  Checkbox, Radio & Switch Plugins -->
	<%-- <script src="${defines.urlAdmin }/js/bootstrap-checkbox-radio.js"></script> --%>

	<!--  Charts Plugin -->
	<script src="${defines.urlAdmin }/js/chartist.min.js"></script>

    <!--  Notifications Plugin    -->
    <script src="${defines.urlAdmin }/js/bootstrap-notify.js"></script>

    <!--  Google Maps Plugin    -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>

    <!-- Paper Dashboard Core javascript and methods for Demo purpose -->
	<script src="${defines.urlAdmin }/js/paper-dashboard.js"></script>

	<!-- Paper Dashboard DEMO methods, don't include it in your project! -->
	<script src="${defines.urlAdmin }/js/demo.js"></script>

	<script>
	$(document).ready(function(){
			var a = location.pathname.split('/');
			$('#' + a[3]).parent().addClass('active');
		});
	</script>

	<c:if test="${namePage eq 'index'}">
	<script type="text/javascript">
        var count = 0;
		var sumGroup = 0;
		var sum = 0;
		var countGroup = ${groupPage };
        $(document).ready(function(){
        	/* var path = window.location.pathname;
        	var split = path.split("/");
        	var active = split[3];
        	active = "#" + active;
    		$(active).addClass("active"); */
    		
	    	var page_id = ${page }; 
	    	sum = ${sumPage };
	    	sumGroup = parseInt((sum - 1) / countGroup) + 1;
	    	var groupPage =  (page_id - 1) / countGroup + 1;
	    	count = parseInt(groupPage);
	    	myFunction(count);
    	});
        function myFunction(x){
	    	var start = countGroup * (x - 1) + 1;
	    	var end = x * countGroup;
	    	for (var i = 1; i <= sum; i++){
	    		var str = "#idpage" + i;
	    		if (i >= start && i <= end){
	    			$(str).css("display", "");
	    		} else {
	    			$(str).css("display", "none");
	    		}
	    	}
	    	if (count == 1){
	    		$("#backlistpage").css("display", "none");
	    	} else {
	    		$("#backlistpage").css("display", "");
	    	}
	    	if (count == sumGroup){
	    		$("#nextlistpage").css("display", "none");
	    	} else {
	    		$("#nextlistpage").css("display", "");
	    	}
	    }
	    $("#nextlistpage").click( function(){
	    	count++;
	    	myFunction(count);
	    });
	    $("#backlistpage").click( function(){
	    	count--;
	    	myFunction(count);
	    });
       </script>
    </c:if>
</html>