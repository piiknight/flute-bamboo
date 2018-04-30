<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="ct-chart" id="my-chart">
                        
</div>
<script>
	$(function () {
		new Chartist.Bar('#my-chart', {
			  labels: ${label },
			  series: [
				${data1},
			    ${data2},
			    
			  ]
			}, {
			  stackBars: true,
			  axisY: {
			    labelInterpolationFnc: function(value) {
			      return (value / 1000000) + 'tr';
			    }
			  }
			}).on('draw', function(data) {
			  if(data.type === 'bar') {
			    data.element.attr({
			      style: 'stroke-width: 30px'
			    });
			  }
			});
	});
</script>