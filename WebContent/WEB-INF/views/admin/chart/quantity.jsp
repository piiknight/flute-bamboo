<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="ct-chart" id="my-chart">
                        
</div>
<script>
	$(function () {
		new Chartist.Line('#my-chart', {
			  labels: ${labels },
			  series: [
			    ${data }
			  ]
			}, {
			  low: 0,
			  showArea: true
			});
	});
</script>