<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Home</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon" href="images/favicon.png">
<link rel="stylesheet" href="css/material-design-iconic-font.min.css">
<!-- Font Awesome -->
<link rel="stylesheet" href="css/font-awesome.min.css">
<!-- Font Awesome Stars-->
<link rel="stylesheet" href="css/fontawesome-stars.css">

<link rel="stylesheet" href="css/meanmenu.css">
<!-- owl carousel CSS -->
<link rel="stylesheet" href="css/owl.carousel.min.css">
<!-- Slick Carousel CSS -->
<link rel="stylesheet" href="css/slick.css">
<!-- Animate CSS -->
<link rel="stylesheet" href="css/animate.css">
<!-- Jquery-ui CSS -->
<link rel="stylesheet" href="css/jquery-ui.min.css">
<!-- Venobox CSS -->
<link rel="stylesheet" href="css/venobox.css">
<!-- Nice Select CSS -->
<link rel="stylesheet" href="css/nice-select.css">
<!-- Magnific Popup CSS -->
<link rel="stylesheet" href="css/magnific-popup.css">
<!-- Bootstrap V4.1.3 Fremwork CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- Helper CSS -->
<link rel="stylesheet" href="css/helper.css">
<!-- Main Style CSS -->
<link rel="stylesheet" href="style.css">
<!-- Responsive CSS -->
<link rel="stylesheet" href="css/responsive.css">
<!-- Modernizr js -->
<script src="js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<body>

	<!-- phần menu -->
	<jsp:include page="Menu.jsp"></jsp:include>

	<!-- phần sản phẩm -->
	<jsp:include page="Body.jsp"></jsp:include>

	<!-- Phần hiển thị sản phẩm  -->
	<div class="content-wraper pt-60 pb-60">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">

					<!-- shop-top-bar start -->
					<c:forEach items="${listproduct}" var="i">
					<div class="shop-products-wrapper">
						<div class="tab-content">
							<div id="grid-view" class="tab-pane fade active show"
								role="tabpanel">
								<div class="product-area shop-product-area">
									<div class="row">

										<div class="col-lg-4 col-md-4 col-sm-6 mt-40">
											<!--sản phẩm -->
											<div class="single-product-wrap">
												<div class="product-image">
													<a href="detail?id=${i.id}"><img
														src="${i.image }"
														alt="Li's Product Image">
													</a> <span class="sticker">New</span>
												</div>
												<div class="product_desc">
													<div class="product_desc_info">
														<div class="product-review">
															<h5 class="manufacturer">
																<a href="product-details.html"></a>
															</h5>
															<div class="rating-box">
																<ul class="rating">
																	<li><i class="fa fa-star-o"></i></li>
																	<li><i class="fa fa-star-o"></i></li>
																	<li><i class="fa fa-star-o"></i></li>
																	<li class="no-star"><i class="fa fa-star-o"></i></li>
																	<li class="no-star"><i class="fa fa-star-o"></i></li>
																</ul>
															</div>
														</div>
														<h4>
															<a class="product_name"  href="detail?id=${i.id}">${i.nameProduct}</a>
														</h4>
														<div class="price-box">
															<span class="new-price">${i.price }</span>
														</div>
													</div>
													<div class="add-actions">
														<ul class="add-actions-link">
															<li class="add-cart active"><a
																href="addtocart?id=${i.id}">Add to cart</a></li>
															<li><a href="detail?id=${i.id}" title="quick view"
																><i
																	class="fa fa-eye"></i></a></li>
															<li><a class="links-details" href="wishlist.html"><i
																	class="fa fa-heart-o"></i></a></li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>

	<!-- phần footer -->
	<jsp:include page="Footer.jsp"></jsp:include>

	<div>
		<script src="js/vendor/jquery-1.12.4.min.js"></script>
		<!-- Popper js -->
		<script src="js/vendor/popper.min.js"></script>
		<!-- Bootstrap V4.1.3 Fremwork js -->
		<script src="js/bootstrap.min.js"></script>
		<!-- Ajax Mail js -->
		<script src="js/ajax-mail.js"></script>
		<!-- Meanmenu js -->
		<script src="js/jquery.meanmenu.min.js"></script>
		<!-- Wow.min js -->
		<script src="js/wow.min.js"></script>
		<!-- Slick Carousel js -->
		<script src="js/slick.min.js"></script>
		<!-- Owl Carousel-2 js -->
		<script src="js/owl.carousel.min.js"></script>
		<!-- Magnific popup js -->
		<script src="js/jquery.magnific-popup.min.js"></script>
		<!-- Isotope js -->
		<script src="js/isotope.pkgd.min.js"></script>
		<!-- Imagesloaded js -->
		<script src="js/imagesloaded.pkgd.min.js"></script>
		<!-- Mixitup js -->
		<script src="js/jquery.mixitup.min.js"></script>
		<!-- Countdown -->
		<script src="js/jquery.countdown.min.js"></script>
		<!-- Counterup -->
		<script src="js/jquery.counterup.min.js"></script>
		<!-- Waypoints -->
		<script src="js/waypoints.min.js"></script>
		<!-- Barrating -->
		<script src="js/jquery.barrating.min.js"></script>
		<!-- Jquery-ui -->
		<script src="js/jquery-ui.min.js"></script>
		<!-- Venobox -->
		<script src="js/venobox.min.js"></script>
		<!-- Nice Select js -->
		<script src="js/jquery.nice-select.min.js"></script>
		<!-- ScrollUp js -->
		<script src="js/scrollUp.min.js"></script>
		<!-- Main/Activator js -->
		<script src="js/main.js"></script>
	</div>

</body>

</html>
