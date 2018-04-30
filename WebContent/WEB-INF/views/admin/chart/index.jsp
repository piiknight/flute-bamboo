<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp" %>  
<div class="main-panel">
   <div class="content">
      <div class="container-fluid">
         <div class="row">
            <div class="col-lg-3 col-sm-6">
               <div class="card">
                  <div class="content">
                     <div class="row">
                        <div class="col-xs-5">
                           <div class="icon-big icon-warning text-center">
                              <i class="ti-server"></i>
                           </div>
                        </div>
                        <div class="col-xs-7">
                           <div class="numbers">
                              <p>Sản phẩm</p>
                              ${totalProduct }
                           </div>
                        </div>
                     </div>
                     <div>
                        <hr>
                        <div class="stats">
                           <i class="ti-reload"></i> Updated now
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-lg-3 col-sm-6">
               <div class="card">
                  <div class="content">
                     <div class="row">
                        <div class="col-xs-5">
                           <div class="icon-big icon-success text-center">
                              <i class="ti-cup"></i>
                           </div>
                        </div>
                        <div class="col-xs-7">
                           <div class="numbers">
                              <p>Doanh thu (Triệu Đồng)</p>
                              <fmt:formatNumber>${totalRevenue.revenue/1000000 }</fmt:formatNumber>
                           </div>
                        </div>
                     </div>
                     <div>
                        <hr>
                        <div class="stats">
                           <i class="ti-reload"></i> Updated ${totalRevenue.upload } ngày trước
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-lg-3 col-sm-6">
               <div class="card">
                  <div class="content">
                     <div class="row">
                        <div class="col-xs-5">
                           <div class="icon-big icon-danger text-center">
                              <i class="ti-comments"></i>
                           </div>
                        </div>
                        <div class="col-xs-7">
                           <div class="numbers">
                              <p>Liên hệ</p>
                              23
                           </div>
                        </div>
                     </div>
                     <div>
                        <hr>
                        <div class="stats">
                           <i class="ti-reload"></i> Updated now
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-lg-3 col-sm-6">
               <div class="card">
                  <div class="content">
                     <div class="row">
                        <div class="col-xs-5">
                           <div class="icon-big icon-info text-center">
                              <i class="ti-twitter-alt"></i>
                           </div>
                        </div>
                        <div class="col-xs-7">
                           <div class="numbers">
                              <p>Người dùng</p>
                              +${totalUser }
                           </div>
                        </div>
                     </div>
                     <div>
                        <hr>
                        <div class="stats">
                           <i class="ti-reload"></i> Updated now
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         
         <div class="row">
            <div class="col-md-12">
               <div class="card">
                  <div class="header">
                     <h4 class="title">Doanh thu (triệu VNĐ)</h4>
                     <p class="category">Các tháng gầy đây</p>
                     <select id="selectMonth" name="selectMonth" class="my-input">
                     	<c:forEach begin="1" end="${monthMax }" var="i">
                     		<option value="${i }" ${(i == monthMax)?'selected':'' }>${i } tháng</option>
                     	</c:forEach>
                     </select>
                  </div>
                  <div class="content">
                     <div class="ct-chart" id="revenue-chart">
                        
                     </div>
                     <div>
                        <div class="chart-legend">
                           <i class="fa fa-circle text-info"></i> Doanh thu theo tháng
                           <i class="fa fa-circle text-warning"></i> Chưa được thanh toán
                        </div>
                        <hr>
                        <div class="stats">
                           <i class="ti-reload"></i> Updated 3 minutes ago
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         
         <div class="row">
            <div class="col-md-6">
               <div class="card">
                  <div class="header">
                     <h4 class="title">Hình thức thanh toán</h4>
                     <p class="category">Phương thức giao dịnh của người dùng</p>
                  </div>
                  <div class="content">
                     <div class="ct-chart ct-perfect-fourth" id="circle-chart">
                       
                     </div>
                     <div>
                        <div class="chart-legend">
                        <c:set var="i" value="1"></c:set>
                        	<c:forEach items="${circles }" var="circle">
                            <i class="fa fa-circle" id="circle-color-${i }"></i> ${circle.pname }
                            <c:set var="i" value="${i = i + 1 }"></c:set>
                            </c:forEach>
                        </div>
                        <hr>
                        <div class="stats">
                           <i class="ti-timer"></i> Campaign sent 2 days ago
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-md-6">
               <div class="card ">
                  <div class="header">
                     <h4 class="title">Sản phẩm bán ra</h4>
                     <p class="category">Số lượng</p>
                     <select id="selectMonthQuantity" name="selectMonthQuantity" class="my-input">
                     	<c:forEach begin="1" end="${monthMax }" var="i">
                     		<option value="${i }" ${(i == monthMax)?'selected':'' }>${i } tháng</option>
                     	</c:forEach>
                     </select>
                  </div>
                  <div class="content">
                     <div class="ct-chart" id="quantity-chart">
                        
                     </div>
                     <div>
                        <div class="chart-legend">
                           <i class="fa fa-circle text-info"></i> Số lượng bán ra theo tháng
                        </div>
                        <hr>
                        <div class="stats">
                           <i class="ti-check"></i> Data information certified
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>

<script type="text/javascript">	

	$("#selectMonth").change(function(){
		$('#countMonth').html(this.value);
		$.ajax({
			method: "POST",
			url: "",
			data: $("#selectMonth").serialize(),
			success : function(response){
				console.log(response);
				$( '#revenue-chart' ).html(response);
			}
		});
	});
	
	$("#selectMonthQuantity").change(function(){
		$.ajax({
			method: "POST",
			url: location.pathname + "/quantity",
			data: $("#selectMonthQuantity").serialize(),
			success : function(response){
				console.log(response);
				$( '#quantity-chart' ).html(response);
			}
		});
	});
</script>
<script type="text/javascript">
$(function () {
	var data = {
		series: ${circleCount }
		};

		var sum = function(a, b) { return a + b };

		new Chartist.Pie('#circle-chart', data, {
			labelInterpolationFnc: function(value) {
			   return Math.round(value / data.series.reduce(sum) * 100) + '%';
			}
		});
});
	
</script>
<script>
	$(function () {
		new Chartist.Bar('#revenue-chart', {
			  labels: ${label },
			  series: [
				${data1 },
			    ${data2 },
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
		new Chartist.Line('#quantity-chart', {
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
<script type="text/javascript">
	$("#circle-color-1").css("color", "#68B3C8");
	$("#circle-color-2").css("color", "#F3BB45");
	$("#circle-color-3").css("color", "#EB5E28");
	$("#circle-color-4").css("color", "#7AC29A");
	$("#circle-color-5").css("color", "#7A9E9F");
</script>
<div class="clearfix">...</div>