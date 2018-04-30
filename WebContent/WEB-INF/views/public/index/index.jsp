<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp" %>
<main id="main" class="">
   <div id="content" class="content-area page-wrapper" role="main">
      <div class="row row-main">
         <div class="large-12 col">
            <div class="col-inner">
               <div class="row align-center"  id="row-1895868586">
                  <div class="col medium-12 small-12 large-3"  >
                     <div class="col-inner text-center box-shadow-2 box-shadow-4-hover dark" style="padding:5px 5px 5px 5px;" >
                        <div class="row row-collapse"  id="row-71020639">
                           <div class="col medium-12 small-12 large-12"  >
                              <div class="col-inner"  >
                                 <a class="button alert expand"  >
                                 <i class="icon-menu" ></i>  <span>danh mục sản phẩm</span>
                                 </a>
                              </div>
                           </div>
							
						   <c:forEach items="${fluteList }" var="fl">                          
                           <div class="col medium-6 small-12 large-12"  >
                              <div class="col-inner"  >
                                 <a href="shop-sao/dong-tieu-truc.html" target="_self" class="button primary is-outline box-shadow-1 box-shadow-2-hover expand"  >
                                 <span>${fl.name_fl }</span>
                                 </a>
                              </div>
                           </div>
                           </c:forEach> 
                           <div class="col medium-6 small-12 large-12"  >
                              <div class="col-inner dark"  >
                                 <p style="text-align: center;"><span style="font-family: 'times new roman', times, serif;" data-text-color="primary">Shop sáo trúc Lãng Tử còn hỗ trợ tài liệu và thông tin về tiêu sáo.</span></p>
                              </div>
                           </div>
                           <div class="col medium-6 small-12 large-12"  >
                              <div class="col-inner"  >
                                 <div class="searchform-wrapper ux-search-box relative form- is-normal">
                                    <form method="get" class="searchform" action="https://tieusao.net/" role="search">
                                       <div class="flex-row relative">
                                          <div class="flex-col flex-grow">
                                             <input type="search" class="search-field mb-0" name="s" value="" placeholder="Tìm kiếm" />
                                             <input type="hidden" name="post_type" value="product" />
                                          </div>
                                          <div class="flex-col">
                                             <button type="submit" class="ux-search-submit submit-button secondary button icon mb-0">
                                             <i class="icon-search" ></i>				</button>
                                          </div>
                                       </div>
                                       <div class="live-search-results text-left z-top"></div>
                                    </form>
                                 </div>
                              </div>
                           </div>
                           <style scope="scope"></style>
                        </div>
                     </div>
                  </div>
                  <div class="col medium-12 small-12 large-9"  >
                     <div class="col-inner"  >
                        <div class="img has-hover x md-x lg-x y md-y lg-y" id="image_1460553397">
                           <div class="img-inner dark" >
                              <img width="900" height="450" src="wp-content/uploads/2017/08/baner-shop-sao-truc-NEN.jpg" class="attachment-original size-original" alt="" srcset="https://tieusao.net/wp-content/uploads/2017/08/baner-shop-sao-truc-NEN.jpg 900w, https://tieusao.net/wp-content/uploads/2017/08/baner-shop-sao-truc-NEN-300x150.jpg 300w, https://tieusao.net/wp-content/uploads/2017/08/baner-shop-sao-truc-NEN-800x400.jpg 800w" sizes="(max-width: 900px) 100vw, 900px" />
                           </div>
                           <style scope="scope">#image_1460553397 {
                              width: 100%;
                              }
                           </style>
                        </div>
                        <div class="gap-element" style="display:block; height:auto; padding-top:30px" class="clearfix"></div>
                     </div>
                  </div>
                  <style scope="scope"></style>
               </div>
               <div class="row align-equal align-center"  id="row-1651652196">
                  <div class="col medium-4 small-12 large-4"  >
                     <div class="col-inner text-left box-shadow-3 box-shadow-5-hover" style="padding:10px 10px 10px 10px;" >
                        <a class="button primary expand"  >
                        <span>Bạn đang cần gì?</span>
                        </a>
                        <ul>
                           <li><i class="fa fa-check-square-o" aria-hidden="true"></i> Bạn đang cần mua sáo trúc, sáo Dizi, sáo Mèo, sáo Bầu hay động tiêu.</li>
                           <li><i class="fa fa-check-square-o" aria-hidden="true"></i> Bạn đang cần học thổi sáo trúc và các loại sáo khác.</li>
                           <li><i class="fa fa-check-square-o" aria-hidden="true"></i> Bạn đang cần tìm hiểu về các loại sáo, các thông tin, cấu tạo, cách chơi, của các loại sáo như sáo Dizi, tiêu, sáo Mèo, sáo Bầu cũng như động tiêu..</li>
                        </ul>
                     </div>
                  </div>
                  <div class="col medium-4 small-12 large-4"  >
                     <div class="col-inner text-left box-shadow-3 box-shadow-5-hover" style="padding:10px 10px 10px 10px;" >
                        <a class="button secondary expand"  >
                        <span>Chúng tôi có gì?</span>
                        </a>
                        <ul>
                           <li><i class="fa fa-check-square-o" aria-hidden="true"></i> Shop bán sáo trúc, sáo Dizi, &#8230; tất các các loại sáo, tiêu bạn cần.</li>
                           <li><i class="fa fa-check-square-o" aria-hidden="true"></i> Tài liệu học sáo online, sách học sáo, các chuyên mục về sáo.</li>
                           <li><i class="fa fa-check-square-o" aria-hidden="true"></i> Giới thiệu chi tiết về thông số, cấu tạo các loại sáo ở các bài viết cũng như sản phẩm (rất cần khi tìm hiểu để mua sáo trúc, cũng như các loại sáo khác.</li>
                        </ul>
                     </div>
                  </div>
                  <div class="col medium-4 small-12 large-4"  >
                     <div class="col-inner text-left box-shadow-3 box-shadow-5-hover" style="padding:10px 10px 10px 10px;" >
                        <a class="button alert expand"  >
                        <span>Lý do chọn shop</span>
                        </a>
                        <ul>
                           <li><i class="fa fa-check-square-o" aria-hidden="true"></i> Hỗ trợ trực tiếp hoặc qua FB, ĐT.</li>
                           <li><i class="fa fa-check-square-o" aria-hidden="true"></i> Shop sáo trúc Lãng Tử uy tín chất lượng lâu năm. Hãy kiểm tra điều này ở đánh giá shop trên FB hoặc đọc các bài viết về sáo, tiêu của chúng tôi.</li>
                           <li><i class="fa fa-check-square-o" aria-hidden="true"></i> Shop bán sáo có nhiều mức giá, giá rẻ so với chất lượng, chế độ bảo hành trọn đời (2-5 năm với sáo Mèo &#8211; Bầu).</li>
                        </ul>
                     </div>
                  </div>
                  <style scope="scope"></style>
               </div>
               <!--
                  <div class="row row-collapse align-equal align-center row-box-shadow-2 row-box-shadow-5-hover"  id="row-1532827942">
                     <div class="col medium-6 small-12 large-3"  >
                        <div class="col-inner"  >
                           <a class="button primary is-shade box-shadow-2 box-shadow-3-hover expand"  >
                           <span>Sáo tàu Dizi</span>
                           </a>
                           <div class="box has-hover has-hover box-shadow-2 box-shadow-5-hover box-default box-text-bottom" >
                              <a href="shop-sao/tieu-sao-trung-quoc/dizi.html" target="_blank">
                                 <div class="box-image" >
                                    <div class="" >
                                       <img width="300" height="300" src="wp-content/uploads/2017/08/sao-dizi-khop-kep-cao-cap-80-300x300.jpg" class="attachment-medium size-medium" alt="" srcset="https://tieusao.net/wp-content/uploads/2017/08/sao-dizi-khop-kep-cao-cap-80-300x300.jpg 300w, https://tieusao.net/wp-content/uploads/2017/08/sao-dizi-khop-kep-cao-cap-80-120x120.jpg 120w, https://tieusao.net/wp-content/uploads/2017/08/sao-dizi-khop-kep-cao-cap-80.jpg 500w" sizes="(max-width: 300px) 100vw, 300px" />
                                    </div>
                                 </div>
                              </a>
                              <div class="box-text text-center" >
                                 <div class="box-text-inner">
                                    <h4 style="text-align: center;"><strong>Sáo Dizi &#8211; sáo Tàu</strong></h4>
                                    <p>Đủ tone, Đủ loại, (không khớp, có khớp, trúc tím, lệ trúc &#8230;). Nơi mua sáo Dizi tin cậy, giá rẻ.</p>
                                    <p>Giá sáo Tàu Dizi chỉ từ 150k.</p>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="col medium-6 small-12 large-3"  >
                        <div class="col-inner"  >
                           <a class="button secondary is-shade box-shadow-1 box-shadow-3-hover expand"  >
                           <span>Sáo ngang Việt</span>
                           </a>
                           <div class="box has-hover has-hover box-shadow-2 box-shadow-5-hover box-text-bottom" >
                              <a href="shop-sao/tieu-sao-viet/sao-ngang-viet.html" target="_blank">
                                 <div class="box-image" >
                                    <div class="" >
                                       <img width="300" height="300" src="wp-content/uploads/2017/08/sao-nua-bac-80-300x300.jpg" class="attachment-medium size-medium" alt="" srcset="https://tieusao.net/wp-content/uploads/2017/08/sao-nua-bac-80-300x300.jpg 300w, https://tieusao.net/wp-content/uploads/2017/08/sao-nua-bac-80-120x120.jpg 120w, https://tieusao.net/wp-content/uploads/2017/08/sao-nua-bac-80.jpg 500w" sizes="(max-width: 300px) 100vw, 300px" />
                                    </div>
                                 </div>
                              </a>
                              <div class="box-text text-center" >
                                 <div class="box-text-inner">
                                    <h4>Sáo ngang Việt</h4>
                                    <p>Đủ tone, Đủ loại, đủ các mức giá. Shop bán sáo trúc sáo nứa uy tín, giá rẻ nhất!</p>
                                    <p>Giá sáo trúc nứa chỉ từ 100k.</p>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="col medium-6 small-12 large-3"  >
                        <div class="col-inner"  >
                           <a class="button primary is-shade box-shadow-2 box-shadow-3-hover expand"  >
                           <span>Động tiêu Trúc</span>
                           </a>
                           <div class="box has-hover has-hover box-shadow-2 box-shadow-5-hover box-text-bottom" >
                              <a href="shop-sao/dong-tieu-truc.html" target="_blank">
                                 <div class="box-image" >
                                    <div class="" >
                                       <img width="300" height="300" src="wp-content/uploads/2017/08/tieu-truc-tim-80-300x300.jpg" class="attachment-medium size-medium" alt="" srcset="https://tieusao.net/wp-content/uploads/2017/08/tieu-truc-tim-80-300x300.jpg 300w, https://tieusao.net/wp-content/uploads/2017/08/tieu-truc-tim-80-120x120.jpg 120w, https://tieusao.net/wp-content/uploads/2017/08/tieu-truc-tim-80.jpg 500w" sizes="(max-width: 300px) 100vw, 300px" />
                                    </div>
                                 </div>
                              </a>
                              <div class="box-text text-center" >
                                 <div class="box-text-inner">
                                    <h4>Động tiêu Việt</h4>
                                    <p>Shop bán đủ các loại hệ tiêu: bát khổng 8 lỗ, hệ tiêu 6 lỗ, 10 lỗ, làm từ trúc Việt, trúc tím.</p>
                                    <p>Giá động tiêu trúc chỉ từ 200k</p>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="col medium-6 small-12 large-3"  >
                        <div class="col-inner"  >
                           <a class="button secondary is-shade box-shadow-2 box-shadow-3-hover expand"  >
                           <span>Sáo mèo - Bầu</span>
                           </a>
                           <div class="box has-hover has-hover box-shadow-2 box-shadow-5-hover box-text-bottom" >
                              <a href="shop-sao/sao-meo-sao-bau.html" target="_blank">
                                 <div class="box-image" >
                                    <div class="" >
                                       <img width="300" height="300" src="wp-content/uploads/2017/08/sao-bau-truc-tim-cham-rong-80-300x300.jpg" class="attachment-medium size-medium" alt="" srcset="https://tieusao.net/wp-content/uploads/2017/08/sao-bau-truc-tim-cham-rong-80-300x300.jpg 300w, https://tieusao.net/wp-content/uploads/2017/08/sao-bau-truc-tim-cham-rong-80-120x120.jpg 120w, https://tieusao.net/wp-content/uploads/2017/08/sao-bau-truc-tim-cham-rong-80.jpg 500w" sizes="(max-width: 300px) 100vw, 300px" />
                                    </div>
                                 </div>
                              </a>
                              <div class="box-text text-center" >
                                 <div class="box-text-inner">
                                    <h4>Sáo Mèo và sáo Bầu</h4>
                                    <p>Đầy đủ các loại sáo mèo Việt, Tàu, đơn Kép và sáo bầu, lam đồng tốt, bền, đẹp, âm hay.</p>
                                    <p>Giá sáo Mèo &#8211; Bầu chỉ từ 150k.</p>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <style scope="scope">#row-1532827942 > .col > .col-inner {
                        padding: 10px 10px 10px 10px;
                        }
                        @media (min-width:850px) {
                        #row-1532827942 > .col > .col-inner {
                        padding: 12px 12px 12px 12px;
                        }
                        }
                     </style>
                  </div>
                  -->
               <!--
                  <div class="row"  id="row-1316712335">
                     <div class="col medium-6 small-12 large-6"  >
                        <div class="col-inner text-center"  >
                           <section class="section" id="section_1475486972">
                              <div class="bg section-bg fill bg-fill bg-loaded bg-loaded" >
                                 <div class="is-border"
                                    style="border-color:rgb(235, 235, 235);border-width:1px 0px 0px 0px;"></div>
                              </div>
                              <div class="section-content relative">
                                 <div class="row row-large align-middle align-center"  id="row-1166605808">
                                    <div class="col medium-12 small-12 large-6"  >
                                       <div class="col-inner text-center"  >
                                          <h3>Về sáo Dizi</h3>
                                          <p>Sáo Tàu &#8211; sáo Dizi là loại sáo ngang được thiết kế đẹp và có lỗ dán màng rung của Trung Quốc. Âm Dizi có độ rung của màng rung, tạo màu âm đặc biệt. Sáo Dizi có thể không khớp và có khớp</p>
                                          <a rel="noopener noreferrer" href="ve-sao-dizi-sao-tau-sao-ngang-trung-quoc.html" target="_blank" class="button primary is-outline"  >
                                          <span>Xem thêm</span>
                                          </a>
                                       </div>
                                    </div>
                                    <div class="col medium-12 small-12 large-6"  >
                                       <div class="col-inner box-shadow-2 box-shadow-5-hover" style="background-color:rgb(255, 255, 255);padding:15px 15px 15px 15px;" >
                                          <div class="img has-hover x md-x lg-x y md-y lg-y" id="image_1469388035">
                                             <div class="img-inner dark" >
                                                <img width="300" height="300" src="wp-content/uploads/2017/08/sao-tau-dizi-truc-tim-khop-kep-80-300x300.jpg" class="attachment-medium size-medium" alt="" srcset="https://tieusao.net/wp-content/uploads/2017/08/sao-tau-dizi-truc-tim-khop-kep-80-300x300.jpg 300w, https://tieusao.net/wp-content/uploads/2017/08/sao-tau-dizi-truc-tim-khop-kep-80-120x120.jpg 120w, https://tieusao.net/wp-content/uploads/2017/08/sao-tau-dizi-truc-tim-khop-kep-80.jpg 500w" sizes="(max-width: 300px) 100vw, 300px" />
                                             </div>
                                             <style scope="scope">#image_1469388035 {
                                                width: 100%;
                                                }
                                             </style>
                                          </div>
                                       </div>
                                    </div>
                                    <style scope="scope"></style>
                                 </div>
                              </div>
                              <style scope="scope">#section_1475486972 {
                                 padding-top: 59px;
                                 padding-bottom: 59px;
                                 min-height: 300px;
                                 background-color: rgb(228, 228, 228);
                                 }
                              </style>
                           </section>
                           <a class="button primary expand"  >
                           <span>Kéo ngang để xem thêm sáo Dizi</span>
                           </a>
                           <div class="row large-columns-2 medium-columns-2 small-columns- row-small">
                              <div class="product-small col has-hover post-3904 product type-product status-publish has-post-thumbnail product_cat-dizi product_tag-ban-sao-tau-sao-dizi product_tag-mua-sao-tau-sao-dizi product_tag-sao-co-mang-rung product_tag-sao-dizi product_tag-sao-tau product_tag-sao-tau-sao-dizi-gia-re product_tag-sao-trung-quoc first instock sale shipping-taxable purchasable product-type-simple">
                                 <div class="col-inner">
                                    <div class="badge-container absolute left top z-1">
                                       <div class="callout badge badge-circle">
                                          <div class="badge-inner secondary on-sale"><span class="onsale">-10%</span></div>
                                       </div>
                                    </div>
                                    <div class="product-small box ">
                                       <div class="box-image">
                                          <div class="image-fade_in_back">
                                             <a href="mua-ban/sao-dizi-khong-khop-gia-re-sao-tau-gia-ngoc-dz00.html">
                                             <img width="305" height="300" src="wp-content/uploads/2017/04/sao-dizi-gia-ngoc-khong-khop-305x300.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="Sáo Tàu Dizi giả ngọc không khớp" />				</a>
                                          </div>
                                          <div class="image-tools is-small top right show-on-hover"></div>
                                          <div class="image-tools is-small hide-for-small bottom left show-on-hover"></div>
                                          <div class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">
                                             <a class="quick-view" data-prod="3904" href="#quick-view">Quick View</a>
                                          </div>
                                       </div>
                                       <div class="box-text box-text-products text-center grid-style-2">
                                          <div class="title-wrapper">
                                             <p class="category uppercase is-smaller no-text-overflow product-cat op-7">
                                                SÁO TÀU SÁO DIZI
                                             </p>
                                             <p class="name product-title"><a href="mua-ban/sao-dizi-khong-khop-gia-re-sao-tau-gia-ngoc-dz00.html">Sáo Dizi không khớp giá rẻ &#8211; sáo Tàu giả ngọc Dz00</a></p>
                                          </div>
                                          <div class="price-wrapper">
                                             <div class="star-rating"><span style="width:100%">Được xếp hạng <strong class="rating">5.00</strong> 5 sao</span></div>
                                             <span class="price"><del><span class="woocommerce-Price-amount amount">199,000<span class="woocommerce-Price-currencySymbol">&#8363;</span></span></del> <ins><span class="woocommerce-Price-amount amount">179,000<span class="woocommerce-Price-currencySymbol">&#8363;</span></span></ins></span>
                                          </div>
                                          <div class="add-to-cart-button"><a href="indexb9ff.html?add-to-cart=3904" rel="nofollow" data-product_id="3904" class="ajax_add_to_cart add_to_cart_button product_type_simple button primary is-outline mb-0 is-small">Đặt hàng</a></div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="product-small col has-hover post-144 product type-product status-publish has-post-thumbnail product_cat-dizi product_tag-ban-sao-tau-sao-dizi product_tag-mua-sao-tau-sao-dizi product_tag-sao-co-mang-rung product_tag-sao-dizi product_tag-sao-tau product_tag-sao-tau-sao-dizi-gia-re product_tag-sao-tau-sao-dizi-khop-noi-dong product_tag-sao-trung-quoc  instock shipping-taxable purchasable product-type-simple">
                                 <div class="col-inner">
                                    <div class="badge-container absolute left top z-1"></div>
                                    <div class="product-small box ">
                                       <div class="box-image">
                                          <div class="image-fade_in_back">
                                             <a href="mua-ban/dizi-sinh-vien.html">
                                             <img width="305" height="300" src="wp-content/uploads/2016/03/sao-dizi-khop-dong-sao-tau-2-khuc-305x300.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="Sáo dizi khớp đồng sáo tàu giá rẻ" />				</a>
                                          </div>
                                          <div class="image-tools is-small top right show-on-hover"></div>
                                          <div class="image-tools is-small hide-for-small bottom left show-on-hover"></div>
                                          <div class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">
                                             <a class="quick-view" data-prod="144" href="#quick-view">Quick View</a>
                                          </div>
                                       </div>
                                       <div class="box-text box-text-products text-center grid-style-2">
                                          <div class="title-wrapper">
                                             <p class="category uppercase is-smaller no-text-overflow product-cat op-7">
                                                SÁO TÀU SÁO DIZI
                                             </p>
                                             <p class="name product-title"><a href="mua-ban/dizi-sinh-vien.html">Sáo Dizi khớp nối đồng giá rẻ &#8211; sáo Tàu sinh viên Dz10</a></p>
                                          </div>
                                          <div class="price-wrapper">
                                             <div class="star-rating"><span style="width:100%">Được xếp hạng <strong class="rating">5.00</strong> 5 sao</span></div>
                                             <span class="price"><span class="woocommerce-Price-amount amount">149,000<span class="woocommerce-Price-currencySymbol">&#8363;</span></span></span>
                                          </div>
                                          <div class="add-to-cart-button"><a href="indexc989.html?add-to-cart=144" rel="nofollow" data-product_id="144" class="ajax_add_to_cart add_to_cart_button product_type_simple button primary is-outline mb-0 is-small">Đặt hàng</a></div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="product-small col has-hover post-3492 product type-product status-publish has-post-thumbnail product_cat-dizi product_tag-ban-sao-tau-sao-dizi product_tag-mua-sao-tau-sao-dizi product_tag-sao-co-mang-rung product_tag-sao-dizi product_tag-sao-tau product_tag-sao-tau-sao-dizi-chat-luong product_tag-sao-tau-sao-dizi-gia-re product_tag-sao-tau-sao-dizi-khop-inox product_tag-sao-tau-sao-dizi-khop-noi-inox product_tag-sao-tau-sao-dizi-son-mau-nau product_tag-sao-trung-quoc  instock sale featured shipping-taxable purchasable product-type-simple">
                                 <div class="col-inner">
                                    <div class="badge-container absolute left top z-1">
                                       <div class="callout badge badge-circle">
                                          <div class="badge-inner secondary on-sale"><span class="onsale">-14%</span></div>
                                       </div>
                                    </div>
                                    <div class="product-small box ">
                                       <div class="box-image">
                                          <div class="image-fade_in_back">
                                             <a href="mua-ban/sao-tau-dong-min-sao-dizi-nau-khop-inox.html">
                                             <img width="305" height="300" src="wp-content/uploads/2016/03/sao-dizi-nau-khop-inox-bo-sao-Tau-305x300.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="Bộ sáo Dizi Dongmin - Sáo Tàu màu nâu khớp nối inox" />				</a>
                                          </div>
                                          <div class="image-tools is-small top right show-on-hover"></div>
                                          <div class="image-tools is-small hide-for-small bottom left show-on-hover"></div>
                                          <div class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">
                                             <a class="quick-view" data-prod="3492" href="#quick-view">Quick View</a>
                                          </div>
                                       </div>
                                       <div class="box-text box-text-products text-center grid-style-2">
                                          <div class="title-wrapper">
                                             <p class="category uppercase is-smaller no-text-overflow product-cat op-7">
                                                SÁO TÀU SÁO DIZI
                                             </p>
                                             <p class="name product-title"><a href="mua-ban/sao-tau-dong-min-sao-dizi-nau-khop-inox.html">Sáo Tàu  Dong Min- sáo Dizi Nâu khớp inox Dz11</a></p>
                                          </div>
                                          <div class="price-wrapper">
                                             <div class="star-rating"><span style="width:100%">Được xếp hạng <strong class="rating">5.00</strong> 5 sao</span></div>
                                             <span class="price"><del><span class="woocommerce-Price-amount amount">349,000<span class="woocommerce-Price-currencySymbol">&#8363;</span></span></del> <ins><span class="woocommerce-Price-amount amount">299,000<span class="woocommerce-Price-currencySymbol">&#8363;</span></span></ins></span>
                                          </div>
                                          <div class="add-to-cart-button"><a href="index6230.html?add-to-cart=3492" rel="nofollow" data-product_id="3492" class="ajax_add_to_cart add_to_cart_button product_type_simple button primary is-outline mb-0 is-small">Đặt hàng</a></div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="product-small col has-hover post-3800 product type-product status-publish has-post-thumbnail product_cat-dizi product_tag-ban-sao-tau-sao-dizi product_tag-mua-sao-tau-sao-dizi product_tag-sao-co-mang-rung product_tag-sao-dizi product_tag-sao-dizi-khop-kep product_tag-sao-tau product_tag-sao-tau-cao-cap product_tag-sao-tau-khop-kep product_tag-sao-tau-sao-dizi-chat-luong product_tag-sao-tau-sao-dizi-khop-inox product_tag-sao-tau-sao-dizi-khop-noi-inox product_tag-sao-tau-sao-dizi-truc-tim product_tag-sao-trung-quoc last instock shipping-taxable purchasable product-type-simple">
                                 <div class="col-inner">
                                    <div class="badge-container absolute left top z-1"></div>
                                    <div class="product-small box ">
                                       <div class="box-image">
                                          <div class="image-fade_in_back">
                                             <a href="mua-ban/sao-dizi-sao-tau-khop-kep-truc-tim-dz23.html">
                                             <img width="305" height="300" src="wp-content/uploads/2016/03/sao-dizi-truc-tim-khop-kep-305x300.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="" />				</a>
                                          </div>
                                          <div class="image-tools is-small top right show-on-hover"></div>
                                          <div class="image-tools is-small hide-for-small bottom left show-on-hover"></div>
                                          <div class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">
                                             <a class="quick-view" data-prod="3800" href="#quick-view">Quick View</a>
                                          </div>
                                       </div>
                                       <div class="box-text box-text-products text-center grid-style-2">
                                          <div class="title-wrapper">
                                             <p class="category uppercase is-smaller no-text-overflow product-cat op-7">
                                                SÁO TÀU SÁO DIZI
                                             </p>
                                             <p class="name product-title"><a href="mua-ban/sao-dizi-sao-tau-khop-kep-truc-tim-dz23.html">Sáo Dizi sáo tàu khớp kép trúc tím Dz23</a></p>
                                          </div>
                                          <div class="price-wrapper">
                                             <div class="star-rating"><span style="width:100%">Được xếp hạng <strong class="rating">5.00</strong> 5 sao</span></div>
                                             <span class="price"><span class="woocommerce-Price-amount amount">549,000<span class="woocommerce-Price-currencySymbol">&#8363;</span></span></span>
                                          </div>
                                          <div class="add-to-cart-button"><a href="index0b45.html?add-to-cart=3800" rel="nofollow" data-product_id="3800" class="ajax_add_to_cart add_to_cart_button product_type_simple button primary is-outline mb-0 is-small">Đặt hàng</a></div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="product-small col has-hover post-3805 product type-product status-publish has-post-thumbnail product_cat-dizi product_tag-ban-sao-tau-sao-dizi product_tag-mua-sao-tau-sao-dizi product_tag-sao-co-mang-rung product_tag-sao-dizi product_tag-sao-dizi-khop-kep product_tag-sao-dizi-le-truc product_tag-sao-tau product_tag-sao-tau-cao-cap product_tag-sao-tau-khop-kep product_tag-sao-tau-sao-dizi-chat-luong product_tag-sao-tau-sao-dizi-gia-re product_tag-sao-tau-sao-dizi-khop-inox product_tag-sao-tau-sao-dizi-khop-noi-inox product_tag-sao-trung-quoc first instock shipping-taxable purchasable product-type-simple">
                                 <div class="col-inner">
                                    <div class="badge-container absolute left top z-1"></div>
                                    <div class="product-small box ">
                                       <div class="box-image">
                                          <div class="image-fade_in_back">
                                             <a href="mua-ban/sao-dizi-le-truc-sao-tau-khop-inox-kep-dz26.html">
                                             <img width="305" height="300" src="wp-content/uploads/2017/04/sao-dizi-le-truc-khop-kep-305x300.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="Sáo Dizi lệ trúc khớp nối kép inox" />				</a>
                                          </div>
                                          <div class="image-tools is-small top right show-on-hover"></div>
                                          <div class="image-tools is-small hide-for-small bottom left show-on-hover"></div>
                                          <div class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">
                                             <a class="quick-view" data-prod="3805" href="#quick-view">Quick View</a>
                                          </div>
                                       </div>
                                       <div class="box-text box-text-products text-center grid-style-2">
                                          <div class="title-wrapper">
                                             <p class="category uppercase is-smaller no-text-overflow product-cat op-7">
                                                SÁO TÀU SÁO DIZI
                                             </p>
                                             <p class="name product-title"><a href="mua-ban/sao-dizi-le-truc-sao-tau-khop-inox-kep-dz26.html">Sáo Dizi lệ trúc &#8211; sáo tàu khớp inox kép Dz26</a></p>
                                          </div>
                                          <div class="price-wrapper">
                                             <span class="price"><span class="woocommerce-Price-amount amount">749,000<span class="woocommerce-Price-currencySymbol">&#8363;</span></span></span>
                                          </div>
                                          <div class="add-to-cart-button"><a href="indexee7b.html?add-to-cart=3805" rel="nofollow" data-product_id="3805" class="ajax_add_to_cart add_to_cart_button product_type_simple button primary is-outline mb-0 is-small">Đặt hàng</a></div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="product-small col has-hover post-3004 product type-product status-publish has-post-thumbnail product_cat-dizi product_tag-ban-sao-tau-sao-dizi product_tag-mua-sao-tau-sao-dizi product_tag-sao-co-mang-rung product_tag-sao-dizi product_tag-sao-tau product_tag-sao-tau-sao-dizi-chat-luong product_tag-sao-tau-sao-dizi-gia-re product_tag-sao-tau-sao-dizi-hac-ma product_tag-sao-tau-sao-dizi-khop-inox product_tag-sao-tau-sao-dizi-khop-noi-inox product_tag-sao-tau-sao-dizi-son-mau product_tag-sao-tau-sao-dizi-son-mau-den product_tag-sao-trung-quoc  instock sale shipping-taxable purchasable product-type-simple">
                                 <div class="col-inner">
                                    <div class="badge-container absolute left top z-1">
                                       <div class="callout badge badge-circle">
                                          <div class="badge-inner secondary on-sale"><span class="onsale">-14%</span></div>
                                       </div>
                                    </div>
                                    <div class="product-small box ">
                                       <div class="box-image">
                                          <div class="image-fade_in_back">
                                             <a href="mua-ban/sao-tau-hac-ma-sao-dizi-den-khop-inox.html">
                                             <img width="305" height="300" src="wp-content/uploads/2016/03/sao-dizi-den-khop-inox-bo-sao-tau-305x300.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="Bộ sáo Dizi đen" />				</a>
                                          </div>
                                          <div class="image-tools is-small top right show-on-hover"></div>
                                          <div class="image-tools is-small hide-for-small bottom left show-on-hover"></div>
                                          <div class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">
                                             <a class="quick-view" data-prod="3004" href="#quick-view">Quick View</a>
                                          </div>
                                       </div>
                                       <div class="box-text box-text-products text-center grid-style-2">
                                          <div class="title-wrapper">
                                             <p class="category uppercase is-smaller no-text-overflow product-cat op-7">
                                                SÁO TÀU SÁO DIZI
                                             </p>
                                             <p class="name product-title"><a href="mua-ban/sao-tau-hac-ma-sao-dizi-den-khop-inox.html">Sáo Tàu Hắc Mã &#8211; sáo Dizi đen &#8211; khớp inox Dz12</a></p>
                                          </div>
                                          <div class="price-wrapper">
                                             <div class="star-rating"><span style="width:100%">Được xếp hạng <strong class="rating">5.00</strong> 5 sao</span></div>
                                             <span class="price"><del><span class="woocommerce-Price-amount amount">349,000<span class="woocommerce-Price-currencySymbol">&#8363;</span></span></del> <ins><span class="woocommerce-Price-amount amount">299,000<span class="woocommerce-Price-currencySymbol">&#8363;</span></span></ins></span>
                                          </div>
                                          <div class="add-to-cart-button"><a href="indexcb60.html?add-to-cart=3004" rel="nofollow" data-product_id="3004" class="ajax_add_to_cart add_to_cart_button product_type_simple button primary is-outline mb-0 is-small">Đặt hàng</a></div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="product-small col has-hover post-3002 product type-product status-publish has-post-thumbnail product_cat-dizi product_tag-ban-sao-tau-sao-dizi product_tag-mua-sao-tau-sao-dizi product_tag-sao-co-mang-rung product_tag-sao-dizi product_tag-sao-tau product_tag-sao-tau-sao-dizi-bach-ma product_tag-sao-tau-sao-dizi-chat-luong product_tag-sao-tau-sao-dizi-gia-re product_tag-sao-tau-sao-dizi-khop-inox product_tag-sao-tau-sao-dizi-khop-noi-inox product_tag-sao-tau-sao-dizi-son-mau product_tag-sao-tau-sao-dizi-son-mau-trang product_tag-sao-trung-quoc  instock sale shipping-taxable purchasable product-type-simple">
                                 <div class="col-inner">
                                    <div class="badge-container absolute left top z-1">
                                       <div class="callout badge badge-circle">
                                          <div class="badge-inner secondary on-sale"><span class="onsale">-14%</span></div>
                                       </div>
                                    </div>
                                    <div class="product-small box ">
                                       <div class="box-image">
                                          <div class="image-fade_in_back">
                                             <a href="mua-ban/sao-tau-dizi-bach-ma-khop-inox-trang.html">
                                             <img width="305" height="300" src="wp-content/uploads/2016/03/sao-dizi-bach-ma-sao-tau-khop-inox-mau-trang-305x300.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="Sáo dizi Bạch Ngọc màu trắng khớp inox" />				</a>
                                          </div>
                                          <div class="image-tools is-small top right show-on-hover"></div>
                                          <div class="image-tools is-small hide-for-small bottom left show-on-hover"></div>
                                          <div class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">
                                             <a class="quick-view" data-prod="3002" href="#quick-view">Quick View</a>
                                          </div>
                                       </div>
                                       <div class="box-text box-text-products text-center grid-style-2">
                                          <div class="title-wrapper">
                                             <p class="category uppercase is-smaller no-text-overflow product-cat op-7">
                                                SÁO TÀU SÁO DIZI
                                             </p>
                                             <p class="name product-title"><a href="mua-ban/sao-tau-dizi-bach-ma-khop-inox-trang.html">Sáo Tàu Dizi Bạch Mã khớp inox (Trắng) Dz13</a></p>
                                          </div>
                                          <div class="price-wrapper">
                                             <span class="price"><del><span class="woocommerce-Price-amount amount">349,000<span class="woocommerce-Price-currencySymbol">&#8363;</span></span></del> <ins><span class="woocommerce-Price-amount amount">299,000<span class="woocommerce-Price-currencySymbol">&#8363;</span></span></ins></span>
                                          </div>
                                          <div class="add-to-cart-button"><a href="index9195.html?add-to-cart=3002" rel="nofollow" data-product_id="3002" class="ajax_add_to_cart add_to_cart_button product_type_simple button primary is-outline mb-0 is-small">Đặt hàng</a></div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="product-small col has-hover post-2984 product type-product status-publish has-post-thumbnail product_cat-dizi product_tag-ban-sao-tau-sao-dizi product_tag-mua-sao-tau-sao-dizi product_tag-sao-co-mang-rung product_tag-sao-dizi product_tag-sao-tau product_tag-sao-tau-sao-dizi-chat-luong product_tag-sao-tau-sao-dizi-gia-re product_tag-sao-tau-sao-dizi-khop-inox product_tag-sao-tau-sao-dizi-khop-noi-inox product_tag-sao-tau-sao-dizi-nam-ngoc product_tag-sao-tau-sao-dizi-son-mau product_tag-sao-tau-sao-dizi-son-mau-xanh product_tag-sao-trung-quoc last instock sale shipping-taxable purchasable product-type-simple">
                                 <div class="col-inner">
                                    <div class="badge-container absolute left top z-1">
                                       <div class="callout badge badge-circle">
                                          <div class="badge-inner secondary on-sale"><span class="onsale">-14%</span></div>
                                       </div>
                                    </div>
                                    <div class="product-small box ">
                                       <div class="box-image">
                                          <div class="image-fade_in_back">
                                             <a href="mua-ban/sao-tau-dizi-nam-ngoc-xanh-khop-inox.html">
                                             <img width="305" height="300" src="wp-content/uploads/2016/03/sao-Dizi-xanh-sao-tau-nam-ngoc-305x300.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="Sáo Tàu Dizi xanh (Nạm ngọc)" />				</a>
                                          </div>
                                          <div class="image-tools is-small top right show-on-hover"></div>
                                          <div class="image-tools is-small hide-for-small bottom left show-on-hover"></div>
                                          <div class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">
                                             <a class="quick-view" data-prod="2984" href="#quick-view">Quick View</a>
                                          </div>
                                       </div>
                                       <div class="box-text box-text-products text-center grid-style-2">
                                          <div class="title-wrapper">
                                             <p class="category uppercase is-smaller no-text-overflow product-cat op-7">
                                                SÁO TÀU SÁO DIZI
                                             </p>
                                             <p class="name product-title"><a href="mua-ban/sao-tau-dizi-nam-ngoc-xanh-khop-inox.html">Sáo Tàu Dizi Nạm Ngọc (xanh) khớp inox Dz14</a></p>
                                          </div>
                                          <div class="price-wrapper">
                                             <div class="star-rating"><span style="width:100%">Được xếp hạng <strong class="rating">5.00</strong> 5 sao</span></div>
                                             <span class="price"><del><span class="woocommerce-Price-amount amount">349,000<span class="woocommerce-Price-currencySymbol">&#8363;</span></span></del> <ins><span class="woocommerce-Price-amount amount">299,000<span class="woocommerce-Price-currencySymbol">&#8363;</span></span></ins></span>
                                          </div>
                                          <div class="add-to-cart-button"><a href="index1f17.html?add-to-cart=2984" rel="nofollow" data-product_id="2984" class="ajax_add_to_cart add_to_cart_button product_type_simple button primary is-outline mb-0 is-small">Đặt hàng</a></div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <a rel="noopener noreferrer" href="shop-sao/tieu-sao-trung-quoc/dizi.html" target="_blank" class="button primary is-outline expand"  >
                           <span>Tất cả các sản phẩm sáo Dizi</span>
                           </a>
                        </div>
                     </div>
                     <div class="col medium-6 small-12 large-6"  >
                        <div class="col-inner text-center"  >
                           <section class="section" id="section_1775864168">
                              <div class="bg section-bg fill bg-fill bg-loaded bg-loaded" >
                                 <div class="is-border"
                                    style="border-color:rgb(235, 235, 235);border-width:1px 0px 0px 0px;"></div>
                              </div>
                              <div class="section-content relative">
                                 <div class="row row-large align-middle align-center"  id="row-604693068">
                                    <div class="col medium-12 small-12 large-6"  >
                                       <div class="col-inner text-center"  >
                                          <h3>Về sáo ngang</h3>
                                          <p>Sáo ngang có nhiều tone và có thể có 6 lỗ (phổ biến hơn) hoặc 10 lỗ. Sáo ngang &#8211; sáo trúc nứa là loại sáo thổi ngang làm chủ yếu bằng trúc hoặc nứa, có thể làm bằng gỗ, nhựa và kim loại.</p>
                                          <a rel="noopener noreferrer" href="ve-sao-truc-sao-nua-sao-ngang-viet.html" target="_blank" class="button primary is-outline"  >
                                          <span>Xem thêm</span>
                                          </a>
                                       </div>
                                    </div>
                                    <div class="col medium-12 small-12 large-6"  >
                                       <div class="col-inner box-shadow-2 box-shadow-5-hover" style="background-color:rgb(255, 255, 255);padding:15px 15px 15px 15px;" >
                                          <div class="img has-hover x md-x lg-x y md-y lg-y" id="image_368273576">
                                             <div class="img-inner dark" >
                                                <img width="300" height="300" src="wp-content/uploads/2017/08/sao-nua-bac-nua-nam-80-300x300.jpg" class="attachment-medium size-medium" alt="" srcset="https://tieusao.net/wp-content/uploads/2017/08/sao-nua-bac-nua-nam-80-300x300.jpg 300w, https://tieusao.net/wp-content/uploads/2017/08/sao-nua-bac-nua-nam-80-120x120.jpg 120w, https://tieusao.net/wp-content/uploads/2017/08/sao-nua-bac-nua-nam-80.jpg 500w" sizes="(max-width: 300px) 100vw, 300px" />
                                             </div>
                                             <style scope="scope">#image_368273576 {
                                                width: 100%;
                                                }
                                             </style>
                                          </div>
                                       </div>
                                    </div>
                                    <style scope="scope"></style>
                                 </div>
                              </div>
                              <style scope="scope">#section_1775864168 {
                                 padding-top: 59px;
                                 padding-bottom: 59px;
                                 min-height: 300px;
                                 background-color: rgb(228, 228, 228);
                                 }
                              </style>
                           </section>
                           <a class="button primary expand"  >
                           <span>Kéo ngang để xem thêm sáo ngang</span>
                           </a>
                           <div class="row large-columns-2 medium-columns-2 small-columns- row-small">
                              <div class="product-small col has-hover post-3876 product type-product status-publish has-post-thumbnail product_cat-sao-ngang-viet product_tag-gia-sao-truc-sao-nua product_tag-mua-ban-sao-gia-re product_tag-mua-ban-sao-truc product_tag-mua-ban-sao-truc-o-ha-noi product_tag-sao-ngang product_tag-sao-truc product_tag-sao-viet first instock featured shipping-taxable purchasable product-type-simple">
                                 <div class="col-inner">
                                    <div class="badge-container absolute left top z-1"></div>
                                    <div class="product-small box ">
                                       <div class="box-image">
                                          <div class="image-fade_in_back">
                                             <a href="mua-ban/sao-truc-sao-nua-lts0-1-gia-re-chuan.html">
                                             <img width="305" height="300" src="wp-content/uploads/2017/05/sao-truc-nua-chuan-am-gia-re-305x300.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="" />				</a>
                                          </div>
                                          <div class="image-tools is-small top right show-on-hover"></div>
                                          <div class="image-tools is-small hide-for-small bottom left show-on-hover"></div>
                                          <div class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">
                                             <a class="quick-view" data-prod="3876" href="#quick-view">Quick View</a>
                                          </div>
                                       </div>
                                       <div class="box-text box-text-products text-center grid-style-2">
                                          <div class="title-wrapper">
                                             <p class="category uppercase is-smaller no-text-overflow product-cat op-7">
                                                SÁO NGANG VIỆT
                                             </p>
                                             <p class="name product-title"><a href="mua-ban/sao-truc-sao-nua-lts0-1-gia-re-chuan.html">Sáo trúc, sáo nứa LTS0-1 &#8211; Giá rẻ &#8211; Chuẩn âm &#8211; Đủ tone</a></p>
                                          </div>
                                          <div class="price-wrapper">
                                             <div class="star-rating"><span style="width:100%">Được xếp hạng <strong class="rating">5.00</strong> 5 sao</span></div>
                                             <span class="price"><span class="woocommerce-Price-amount amount">99,000<span class="woocommerce-Price-currencySymbol">&#8363;</span></span></span>
                                          </div>
                                          <div class="add-to-cart-button"><a href="index4bd6.html?add-to-cart=3876" rel="nofollow" data-product_id="3876" class="ajax_add_to_cart add_to_cart_button product_type_simple button primary is-outline mb-0 is-small">Đặt hàng</a></div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="product-small col has-hover post-3893 product type-product status-publish has-post-thumbnail product_cat-sao-ngang-viet product_tag-gia-sao-truc-sao-nua product_tag-mua-ban-sao-gia-re product_tag-mua-ban-sao-truc product_tag-mua-ban-sao-truc-o-ha-noi product_tag-sao-ngang product_tag-sao-truc product_tag-sao-viet  instock featured shipping-taxable purchasable product-type-simple">
                                 <div class="col-inner">
                                    <div class="badge-container absolute left top z-1"></div>
                                    <div class="product-small box ">
                                       <div class="box-image">
                                          <div class="image-fade_in_back">
                                             <a href="mua-ban/sao-truc-sao-nua-lts2-3-4-loai-tot-du-tone.html">
                                             <img width="305" height="300" src="wp-content/uploads/2017/05/sao-truc-nua-loai-tot-pho-thong-305x300.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="" />				</a>
                                          </div>
                                          <div class="image-tools is-small top right show-on-hover"></div>
                                          <div class="image-tools is-small hide-for-small bottom left show-on-hover"></div>
                                          <div class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">
                                             <a class="quick-view" data-prod="3893" href="#quick-view">Quick View</a>
                                          </div>
                                       </div>
                                       <div class="box-text box-text-products text-center grid-style-2">
                                          <div class="title-wrapper">
                                             <p class="category uppercase is-smaller no-text-overflow product-cat op-7">
                                                SÁO NGANG VIỆT
                                             </p>
                                             <p class="name product-title"><a href="mua-ban/sao-truc-sao-nua-lts2-3-4-loai-tot-du-tone.html">Sáo trúc, sáo nứa LTS2-3-4 &#8211; Loại tốt &#8211; Đủ tone</a></p>
                                          </div>
                                          <div class="price-wrapper">
                                             <div class="star-rating"><span style="width:100%">Được xếp hạng <strong class="rating">5.00</strong> 5 sao</span></div>
                                             <span class="price"><span class="woocommerce-Price-amount amount">199,000<span class="woocommerce-Price-currencySymbol">&#8363;</span></span></span>
                                          </div>
                                          <div class="add-to-cart-button"><a href="indexd64e.html?add-to-cart=3893" rel="nofollow" data-product_id="3893" class="ajax_add_to_cart add_to_cart_button product_type_simple button primary is-outline mb-0 is-small">Đặt hàng</a></div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="product-small col has-hover post-3896 product type-product status-publish has-post-thumbnail product_cat-sao-ngang-viet product_tag-gia-sao-truc-sao-nua product_tag-mua-ban-sao-gia-re product_tag-mua-ban-sao-truc product_tag-mua-ban-sao-truc-o-ha-noi product_tag-sao-ngang product_tag-sao-truc product_tag-sao-viet  instock featured shipping-taxable purchasable product-type-simple">
                                 <div class="col-inner">
                                    <div class="badge-container absolute left top z-1"></div>
                                    <div class="product-small box ">
                                       <div class="box-image">
                                          <div class="image-fade_in_back">
                                             <a href="mua-ban/sao-truc-sao-nua-lts5-6-7-loai-vip-du-tone.html">
                                             <img width="305" height="300" src="wp-content/uploads/2017/05/sao-truc-nua-loai-vip-305x300.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="" />				</a>
                                          </div>
                                          <div class="image-tools is-small top right show-on-hover"></div>
                                          <div class="image-tools is-small hide-for-small bottom left show-on-hover"></div>
                                          <div class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">
                                             <a class="quick-view" data-prod="3896" href="#quick-view">Quick View</a>
                                          </div>
                                       </div>
                                       <div class="box-text box-text-products text-center grid-style-2">
                                          <div class="title-wrapper">
                                             <p class="category uppercase is-smaller no-text-overflow product-cat op-7">
                                                SÁO NGANG VIỆT
                                             </p>
                                             <p class="name product-title"><a href="mua-ban/sao-truc-sao-nua-lts5-6-7-loai-vip-du-tone.html">Sáo trúc, sáo nứa LTS5-6-7 &#8211; Loại Vip &#8211; Đủ tone</a></p>
                                          </div>
                                          <div class="price-wrapper">
                                             <div class="star-rating"><span style="width:100%">Được xếp hạng <strong class="rating">5.00</strong> 5 sao</span></div>
                                             <span class="price"><span class="woocommerce-Price-amount amount">349,000<span class="woocommerce-Price-currencySymbol">&#8363;</span></span></span>
                                          </div>
                                          <div class="add-to-cart-button"><a href="index7565.html?add-to-cart=3896" rel="nofollow" data-product_id="3896" class="ajax_add_to_cart add_to_cart_button product_type_simple button primary is-outline mb-0 is-small">Đặt hàng</a></div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="product-small col has-hover post-3897 product type-product status-publish has-post-thumbnail product_cat-sao-ngang-viet product_tag-gia-sao-truc-sao-nua product_tag-mua-ban-sao-gia-re product_tag-mua-ban-sao-truc product_tag-mua-ban-sao-truc-o-ha-noi product_tag-sao-ngang product_tag-sao-truc product_tag-sao-viet last instock featured shipping-taxable purchasable product-type-simple">
                                 <div class="col-inner">
                                    <div class="badge-container absolute left top z-1"></div>
                                    <div class="product-small box ">
                                       <div class="box-image">
                                          <div class="image-fade_in_back">
                                             <a href="mua-ban/sao-truc-sao-nua-lts8-8-10-loai-cao-cap-du-tone.html">
                                             <img width="305" height="300" src="wp-content/uploads/2017/05/sao-truc-nua-cao-cap-chuyen-nghiep-305x300.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="" />				</a>
                                          </div>
                                          <div class="image-tools is-small top right show-on-hover"></div>
                                          <div class="image-tools is-small hide-for-small bottom left show-on-hover"></div>
                                          <div class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">
                                             <a class="quick-view" data-prod="3897" href="#quick-view">Quick View</a>
                                          </div>
                                       </div>
                                       <div class="box-text box-text-products text-center grid-style-2">
                                          <div class="title-wrapper">
                                             <p class="category uppercase is-smaller no-text-overflow product-cat op-7">
                                                SÁO NGANG VIỆT
                                             </p>
                                             <p class="name product-title"><a href="mua-ban/sao-truc-sao-nua-lts8-8-10-loai-cao-cap-du-tone.html">Sáo trúc, sáo nứa LTS8-8-10 &#8211; Loại Cao cấp &#8211; Đủ tone</a></p>
                                          </div>
                                          <div class="price-wrapper">
                                             <div class="star-rating"><span style="width:100%">Được xếp hạng <strong class="rating">5.00</strong> 5 sao</span></div>
                                             <span class="price"><span class="woocommerce-Price-amount amount">499,000<span class="woocommerce-Price-currencySymbol">&#8363;</span></span></span>
                                          </div>
                                          <div class="add-to-cart-button"><a href="indexc2d7.html?add-to-cart=3897" rel="nofollow" data-product_id="3897" class="ajax_add_to_cart add_to_cart_button product_type_simple button primary is-outline mb-0 is-small">Đặt hàng</a></div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="product-small col has-hover post-2198 product type-product status-publish has-post-thumbnail product_cat-sao-ngang-viet product_tag-mua-ban-sao-gia-re product_tag-mua-ban-sao-truc product_tag-mua-ban-sao-truc-o-ha-noi product_tag-sao-c5 product_tag-sao-cho-nguoi-moi-choi product_tag-sao-do product_tag-sao-ngang product_tag-sao-nua product_tag-sao-truc product_tag-sao-viet first instock shipping-taxable purchasable product-type-variable has-default-attributes has-children">
                                 <div class="col-inner">
                                    <div class="badge-container absolute left top z-1"></div>
                                    <div class="product-small box ">
                                       <div class="box-image">
                                          <div class="image-fade_in_back">
                                             <a href="mua-ban/sao-do.html">
                                             <img width="305" height="300" src="wp-content/uploads/2016/03/sao-Do-tone-C5-305x300.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="" />				</a>
                                          </div>
                                          <div class="image-tools is-small top right show-on-hover"></div>
                                          <div class="image-tools is-small hide-for-small bottom left show-on-hover"></div>
                                          <div class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">
                                             <a class="quick-view" data-prod="2198" href="#quick-view">Quick View</a>
                                          </div>
                                       </div>
                                       <div class="box-text box-text-products text-center grid-style-2">
                                          <div class="title-wrapper">
                                             <p class="category uppercase is-smaller no-text-overflow product-cat op-7">
                                                SÁO NGANG VIỆT
                                             </p>
                                             <p class="name product-title"><a href="mua-ban/sao-do.html">Sáo đô trúc nứa &#8211; sáo tone C5</a></p>
                                          </div>
                                          <div class="price-wrapper">
                                             <div class="star-rating"><span style="width:100%">Được xếp hạng <strong class="rating">5.00</strong> 5 sao</span></div>
                                             <span class="price"><span class="woocommerce-Price-amount amount">99,000<span class="woocommerce-Price-currencySymbol">&#8363;</span></span> &ndash; <span class="woocommerce-Price-amount amount">599,000<span class="woocommerce-Price-currencySymbol">&#8363;</span></span></span>
                                          </div>
                                          <div class="add-to-cart-button"><a href="mua-ban/sao-do.html" rel="nofollow" data-product_id="2198" class=" add_to_cart_button product_type_variable button primary is-outline mb-0 is-small">Đặt hàng</a></div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="product-small col has-hover post-2200 product type-product status-publish has-post-thumbnail product_cat-sao-ngang-viet product_tag-mua-ban-sao-gia-re product_tag-mua-ban-sao-truc product_tag-mua-ban-sao-truc-o-ha-noi product_tag-sao-la product_tag-sao-ngang product_tag-sao-nua product_tag-sao-tone-tram product_tag-sao-truc product_tag-sao-viet  instock shipping-taxable purchasable product-type-variable has-default-attributes has-children">
                                 <div class="col-inner">
                                    <div class="badge-container absolute left top z-1"></div>
                                    <div class="product-small box ">
                                       <div class="box-image">
                                          <div class="image-fade_in_back">
                                             <a href="mua-ban/sao-la-tram.html">
                                             <img width="305" height="300" src="wp-content/uploads/2016/03/sao-La-tram-A4-nua-Bac-Nam-305x300.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="Sáo La trầm A4 nứa" />				</a>
                                          </div>
                                          <div class="image-tools is-small top right show-on-hover"></div>
                                          <div class="image-tools is-small hide-for-small bottom left show-on-hover"></div>
                                          <div class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">
                                             <a class="quick-view" data-prod="2200" href="#quick-view">Quick View</a>
                                          </div>
                                       </div>
                                       <div class="box-text box-text-products text-center grid-style-2">
                                          <div class="title-wrapper">
                                             <p class="category uppercase is-smaller no-text-overflow product-cat op-7">
                                                SÁO NGANG VIỆT
                                             </p>
                                             <p class="name product-title"><a href="mua-ban/sao-la-tram.html">Sáo La trầm trúc nứa &#8211; sáo tone trầm A4</a></p>
                                          </div>
                                          <div class="price-wrapper">
                                             <div class="star-rating"><span style="width:100%">Được xếp hạng <strong class="rating">5.00</strong> 5 sao</span></div>
                                             <span class="price"><span class="woocommerce-Price-amount amount">99,000<span class="woocommerce-Price-currencySymbol">&#8363;</span></span> &ndash; <span class="woocommerce-Price-amount amount">599,000<span class="woocommerce-Price-currencySymbol">&#8363;</span></span></span>
                                          </div>
                                          <div class="add-to-cart-button"><a href="mua-ban/sao-la-tram.html" rel="nofollow" data-product_id="2200" class=" add_to_cart_button product_type_variable button primary is-outline mb-0 is-small">Đặt hàng</a></div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="product-small col has-hover post-2196 product type-product status-publish has-post-thumbnail product_cat-sao-ngang-viet product_tag-mua-ban-sao-gia-re product_tag-mua-ban-sao-truc product_tag-mua-ban-sao-truc-o-ha-noi product_tag-sao-cao-cap product_tag-sao-ngang product_tag-sao-nua product_tag-sao-nua-bac product_tag-sao-viet  instock shipping-taxable purchasable product-type-simple">
                                 <div class="col-inner">
                                    <div class="badge-container absolute left top z-1"></div>
                                    <div class="product-small box ">
                                       <div class="box-image">
                                          <div class="image-fade_in_back">
                                             <a href="mua-ban/sao-nua-bac-cao-cap.html">
                                             <img width="305" height="300" src="wp-content/uploads/2016/03/sao-nua-Bac-cao-cap-Vip-305x300.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="sáo nứa Bắc cao cấp" />				</a>
                                          </div>
                                          <div class="image-tools is-small top right show-on-hover"></div>
                                          <div class="image-tools is-small hide-for-small bottom left show-on-hover"></div>
                                          <div class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">
                                             <a class="quick-view" data-prod="2196" href="#quick-view">Quick View</a>
                                          </div>
                                       </div>
                                       <div class="box-text box-text-products text-center grid-style-2">
                                          <div class="title-wrapper">
                                             <p class="category uppercase is-smaller no-text-overflow product-cat op-7">
                                                SÁO NGANG VIỆT
                                             </p>
                                             <p class="name product-title"><a href="mua-ban/sao-nua-bac-cao-cap.html">Sáo nứa Bắc Cao cấp &#8211; Vip &#8211; shop uy tín</a></p>
                                          </div>
                                          <div class="price-wrapper">
                                             <div class="star-rating"><span style="width:100%">Được xếp hạng <strong class="rating">5.00</strong> 5 sao</span></div>
                                             <span class="price"><span class="woocommerce-Price-amount amount">399,000<span class="woocommerce-Price-currencySymbol">&#8363;</span></span></span>
                                          </div>
                                          <div class="add-to-cart-button"><a href="index128f.html?add-to-cart=2196" rel="nofollow" data-product_id="2196" class="ajax_add_to_cart add_to_cart_button product_type_simple button primary is-outline mb-0 is-small">Đặt hàng</a></div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="product-small col has-hover post-2199 product type-product status-publish has-post-thumbnail product_cat-sao-ngang-viet product_tag-mua-ban-sao-gia-re product_tag-mua-ban-sao-truc product_tag-mua-ban-sao-truc-o-ha-noi product_tag-sao-ngang product_tag-sao-nua product_tag-sao-sol product_tag-sao-son product_tag-sao-tone-sol product_tag-sao-tone-tram product_tag-sao-truc product_tag-sao-viet last instock shipping-taxable purchasable product-type-variable has-default-attributes has-children">
                                 <div class="col-inner">
                                    <div class="badge-container absolute left top z-1"></div>
                                    <div class="product-small box ">
                                       <div class="box-image">
                                          <div class="image-fade_in_back">
                                             <a href="mua-ban/sao-sol-tram.html">
                                             <img width="305" height="300" src="wp-content/uploads/2016/03/sao-Sol-tram-tone-G4-305x300.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="Sáo sol trầm - sáo G4" />				</a>
                                          </div>
                                          <div class="image-tools is-small top right show-on-hover"></div>
                                          <div class="image-tools is-small hide-for-small bottom left show-on-hover"></div>
                                          <div class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">
                                             <a class="quick-view" data-prod="2199" href="#quick-view">Quick View</a>
                                          </div>
                                       </div>
                                       <div class="box-text box-text-products text-center grid-style-2">
                                          <div class="title-wrapper">
                                             <p class="category uppercase is-smaller no-text-overflow product-cat op-7">
                                                SÁO NGANG VIỆT
                                             </p>
                                             <p class="name product-title"><a href="mua-ban/sao-sol-tram.html">Sáo Sol trầm trúc nứa &#8211; sáo tone trầm G4</a></p>
                                          </div>
                                          <div class="price-wrapper">
                                             <span class="price"><span class="woocommerce-Price-amount amount">149,000<span class="woocommerce-Price-currencySymbol">&#8363;</span></span> &ndash; <span class="woocommerce-Price-amount amount">649,000<span class="woocommerce-Price-currencySymbol">&#8363;</span></span></span>
                                          </div>
                                          <div class="add-to-cart-button"><a href="mua-ban/sao-sol-tram.html" rel="nofollow" data-product_id="2199" class=" add_to_cart_button product_type_variable button primary is-outline mb-0 is-small">Đặt hàng</a></div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <a rel="noopener noreferrer" href="shop-sao/tieu-sao-viet/sao-ngang-viet.html" target="_blank" class="button primary is-outline expand"  >
                           <span>Tất cả các sản phẩm sáo ngang</span>
                           </a>
                        </div>
                     </div>
                  </div>
                  -->
               <!--
                  <div class="row"  id="row-1619254568">
                     <div class="col medium-6 small-12 large-6"  >
                        <div class="col-inner text-center"  >
                           <section class="section" id="section_1188294743">
                              <div class="bg section-bg fill bg-fill bg-loaded bg-loaded" >
                                 <div class="is-border"
                                    style="border-color:rgb(235, 235, 235);border-width:1px 0px 0px 0px;"></div>
                              </div>
                              <div class="section-content relative">
                                 <div class="row row-large align-middle align-center"  id="row-2112445714">
                                    <div class="col medium-12 small-12 large-6"  >
                                       <div class="col-inner text-center"  >
                                          <h3>Về sáo Mèo &#8211; Bầu</h3>
                                          <p>Sáo Mèo hay sáo Bầu đều có đặc điểm chung về âm sắc rất đặc biệt do cấu tạo đều có lam đồng. Âm sáo bầu rất hay, mang âm hưởng núi rừng, nhưng lại có âm vực không rộng.</p>
                                          <a rel="noopener noreferrer" href="ve-sao-meo-sao-bau.html" target="_blank" class="button primary is-outline"  >
                                          <span>Xem thêm</span>
                                          </a>
                                       </div>
                                    </div>
                                    <div class="col medium-12 small-12 large-6"  >
                                       <div class="col-inner box-shadow-2 box-shadow-5-hover" style="background-color:rgb(255, 255, 255);padding:15px 15px 15px 15px;" >
                                          <div class="img has-hover x md-x lg-x y md-y lg-y" id="image_503433706">
                                             <div class="img-inner dark" >
                                                <img width="300" height="300" src="wp-content/uploads/2017/08/sao-bau-truc-tim-cham-rong-80-300x300.jpg" class="attachment-medium size-medium" alt="" srcset="https://tieusao.net/wp-content/uploads/2017/08/sao-bau-truc-tim-cham-rong-80-300x300.jpg 300w, https://tieusao.net/wp-content/uploads/2017/08/sao-bau-truc-tim-cham-rong-80-120x120.jpg 120w, https://tieusao.net/wp-content/uploads/2017/08/sao-bau-truc-tim-cham-rong-80.jpg 500w" sizes="(max-width: 300px) 100vw, 300px" />
                                             </div>
                                             <style scope="scope">#image_503433706 {
                                                width: 100%;
                                                }
                                             </style>
                                          </div>
                                       </div>
                                    </div>
                                    <style scope="scope"></style>
                                 </div>
                              </div>
                              <style scope="scope">#section_1188294743 {
                                 padding-top: 59px;
                                 padding-bottom: 59px;
                                 min-height: 300px;
                                 background-color: rgb(228, 228, 228);
                                 }
                              </style>
                           </section>
                           <a class="button primary expand"  >
                           <span>Kéo ngang để xem thêm sáo mèo - Bầu</span>
                           </a>
                           <div class="row large-columns-2 medium-columns-2 small-columns- row-small">
                              <div class="product-small col has-hover post-3905 product type-product status-publish has-post-thumbnail product_cat-sao-meo-tau product_tag-sao-meo product_tag-sao-meo-cham-rong product_tag-sao-meo-doc product_tag-sao-meo-gia-re product_tag-sao-meo-tau product_tag-sao-meo-truc-tim first instock sale shipping-taxable purchasable product-type-simple">
                                 <div class="col-inner">
                                    <div class="badge-container absolute left top z-1">
                                       <div class="callout badge badge-circle">
                                          <div class="badge-inner secondary on-sale"><span class="onsale">-20%</span></div>
                                       </div>
                                    </div>
                                    <div class="product-small box ">
                                       <div class="box-image">
                                          <div class="image-fade_in_back">
                                             <a href="mua-ban/sao-meo-tau-truc-tim-cham-rong-sao-meo-doc-gia-re.html">
                                             <img width="305" height="300" src="wp-content/uploads/2016/03/sao-meo-doc-truc-tim-cham-rong-305x300.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="" />				</a>
                                          </div>
                                          <div class="image-tools is-small top right show-on-hover"></div>
                                          <div class="image-tools is-small hide-for-small bottom left show-on-hover"></div>
                                          <div class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">
                                             <a class="quick-view" data-prod="3905" href="#quick-view">Quick View</a>
                                          </div>
                                       </div>
                                       <div class="box-text box-text-products text-center grid-style-2">
                                          <div class="title-wrapper">
                                             <p class="category uppercase is-smaller no-text-overflow product-cat op-7">
                                                SÁO MÈO TRUNG QUỐC
                                             </p>
                                             <p class="name product-title"><a href="mua-ban/sao-meo-tau-truc-tim-cham-rong-sao-meo-doc-gia-re.html">Sáo mèo Tàu trúc tím chạm rồng &#8211; Sáo mèo Dọc giá rẻ MD1</a></p>
                                          </div>
                                          <div class="price-wrapper">
                                             <span class="price"><del><span class="woocommerce-Price-amount amount">249,000<span class="woocommerce-Price-currencySymbol">&#8363;</span></span></del> <ins><span class="woocommerce-Price-amount amount">199,000<span class="woocommerce-Price-currencySymbol">&#8363;</span></span></ins></span>
                                          </div>
                                          <div class="add-to-cart-button"><a href="index0f28.html?add-to-cart=3905" rel="nofollow" data-product_id="3905" class="ajax_add_to_cart add_to_cart_button product_type_simple button primary is-outline mb-0 is-small">Đặt hàng</a></div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="product-small col has-hover post-3863 product type-product status-publish has-post-thumbnail product_cat-sao-meo-viet-nam product_tag-sao-meo-don product_tag-sao-meo-gia-re product_tag-sao-meo-nam product_tag-sao-meo-truc-nua product_tag-sao-meo-viet-nam  instock shipping-taxable purchasable product-type-simple">
                                 <div class="col-inner">
                                    <div class="badge-container absolute left top z-1"></div>
                                    <div class="product-small box ">
                                       <div class="box-image">
                                          <div class="image-fade_in_back">
                                             <a href="mua-ban/sao-meo-nam-sao-meo-viet-tot.html">
                                             <img width="305" height="300" src="wp-content/uploads/2016/03/sao-meo-nam-loai-tot-nua-va-truc-305x300.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="" />				</a>
                                          </div>
                                          <div class="image-tools is-small top right show-on-hover"></div>
                                          <div class="image-tools is-small hide-for-small bottom left show-on-hover"></div>
                                          <div class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">
                                             <a class="quick-view" data-prod="3863" href="#quick-view">Quick View</a>
                                          </div>
                                       </div>
                                       <div class="box-text box-text-products text-center grid-style-2">
                                          <div class="title-wrapper">
                                             <p class="category uppercase is-smaller no-text-overflow product-cat op-7">
                                                Sáo Mèo Việt Nam
                                             </p>
                                             <p class="name product-title"><a href="mua-ban/sao-meo-nam-sao-meo-viet-tot.html">Sáo mèo Nam &#8211; Sáo mèo Việt giọng Nam loại tốt</a></p>
                                          </div>
                                          <div class="price-wrapper">
                                             <span class="price"><span class="woocommerce-Price-amount amount">299,000<span class="woocommerce-Price-currencySymbol">&#8363;</span></span></span>
                                          </div>
                                          <div class="add-to-cart-button"><a href="index394f.html?add-to-cart=3863" rel="nofollow" data-product_id="3863" class="ajax_add_to_cart add_to_cart_button product_type_simple button primary is-outline mb-0 is-small">Đặt hàng</a></div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="product-small col has-hover post-3872 product type-product status-publish has-post-thumbnail product_cat-sao-meo-viet-nam product_tag-sao-meo product_tag-sao-meo-kep product_tag-sao-meo-truc-nua product_tag-sao-meo-viet product_tag-sao-viet  instock shipping-taxable purchasable product-type-simple">
                                 <div class="col-inner">
                                    <div class="badge-container absolute left top z-1"></div>
                                    <div class="product-small box ">
                                       <div class="box-image">
                                          <div class="image-fade_in_back">
                                             <a href="mua-ban/sao-meo-kep-viet-loai-tot">
                                             <img width="305" height="300" src="wp-content/uploads/2017/04/sao-meo-kep-nua-nam-loai-tot-305x300.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="Sáo mèo Kép nứa Nam loại tốt" />				</a>
                                          </div>
                                          <div class="image-tools is-small top right show-on-hover"></div>
                                          <div class="image-tools is-small hide-for-small bottom left show-on-hover"></div>
                                          <div class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">
                                             <a class="quick-view" data-prod="3872" href="#quick-view">Quick View</a>
                                          </div>
                                       </div>
                                       <div class="box-text box-text-products text-center grid-style-2">
                                          <div class="title-wrapper">
                                             <p class="category uppercase is-smaller no-text-overflow product-cat op-7">
                                                Sáo Mèo Việt Nam
                                             </p>
                                             <p class="name product-title"><a href="mua-ban/sao-meo-kep-viet-loai-tot">Sáo mèo Nam &#8211; Nữ, sáo mèo kép Việt loại tốt</a></p>
                                          </div>
                                          <div class="price-wrapper">
                                             <span class="price"><span class="woocommerce-Price-amount amount">499,000<span class="woocommerce-Price-currencySymbol">&#8363;</span></span></span>
                                          </div>
                                          <div class="add-to-cart-button"><a href="index17a6.html?add-to-cart=3872" rel="nofollow" data-product_id="3872" class="ajax_add_to_cart add_to_cart_button product_type_simple button primary is-outline mb-0 is-small">Đặt hàng</a></div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="product-small col has-hover post-3830 product type-product status-publish has-post-thumbnail product_cat-sao-bau-tau product_tag-mua-ban-sao-bau product_tag-mua-ban-sao-bau-gia-ngoc product_tag-mua-ban-sao-bau-gia-re product_tag-mua-ban-sao-bau-o-ha-noi product_tag-sao-bau product_tag-sao-bau-gia-go product_tag-sao-bau-gia-ngoc last instock sale shipping-taxable purchasable product-type-simple">
                                 <div class="col-inner">
                                    <div class="badge-container absolute left top z-1">
                                       <div class="callout badge badge-circle">
                                          <div class="badge-inner secondary on-sale"><span class="onsale">-14%</span></div>
                                       </div>
                                    </div>
                                    <div class="product-small box ">
                                       <div class="box-image">
                                          <div class="image-fade_in_back">
                                             <a href="mua-ban/sao-bau-ngoc-xanh-trang-va-sao-bau-gia-go.html">
                                             <img width="305" height="300" src="wp-content/uploads/2016/03/sao-bau-gia-ngoc-khop-inox-305x300.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="" />				</a>
                                          </div>
                                          <div class="image-tools is-small top right show-on-hover"></div>
                                          <div class="image-tools is-small hide-for-small bottom left show-on-hover"></div>
                                          <div class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">
                                             <a class="quick-view" data-prod="3830" href="#quick-view">Quick View</a>
                                          </div>
                                       </div>
                                       <div class="box-text box-text-products text-center grid-style-2">
                                          <div class="title-wrapper">
                                             <p class="category uppercase is-smaller no-text-overflow product-cat op-7">
                                                SÁO BẦU TRUNG QUỐC
                                             </p>
                                             <p class="name product-title"><a href="mua-ban/sao-bau-ngoc-xanh-trang-va-sao-bau-gia-go.html">Sáo bầu ngọc xanh trắng và sáo bầu giả gỗ Sb2</a></p>
                                          </div>
                                          <div class="price-wrapper">
                                             <span class="price"><del><span class="woocommerce-Price-amount amount">349,000<span class="woocommerce-Price-currencySymbol">&#8363;</span></span></del> <ins><span class="woocommerce-Price-amount amount">299,000<span class="woocommerce-Price-currencySymbol">&#8363;</span></span></ins></span>
                                          </div>
                                          <div class="add-to-cart-button"><a href="index3370.html?add-to-cart=3830" rel="nofollow" data-product_id="3830" class="ajax_add_to_cart add_to_cart_button product_type_simple button primary is-outline mb-0 is-small">Đặt hàng</a></div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="product-small col has-hover post-1487 product type-product status-publish has-post-thumbnail product_cat-sao-meo-tau product_tag-sao-meo product_tag-sao-meo-kep product_tag-sao-meo-tau first instock shipping-taxable purchasable product-type-simple">
                                 <div class="col-inner">
                                    <div class="badge-container absolute left top z-1"></div>
                                    <div class="product-small box ">
                                       <div class="box-image">
                                          <div class="image-fade_in_back">
                                             <a href="mua-ban/sao-meo-kep-go.html">
                                             <img width="305" height="300" src="wp-content/uploads/2016/03/sao-meo-kep-go-305x300.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="" />				</a>
                                          </div>
                                          <div class="image-tools is-small top right show-on-hover"></div>
                                          <div class="image-tools is-small hide-for-small bottom left show-on-hover"></div>
                                          <div class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">
                                             <a class="quick-view" data-prod="1487" href="#quick-view">Quick View</a>
                                          </div>
                                       </div>
                                       <div class="box-text box-text-products text-center grid-style-2">
                                          <div class="title-wrapper">
                                             <p class="category uppercase is-smaller no-text-overflow product-cat op-7">
                                                SÁO MÈO TRUNG QUỐC
                                             </p>
                                             <p class="name product-title"><a href="mua-ban/sao-meo-kep-go.html">Sáo mèo kép gỗ Mun và gỗ Hồng Mộc MKT2</a></p>
                                          </div>
                                          <div class="price-wrapper">
                                             <span class="price"><span class="woocommerce-Price-amount amount">1,299,000<span class="woocommerce-Price-currencySymbol">&#8363;</span></span></span>
                                          </div>
                                          <div class="add-to-cart-button"><a href="index62fa.html?add-to-cart=1487" rel="nofollow" data-product_id="1487" class="ajax_add_to_cart add_to_cart_button product_type_simple button primary is-outline mb-0 is-small">Đặt hàng</a></div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="product-small col has-hover post-3874 product type-product status-publish has-post-thumbnail product_cat-sao-meo-viet-nam product_tag-sao-meo product_tag-sao-meo-kep product_tag-sao-meo-truc-nua product_tag-sao-meo-viet product_tag-sao-viet  instock shipping-taxable purchasable product-type-simple">
                                 <div class="col-inner">
                                    <div class="badge-container absolute left top z-1"></div>
                                    <div class="product-small box ">
                                       <div class="box-image">
                                          <div class="image-fade_in_back">
                                             <a href="mua-ban/sao-meo-nam-nu-sao-meo-kep-viet-vip.html">
                                             <img width="305" height="300" src="wp-content/uploads/2017/04/sao-meo-kep-viet-truc-nua-loai-tot-305x300.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="Sáo mèo Kép Việt trúc nứa loại tốt" />				</a>
                                          </div>
                                          <div class="image-tools is-small top right show-on-hover"></div>
                                          <div class="image-tools is-small hide-for-small bottom left show-on-hover"></div>
                                          <div class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">
                                             <a class="quick-view" data-prod="3874" href="#quick-view">Quick View</a>
                                          </div>
                                       </div>
                                       <div class="box-text box-text-products text-center grid-style-2">
                                          <div class="title-wrapper">
                                             <p class="category uppercase is-smaller no-text-overflow product-cat op-7">
                                                Sáo Mèo Việt Nam
                                             </p>
                                             <p class="name product-title"><a href="mua-ban/sao-meo-nam-nu-sao-meo-kep-viet-vip.html">Sáo mèo Nam &#8211; Nữ, sáo mèo kép Việt loại Vip</a></p>
                                          </div>
                                          <div class="price-wrapper">
                                             <span class="price"><span class="woocommerce-Price-amount amount">699,000<span class="woocommerce-Price-currencySymbol">&#8363;</span></span></span>
                                          </div>
                                          <div class="add-to-cart-button"><a href="index2123.html?add-to-cart=3874" rel="nofollow" data-product_id="3874" class="ajax_add_to_cart add_to_cart_button product_type_simple button primary is-outline mb-0 is-small">Đặt hàng</a></div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="product-small col has-hover post-3860 product type-product status-publish has-post-thumbnail product_cat-sao-meo-viet-nam product_tag-sao-meo-don product_tag-sao-meo-gia-re product_tag-sao-meo-nu product_tag-sao-meo-truc-nua product_tag-sao-meo-viet-nam  instock shipping-taxable purchasable product-type-simple">
                                 <div class="col-inner">
                                    <div class="badge-container absolute left top z-1"></div>
                                    <div class="product-small box ">
                                       <div class="box-image">
                                          <div class="image-fade_in_back">
                                             <a href="mua-ban/sao-meo-nu-sao-meo-viet-giong-nu-tot.html">
                                             <img width="305" height="300" src="wp-content/uploads/2016/03/sao-meo-nu-loai-tot-truc-nua-305x300.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="" />				</a>
                                          </div>
                                          <div class="image-tools is-small top right show-on-hover"></div>
                                          <div class="image-tools is-small hide-for-small bottom left show-on-hover"></div>
                                          <div class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">
                                             <a class="quick-view" data-prod="3860" href="#quick-view">Quick View</a>
                                          </div>
                                       </div>
                                       <div class="box-text box-text-products text-center grid-style-2">
                                          <div class="title-wrapper">
                                             <p class="category uppercase is-smaller no-text-overflow product-cat op-7">
                                                Sáo Mèo Việt Nam
                                             </p>
                                             <p class="name product-title"><a href="mua-ban/sao-meo-nu-sao-meo-viet-giong-nu-tot.html">Sáo mèo Nữ &#8211; Sáo mèo Việt giọng Nữ (bé, cao) loại tốt</a></p>
                                          </div>
                                          <div class="price-wrapper">
                                             <span class="price"><span class="woocommerce-Price-amount amount">249,000<span class="woocommerce-Price-currencySymbol">&#8363;</span></span></span>
                                          </div>
                                          <div class="add-to-cart-button"><a href="index58e9.html?add-to-cart=3860" rel="nofollow" data-product_id="3860" class="ajax_add_to_cart add_to_cart_button product_type_simple button primary is-outline mb-0 is-small">Đặt hàng</a></div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="product-small col has-hover post-3845 product type-product status-publish has-post-thumbnail product_cat-sao-meo-tau product_tag-sao-meo product_tag-sao-meo-gia-re product_tag-sao-meo-tau product_tag-sao-meo-truc-tim last instock sale shipping-taxable purchasable product-type-simple">
                                 <div class="col-inner">
                                    <div class="badge-container absolute left top z-1">
                                       <div class="callout badge badge-circle">
                                          <div class="badge-inner secondary on-sale"><span class="onsale">-28%</span></div>
                                       </div>
                                    </div>
                                    <div class="product-small box ">
                                       <div class="box-image">
                                          <div class="image-fade_in_back">
                                             <a href="mua-ban/sao-meo-tau-truc-tim-khop-dong-sao-meo-don-gia-re.html">
                                             <img width="305" height="300" src="wp-content/uploads/2017/04/sao-meo-tau-khop-noi-gia-re-305x300.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="Sáo mèo Tàu khớp nối giá rẻ" />				</a>
                                          </div>
                                          <div class="image-tools is-small top right show-on-hover"></div>
                                          <div class="image-tools is-small hide-for-small bottom left show-on-hover"></div>
                                          <div class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">
                                             <a class="quick-view" data-prod="3845" href="#quick-view">Quick View</a>
                                          </div>
                                       </div>
                                       <div class="box-text box-text-products text-center grid-style-2">
                                          <div class="title-wrapper">
                                             <p class="category uppercase is-smaller no-text-overflow product-cat op-7">
                                                SÁO MÈO TRUNG QUỐC
                                             </p>
                                             <p class="name product-title"><a href="mua-ban/sao-meo-tau-truc-tim-khop-dong-sao-meo-don-gia-re.html">Sáo mèo Tàu trúc tím Khớp đồng- Sáo mèo đơn giá rẻ MT1</a></p>
                                          </div>
                                          <div class="price-wrapper">
                                             <span class="price"><del><span class="woocommerce-Price-amount amount">249,000<span class="woocommerce-Price-currencySymbol">&#8363;</span></span></del> <ins><span class="woocommerce-Price-amount amount">179,000<span class="woocommerce-Price-currencySymbol">&#8363;</span></span></ins></span>
                                          </div>
                                          <div class="add-to-cart-button"><a href="index5baf.html?add-to-cart=3845" rel="nofollow" data-product_id="3845" class="ajax_add_to_cart add_to_cart_button product_type_simple button primary is-outline mb-0 is-small">Đặt hàng</a></div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <a rel="noopener noreferrer" href="shop-sao/sao-meo-sao-bau.html" target="_blank" class="button primary is-outline expand"  >
                           <span>Tất cả các sản phẩm sáo Mèo - sáo bầu</span>
                           </a>
                        </div>
                     </div>
                     <div class="col medium-6 small-12 large-6"  >
                        <div class="col-inner text-center"  >
                           <section class="section" id="section_919697422">
                              <div class="bg section-bg fill bg-fill bg-loaded bg-loaded" >
                                 <div class="is-border"
                                    style="border-color:rgb(235, 235, 235);border-width:1px 0px 0px 0px;"></div>
                              </div>
                              <div class="section-content relative">
                                 <div class="row row-large align-middle align-center"  id="row-1941138145">
                                    <div class="col medium-12 small-12 large-6"  >
                                       <div class="col-inner text-center"  >
                                          <h3>Về động tiêu trúc</h3>
                                          <p>Động tiêu hay tiêu trúc là loại nhạc cụ thổi dọc nhưng có miệng thổi (khác với ngậm thổi như sáo dọc), có âm trầm, ấm, nhẹ nhàng, dể truyền cảm xúc nên khá được ưa chuộng.</p>
                                          <a rel="noopener noreferrer" href="ve-dong-tieu-truc.html" target="_blank" class="button primary is-outline"  >
                                          <span>Xem thêm</span>
                                          </a>
                                       </div>
                                    </div>
                                    <div class="col medium-12 small-12 large-6"  >
                                       <div class="col-inner box-shadow-2 box-shadow-5-hover" style="background-color:rgb(255, 255, 255);padding:15px 15px 15px 15px;" >
                                          <div class="img has-hover x md-x lg-x y md-y lg-y" id="image_293185999">
                                             <div class="img-inner dark" >
                                                <img width="300" height="300" src="wp-content/uploads/2017/08/dong-tieu-truc-80-300x300.jpg" class="attachment-medium size-medium" alt="" srcset="https://tieusao.net/wp-content/uploads/2017/08/dong-tieu-truc-80-300x300.jpg 300w, https://tieusao.net/wp-content/uploads/2017/08/dong-tieu-truc-80-120x120.jpg 120w, https://tieusao.net/wp-content/uploads/2017/08/dong-tieu-truc-80.jpg 800w" sizes="(max-width: 300px) 100vw, 300px" />
                                             </div>
                                             <style scope="scope">#image_293185999 {
                                                width: 100%;
                                                }
                                             </style>
                                          </div>
                                       </div>
                                    </div>
                                    <style scope="scope"></style>
                                 </div>
                              </div>
                              <style scope="scope">#section_919697422 {
                                 padding-top: 59px;
                                 padding-bottom: 59px;
                                 min-height: 300px;
                                 background-color: rgb(228, 228, 228);
                                 }
                              </style>
                           </section>
                           <a class="button primary expand"  >
                           <span>Kéo ngang để xem thêm động tiêu</span>
                           </a>
                           <div class="row large-columns-2 medium-columns-2 small-columns- row-small">
                              <div class="product-small col has-hover post-3826 product type-product status-publish has-post-thumbnail product_cat-dong-tieu-viet product_cat-tieu-truc-tim product_tag-dong-tieu product_tag-tieu-bat-khong-dong-tieu-truc product_tag-tieu-bat-khong-gia-re product_tag-tieu-truc product_tag-tieu-truc-gia-re product_tag-tieu-truc-tim first instock shipping-taxable purchasable product-type-simple">
                                 <div class="col-inner">
                                    <div class="badge-container absolute left top z-1"></div>
                                    <div class="product-small box ">
                                       <div class="box-image">
                                          <div class="image-fade_in_back">
                                             <a href="mua-ban/tieu-truc-tim-gia-ngoc-tieu-bat-khong-trung-hoa.html">
                                             <img width="305" height="300" src="wp-content/uploads/2016/03/tieu-truc-tim-gia-ngoc-trung-quoc-305x300.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="" />				</a>
                                          </div>
                                          <div class="image-tools is-small top right show-on-hover"></div>
                                          <div class="image-tools is-small hide-for-small bottom left show-on-hover"></div>
                                          <div class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">
                                             <a class="quick-view" data-prod="3826" href="#quick-view">Quick View</a>
                                          </div>
                                       </div>
                                       <div class="box-text box-text-products text-center grid-style-2">
                                          <div class="title-wrapper">
                                             <p class="category uppercase is-smaller no-text-overflow product-cat op-7">
                                                ĐỘNG TIÊU VIỆT
                                             </p>
                                             <p class="name product-title"><a href="mua-ban/tieu-truc-tim-gia-ngoc-tieu-bat-khong-trung-hoa.html">Tiêu trúc tím giả ngọc &#8211; Tiêu bát khổng Trung Hoa</a></p>
                                          </div>
                                          <div class="price-wrapper">
                                             <span class="price"><span class="woocommerce-Price-amount amount">299,000<span class="woocommerce-Price-currencySymbol">&#8363;</span></span></span>
                                          </div>
                                          <div class="add-to-cart-button"><a href="index8729.html?add-to-cart=3826" rel="nofollow" data-product_id="3826" class="ajax_add_to_cart add_to_cart_button product_type_simple button primary is-outline mb-0 is-small">Đặt hàng</a></div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="product-small col has-hover post-3809 product type-product status-publish has-post-thumbnail product_cat-dong-tieu-viet product_cat-tieu-truc-viet product_tag-dong-tieu product_tag-dong-tieu-viet-nam product_tag-tieu-bat-khong-dong-tieu-truc product_tag-tieu-bat-khong-gia-re product_tag-tieu-truc product_tag-tieu-truc-bac product_tag-tieu-truc-co-goc-re product_tag-tieu-truc-da-lat  instock shipping-taxable purchasable product-type-simple">
                                 <div class="col-inner">
                                    <div class="badge-container absolute left top z-1"></div>
                                    <div class="product-small box ">
                                       <div class="box-image">
                                          <div class="image-fade_in_back">
                                             <a href="mua-ban/tieu-bat-khong-truc-goc-viet-va-nhieu-tieu.html">
                                             <img width="305" height="300" src="wp-content/uploads/2017/04/tieu-truc-goc-viet-nam-305x300.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="Tiêu trúc Việt có gốc rễ" />				</a>
                                          </div>
                                          <div class="image-tools is-small top right show-on-hover"></div>
                                          <div class="image-tools is-small hide-for-small bottom left show-on-hover"></div>
                                          <div class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">
                                             <a class="quick-view" data-prod="3809" href="#quick-view">Quick View</a>
                                          </div>
                                       </div>
                                       <div class="box-text box-text-products text-center grid-style-2">
                                          <div class="title-wrapper">
                                             <p class="category uppercase is-smaller no-text-overflow product-cat op-7">
                                                ĐỘNG TIÊU VIỆT
                                             </p>
                                             <p class="name product-title"><a href="mua-ban/tieu-bat-khong-truc-goc-viet-va-nhieu-tieu.html">Tiêu bát khổng trúc gốc Việt và nhiều hệ tiêu</a></p>
                                          </div>
                                          <div class="price-wrapper">
                                             <span class="price"><span class="woocommerce-Price-amount amount">399,000<span class="woocommerce-Price-currencySymbol">&#8363;</span></span></span>
                                          </div>
                                          <div class="add-to-cart-button"><a href="index6632.html?add-to-cart=3809" rel="nofollow" data-product_id="3809" class="ajax_add_to_cart add_to_cart_button product_type_simple button primary is-outline mb-0 is-small">Đặt hàng</a></div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="product-small col has-hover post-3823 product type-product status-publish has-post-thumbnail product_cat-dong-tieu-tau product_cat-tieu-truc-tim product_tag-2-khuc product_tag-dong-tieu product_tag-dong-tieu-tau product_tag-tieu-bat-khong product_tag-tieu-bat-khong-gia-re product_tag-tieu-truc product_tag-tieu-truc-khop-noi product_tag-tieu-truc-tim product_tag-tieu-truc-tim-trung-quoc-tuyen-chon-va-chinh-am  instock shipping-taxable purchasable product-type-simple">
                                 <div class="col-inner">
                                    <div class="badge-container absolute left top z-1"></div>
                                    <div class="product-small box ">
                                       <div class="box-image">
                                          <div class="image-fade_in_back">
                                             <a href="mua-ban/tieu-2-khuc-truc-tim-tieu-bat-khong-khop-inox-tuyen-chon.html">
                                             <img width="305" height="300" src="wp-content/uploads/2017/05/tieu-truc-tim-bat-khong-2-khuc-khop-inox-chon-loc-305x300.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="" />				</a>
                                          </div>
                                          <div class="image-tools is-small top right show-on-hover"></div>
                                          <div class="image-tools is-small hide-for-small bottom left show-on-hover"></div>
                                          <div class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">
                                             <a class="quick-view" data-prod="3823" href="#quick-view">Quick View</a>
                                          </div>
                                       </div>
                                       <div class="box-text box-text-products text-center grid-style-2">
                                          <div class="title-wrapper">
                                             <p class="category uppercase is-smaller no-text-overflow product-cat op-7">
                                                Động tiêu Tàu
                                             </p>
                                             <p class="name product-title"><a href="mua-ban/tieu-2-khuc-truc-tim-tieu-bat-khong-khop-inox-tuyen-chon.html">Tiêu 2 khúc trúc tím &#8211; tiêu bát khổng khớp inox tuyển chọn</a></p>
                                          </div>
                                          <div class="price-wrapper">
                                             <span class="price"><span class="woocommerce-Price-amount amount">349,000<span class="woocommerce-Price-currencySymbol">&#8363;</span></span></span>
                                          </div>
                                          <div class="add-to-cart-button"><a href="indexead5.html?add-to-cart=3823" rel="nofollow" data-product_id="3823" class="ajax_add_to_cart add_to_cart_button product_type_simple button primary is-outline mb-0 is-small">Đặt hàng</a></div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="product-small col has-hover post-3827 product type-product status-publish has-post-thumbnail product_cat-dong-tieu-tau product_cat-tieu-truc-tim product_tag-dong-tieu product_tag-dong-tieu-viet-nam product_tag-tieu-3-khuc product_tag-tieu-bat-khong-dong-tieu-truc product_tag-tieu-bat-khong-gia-re product_tag-tieu-truc product_tag-tieu-truc-gia-re product_tag-tieu-truc-khop-noi product_tag-tieu-truc-tim last instock shipping-taxable purchasable product-type-simple">
                                 <div class="col-inner">
                                    <div class="badge-container absolute left top z-1"></div>
                                    <div class="product-small box ">
                                       <div class="box-image">
                                          <div class="image-fade_in_back">
                                             <a href="mua-ban/tieu-truc-tim-3-khuc-tieu-bat-khong-son-mau-den-trang.html">
                                             <img width="305" height="300" src="wp-content/uploads/2016/03/tieu-gia-ngoc-truc-tim-Trung-Quoc-305x300.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="" />				</a>
                                          </div>
                                          <div class="image-tools is-small top right show-on-hover"></div>
                                          <div class="image-tools is-small hide-for-small bottom left show-on-hover"></div>
                                          <div class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">
                                             <a class="quick-view" data-prod="3827" href="#quick-view">Quick View</a>
                                          </div>
                                       </div>
                                       <div class="box-text box-text-products text-center grid-style-2">
                                          <div class="title-wrapper">
                                             <p class="category uppercase is-smaller no-text-overflow product-cat op-7">
                                                Động tiêu Tàu
                                             </p>
                                             <p class="name product-title"><a href="mua-ban/tieu-truc-tim-3-khuc-tieu-bat-khong-son-mau-den-trang.html">Tiêu trúc tím 3 khúc &#8211; Tiêu bát khổng sơn màu đen trắng</a></p>
                                          </div>
                                          <div class="price-wrapper">
                                             <span class="price"><span class="woocommerce-Price-amount amount">599,000<span class="woocommerce-Price-currencySymbol">&#8363;</span></span></span>
                                          </div>
                                          <div class="add-to-cart-button"><a href="index8795.html?add-to-cart=3827" rel="nofollow" data-product_id="3827" class="ajax_add_to_cart add_to_cart_button product_type_simple button primary is-outline mb-0 is-small">Đặt hàng</a></div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="product-small col has-hover post-3807 product type-product status-publish has-post-thumbnail product_cat-dong-tieu-viet product_cat-tieu-truc-viet product_tag-dong-tieu product_tag-dong-tieu-viet-nam product_tag-tieu-bat-khong-dong-tieu-truc product_tag-tieu-bat-khong-gia-re product_tag-tieu-truc product_tag-tieu-truc-bac product_tag-tieu-truc-da-lat first instock shipping-taxable purchasable product-type-simple">
                                 <div class="col-inner">
                                    <div class="badge-container absolute left top z-1"></div>
                                    <div class="product-small box ">
                                       <div class="box-image">
                                          <div class="image-fade_in_back">
                                             <a href="mua-ban/dong-tieu-bat-khong-va-cac-khac-vip-tieu-truc-viet.html">
                                             <img width="305" height="300" src="wp-content/uploads/2017/04/tieu-truc-viet-bat-khong-loai-Vip-305x300.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="Tiêu Bát khổng trúc Việt loại Vip" srcset="//tieusao.net/wp-content/uploads/2017/04/tieu-truc-viet-bat-khong-loai-Vip-305x300.jpg 305w, //tieusao.net/wp-content/uploads/2017/04/tieu-truc-viet-bat-khong-loai-Vip-300x294.jpg 300w, //tieusao.net/wp-content/uploads/2017/04/tieu-truc-viet-bat-khong-loai-Vip.jpg 800w" sizes="(max-width: 305px) 100vw, 305px" />				</a>
                                          </div>
                                          <div class="image-tools is-small top right show-on-hover"></div>
                                          <div class="image-tools is-small hide-for-small bottom left show-on-hover"></div>
                                          <div class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">
                                             <a class="quick-view" data-prod="3807" href="#quick-view">Quick View</a>
                                          </div>
                                       </div>
                                       <div class="box-text box-text-products text-center grid-style-2">
                                          <div class="title-wrapper">
                                             <p class="category uppercase is-smaller no-text-overflow product-cat op-7">
                                                ĐỘNG TIÊU VIỆT
                                             </p>
                                             <p class="name product-title"><a href="mua-ban/dong-tieu-bat-khong-va-cac-khac-vip-tieu-truc-viet.html">Động tiêu bát khổng và các hệ khác Vip &#8211; tiêu trúc Việt</a></p>
                                          </div>
                                          <div class="price-wrapper">
                                             <span class="price"><span class="woocommerce-Price-amount amount">499,000<span class="woocommerce-Price-currencySymbol">&#8363;</span></span></span>
                                          </div>
                                          <div class="add-to-cart-button"><a href="index70d6.html?add-to-cart=3807" rel="nofollow" data-product_id="3807" class="ajax_add_to_cart add_to_cart_button product_type_simple button primary is-outline mb-0 is-small">Đặt hàng</a></div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="product-small col has-hover post-3810 product type-product status-publish has-post-thumbnail product_cat-dong-tieu-viet product_cat-tieu-truc-viet product_tag-dong-tieu product_tag-dong-tieu-viet-nam product_tag-tieu-bat-khong-dong-tieu-truc product_tag-tieu-bat-khong-gia-re product_tag-tieu-truc product_tag-tieu-truc-bac product_tag-tieu-truc-da-lat  instock shipping-taxable purchasable product-type-simple">
                                 <div class="col-inner">
                                    <div class="badge-container absolute left top z-1"></div>
                                    <div class="product-small box ">
                                       <div class="box-image">
                                          <div class="image-fade_in_back">
                                             <a href="mua-ban/dong-tieu-truc-gia-re-bat-khong-va-viet.html">
                                             <img width="305" height="300" src="wp-content/uploads/2016/03/Dong-tieu-bat-khong-viet-chuan-am-gia-re-305x300.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="" />				</a>
                                          </div>
                                          <div class="image-tools is-small top right show-on-hover"></div>
                                          <div class="image-tools is-small hide-for-small bottom left show-on-hover"></div>
                                          <div class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">
                                             <a class="quick-view" data-prod="3810" href="#quick-view">Quick View</a>
                                          </div>
                                       </div>
                                       <div class="box-text box-text-products text-center grid-style-2">
                                          <div class="title-wrapper">
                                             <p class="category uppercase is-smaller no-text-overflow product-cat op-7">
                                                ĐỘNG TIÊU VIỆT
                                             </p>
                                             <p class="name product-title"><a href="mua-ban/dong-tieu-truc-gia-re-bat-khong-va-viet.html">Động tiêu trúc giá rẻ hệ bát khổng và hệ Việt</a></p>
                                          </div>
                                          <div class="price-wrapper">
                                             <span class="price"><span class="woocommerce-Price-amount amount">149,000<span class="woocommerce-Price-currencySymbol">&#8363;</span></span></span>
                                          </div>
                                          <div class="add-to-cart-button"><a href="index9218.html?add-to-cart=3810" rel="nofollow" data-product_id="3810" class="ajax_add_to_cart add_to_cart_button product_type_simple button primary is-outline mb-0 is-small">Đặt hàng</a></div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="product-small col has-hover post-3811 product type-product status-publish has-post-thumbnail product_cat-dong-tieu-viet product_cat-tieu-truc-tim product_tag-dong-tieu product_tag-dong-tieu-viet-nam product_tag-tieu-bat-khong-dong-tieu-truc product_tag-tieu-bat-khong-gia-re product_tag-tieu-truc product_tag-tieu-truc-co-goc-re product_tag-tieu-truc-gia-re product_tag-tieu-truc-tim  instock shipping-taxable purchasable product-type-simple">
                                 <div class="col-inner">
                                    <div class="badge-container absolute left top z-1"></div>
                                    <div class="product-small box ">
                                       <div class="box-image">
                                          <div class="image-fade_in_back">
                                             <a href="mua-ban/tieu-goc-truc-tim-viet-dong-tieu-bat-khong-va-he-khac.html">
                                             <img width="305" height="300" src="wp-content/uploads/2017/05/goc-tieu-truc-tim-c%c3%b3-re-305x300.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="" />				</a>
                                          </div>
                                          <div class="image-tools is-small top right show-on-hover"></div>
                                          <div class="image-tools is-small hide-for-small bottom left show-on-hover"></div>
                                          <div class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">
                                             <a class="quick-view" data-prod="3811" href="#quick-view">Quick View</a>
                                          </div>
                                       </div>
                                       <div class="box-text box-text-products text-center grid-style-2">
                                          <div class="title-wrapper">
                                             <p class="category uppercase is-smaller no-text-overflow product-cat op-7">
                                                ĐỘNG TIÊU VIỆT
                                             </p>
                                             <p class="name product-title"><a href="mua-ban/tieu-goc-truc-tim-viet-dong-tieu-bat-khong-va-he-khac.html">Tiêu gốc trúc tím Việt &#8211; Động tiêu bát khổng và hệ khác</a></p>
                                          </div>
                                          <div class="price-wrapper">
                                             <span class="price"><span class="woocommerce-Price-amount amount">499,000<span class="woocommerce-Price-currencySymbol">&#8363;</span></span></span>
                                          </div>
                                          <div class="add-to-cart-button"><a href="indexff0b.html?add-to-cart=3811" rel="nofollow" data-product_id="3811" class="ajax_add_to_cart add_to_cart_button product_type_simple button primary is-outline mb-0 is-small">Đặt hàng</a></div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="product-small col has-hover post-3825 product type-product status-publish has-post-thumbnail product_cat-dong-tieu-tau product_cat-tieu-truc-tim product_tag-dong-tieu-tau product_tag-tieu-3-khuc product_tag-tieu-bat-khong product_tag-tieu-bat-khong-dong-tieu-truc product_tag-tieu-bat-khong-gia-re product_tag-tieu-truc-khop-noi product_tag-tieu-truc-tim-trung-quoc-tuyen-chon-va-chinh-am last instock shipping-taxable purchasable product-type-simple">
                                 <div class="col-inner">
                                    <div class="badge-container absolute left top z-1"></div>
                                    <div class="product-small box ">
                                       <div class="box-image">
                                          <div class="image-fade_in_back">
                                             <a href="mua-ban/tieu-truc-tim-bat-khong-tuyen-chon-3-khuc-khop-inox.html">
                                             <img width="305" height="300" src="wp-content/uploads/2016/03/tieu-bat-khong-truc-tim-3-khuc-tuyen-chon-va-chinh-am-305x300.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="" />				</a>
                                          </div>
                                          <div class="image-tools is-small top right show-on-hover"></div>
                                          <div class="image-tools is-small hide-for-small bottom left show-on-hover"></div>
                                          <div class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">
                                             <a class="quick-view" data-prod="3825" href="#quick-view">Quick View</a>
                                          </div>
                                       </div>
                                       <div class="box-text box-text-products text-center grid-style-2">
                                          <div class="title-wrapper">
                                             <p class="category uppercase is-smaller no-text-overflow product-cat op-7">
                                                Động tiêu Tàu
                                             </p>
                                             <p class="name product-title"><a href="mua-ban/tieu-truc-tim-bat-khong-tuyen-chon-3-khuc-khop-inox.html">Tiêu trúc tím bát khổng tuyển chọn 3 khúc khớp inox</a></p>
                                          </div>
                                          <div class="price-wrapper">
                                             <span class="price"><span class="woocommerce-Price-amount amount">549,000<span class="woocommerce-Price-currencySymbol">&#8363;</span></span></span>
                                          </div>
                                          <div class="add-to-cart-button"><a href="index3f08.html?add-to-cart=3825" rel="nofollow" data-product_id="3825" class="ajax_add_to_cart add_to_cart_button product_type_simple button primary is-outline mb-0 is-small">Đặt hàng</a></div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <a rel="noopener noreferrer" href="shop-sao/dong-tieu-truc.html" target="_blank" class="button primary is-outline expand"  >
                           <span>Tất cả các sản phẩm động tiêu trúc</span>
                           </a>
                        </div>
                     </div>
                  </div>
                  -->
               <a class="button alert is-larger box-shadow-4 box-shadow-5-hover expand"  style="border-radius:10px;">
               <span>Tại sao chọn mua sáo trúc, sáo nứa, sáo Dizi tại shop sáo trúc Lãng tử</span>
               </a>
               <div class="row row-box-shadow-1 row-box-shadow-4-hover"  id="row-1841862775">
                  <div class="col medium-4 small-12 large-4"  >
                     <div class="col-inner box-shadow-2 box-shadow-5-hover" style="padding:15px 15px 15px 15px;" >
                        <div class="icon-box featured-box icon-box-center text-center"  >
                           <div class="icon-box-img has-icon-bg" style="width: 160px">
                              <div class="icon">
                                 <div class="icon-inner" style="border-width:4px;">
                                    <img width="150" height="150" src="wp-content/uploads/2017/08/BAO-HANH-TRON-DOI-SAO-TIEU.png" class="attachment-medium size-medium" alt="" srcset="https://tieusao.net/wp-content/uploads/2017/08/BAO-HANH-TRON-DOI-SAO-TIEU.png 150w, https://tieusao.net/wp-content/uploads/2017/08/BAO-HANH-TRON-DOI-SAO-TIEU-120x120.png 120w" sizes="(max-width: 150px) 100vw, 150px" />
                                 </div>
                              </div>
                           </div>
                           <div class="icon-box-text last-reset">
                              <h3 style="text-align: center;">Bảo hành tròn đời</h3>
                              <p style="text-align: center;">Bảo hành 2 năm &#8211; trọn đời</p>
                              <p>Đổi trả miễn phí trong 15 ngày. Sửa chữa miến phí trong thời gian bảo hành. Tạo niềm tin cho khách hàng mua sáo.</p>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col medium-4 small-12 large-4"  >
                     <div class="col-inner box-shadow-2 box-shadow-5-hover" style="padding:15px 15px 15px 15px;" >
                        <div class="icon-box featured-box icon-box-center text-center"  >
                           <div class="icon-box-img has-icon-bg" style="width: 160px">
                              <div class="icon">
                                 <div class="icon-inner" style="border-width:4px;">
                                    <img width="263" height="263" src="wp-content/uploads/2017/08/nhan-hang-thu-tien-2.png" class="attachment-medium size-medium" alt="" srcset="https://tieusao.net/wp-content/uploads/2017/08/nhan-hang-thu-tien-2.png 263w, https://tieusao.net/wp-content/uploads/2017/08/nhan-hang-thu-tien-2-120x120.png 120w" sizes="(max-width: 263px) 100vw, 263px" />
                                 </div>
                              </div>
                           </div>
                           <div class="icon-box-text last-reset">
                              <h3 style="text-align: center;">Giao hàng toàn quốc</h3>
                              <p style="text-align: center;">Giao hàng tận nơi &#8211; Nhận hàng thu tiền.</p>
                              <p>Shop giao hàng tận nơi, nhận hàng mới phải trả tiền và có thể kiểm tra hàng trước khi nhận hàng.</p>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col medium-4 small-12 large-4"  >
                     <div class="col-inner box-shadow-2 box-shadow-5-hover" style="padding:15px 15px 15px 15px;" >
                        <div class="icon-box featured-box icon-box-center text-center"  style="margin:0px 0px px 0px;">
                           <div class="icon-box-img has-icon-bg" style="width: 160px">
                              <div class="icon">
                                 <div class="icon-inner" style="border-width:4px;">
                                    <img width="150" height="150" src="wp-content/uploads/2017/08/SHOP-SAO-UY-TIN-NHAT.png" class="attachment-medium size-medium" alt="" srcset="https://tieusao.net/wp-content/uploads/2017/08/SHOP-SAO-UY-TIN-NHAT.png 150w, https://tieusao.net/wp-content/uploads/2017/08/SHOP-SAO-UY-TIN-NHAT-120x120.png 120w" sizes="(max-width: 150px) 100vw, 150px" />
                                 </div>
                              </div>
                           </div>
                           <div class="icon-box-text last-reset">
                              <h3 style="text-align: center;">Uy tín &#8211; Chất lượng</h3>
                              <p style="text-align: center;">100% chuẩn âm &#8211; Hòa Beat &#8211; Hòa Tấu.</p>
                              <p>Shop sáo trúc đã có lâu năm kinh nghiệm trong việc chế tạo sáo và bán sáo trúc, sáo nứa, sáo Dizi, tiêu vào sáo Mèo</p>
                           </div>
                        </div>
                     </div>
                  </div>
                  <style scope="scope">#row-1841862775 > .col > .col-inner {
                     padding: 20px 20px 20px 20px;
                     }
                  </style>
               </div>
               <a class="button primary expand"  >
               <span>Phản hồi của khách hàng về shop sáo trúc Lãng Tử</span>
               </a>
               <div class="row align-equal row-box-shadow-3 row-box-shadow-5-hover"  id="row-2019076462">
                  <div class="col medium-4 small-12 large-4"  >
                     <div class="col-inner"  >
                        <div class="icon-box testimonial-box icon-box-center text-center">
                           <div class="icon-box-img testimonial-image circle" style="width: 121px"></div>
                           <div class="icon-box-text p-last-0">
                              <div class="star-rating"><span style="width:100%"><strong class="rating"></strong></span></div>
                              <div class="testimonial-text line-height-small italic test_text first-reset last-reset is-italic">
                                 <div class="e-box h-p2 -stacked -radius-none">
                                    <p class="t-body h-my1">Mình dùng sáo được 3 năm rồi, sáo dùng tốt , âm chuẩn, càng thổi nhiều càng vỡ tiếng âm lại hay hơn. mình thấy hình thức sáo đẹp, lỗ bấm tròn&#8230;.<br />
                                       hồi mình mua sáo trúc, nứa của shop mình còn mới tập, sáo vẫn gắn bó theo mình từ đó đến giờ&#8230; mình sẽ ủng hộ shop dài dài&#8230; chúc shop sáo trúc Lãng Tử làm luôn đcó nhiều ngươi ủng hộ cùng niềm đam mê sáo trúc nhé!
                                    </p>
                                 </div>
                              </div>
                              <div class="testimonial-meta pt-half">
                                 <strong class="testimonial-name test_name">Tiến Thành</strong>
                                 <span class="testimonial-name-divider"> / </span>             <span class="testimonial-company test_company">Facebook</span>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col medium-4 small-12 large-4"  >
                     <div class="col-inner"  >
                        <div class="icon-box testimonial-box icon-box-center text-center">
                           <div class="icon-box-img testimonial-image circle" style="width: 121px"></div>
                           <div class="icon-box-text p-last-0">
                              <div class="star-rating"><span style="width:100%"><strong class="rating"></strong></span></div>
                              <div class="testimonial-text line-height-small italic test_text first-reset last-reset is-italic">
                                 <p>UNBELIEVABLE&#8230; Khi mua sáo trúc được shop tư vấn rất nhanh ,nhiệt tình và giao hàng rất có uy tín. Còn Sáo thổi thì khỏi chê ,cực hay luôn, mà lại còn rất bền( vì đã làm rơi khá nhiều lần. Đã gắn bó với cây sáo được hai năm và mãi luôn là big fan của anh . Hy vọng shop sáo trúc Lãng Tử càng được nhiều bạn lựa chọn là nơi khởi đầu đam mê thổi sáo của mình.</p>
                              </div>
                              <div class="testimonial-meta pt-half">
                                 <strong class="testimonial-name test_name">Ốc sên</strong>
                                 <span class="testimonial-name-divider"> / </span>             <span class="testimonial-company test_company">Facebook</span>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col medium-4 small-12 large-4"  >
                     <div class="col-inner"  >
                        <div class="icon-box testimonial-box icon-box-center text-center">
                           <div class="icon-box-img testimonial-image circle" style="width: 121px"></div>
                           <div class="icon-box-text p-last-0">
                              <div class="star-rating"><span style="width:100%"><strong class="rating"></strong></span></div>
                              <div class="testimonial-text line-height-small italic test_text first-reset last-reset is-italic">
                                 <p>Còn bạn thì sao, hãy đánh giá shop sáo trúc Lãng tử tại page của shop để các khách hàng khác có thể tin tưởng shop hơn. Shop tự tin là shop bán sáo trúc, sáo nứa, sáo Dizi, tiêu, sáo Mèo &#8211; Bầu uy tín, nơi mua sáo trúc giá rẻ, tin cậy nhất.</p>
                                 <p>Xem thêm đánh giá tại <a href="https://www.facebook.com/pg/shoplangtusao/reviews/" target="_blank" rel="noopener"><strong>đây</strong></a></p>
                                 <p>Và nhớ để lại đánh giá nhé!</p>
                              </div>
                              <div class="testimonial-meta pt-half">
                                 <strong class="testimonial-name test_name">Shop sáo trúc</strong>
                                 <span class="testimonial-company test_company"></span>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <style scope="scope">#row-2019076462 > .col > .col-inner {
                     padding: 30px 30px 30px 30px;
                     }
                  </style>
               </div>
            </div>
         </div>
      </div>
   </div>
</main>