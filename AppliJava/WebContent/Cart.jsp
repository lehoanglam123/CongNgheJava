<%@page import="java.util.List"%>
<%@page import="Model.Item"%>
<%@page import="Model.Cart"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page errorPage="/error.jsp"%>

<!DOCTYPE html>
<html>
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

	<jsp:include page="Menu.jsp"></jsp:include>

	<!-- phần sản phẩm -->
	<div class="Shopping-cart-area pt-60 pb-60">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<form action="#">
						<div class="table-content table-responsive">
							<table class="table">
								<thead>
									<tr>
										<th class="li-product-remove">Sửa</th>
										<th class="li-product-thumbnail">Xóa</th>
										<th class="li-product-thumbnail">Hình Ảnh</th>
										<th class="cart-product-name">Sản Phẩm</th>
										<th class="li-product-price">Giá</th>
										<th class="li-product-quantity">Số Lượng</th>
										<th class="li-product-subtotal">Tổng</th>
									</tr>
								</thead>
								<tbody>
									<%
									Cart cart = (Cart) session.getAttribute("cart");
									%>
									<c:forEach var="item" items="${cart.getItems()}">
										<%-- <input type="hidden" value="${cart.getItems().getProduct().getId()}" id="id" name="id"/> --%>
										<tr>
											<td class="li-product-remove"><a href="updatecart?id=${item.getProduct().getId() }&quantity=<%= request.getParameter("quantity") %>"><i
													class="fa fa-pencil" aria-hidden="true"></i></a></td>
											<td class="li-product-remove"><a href="deletecart?id=${item.getProduct().getId() }"><i class="fa fa-times" aria-hidden="true"></i></a></td>
											<td class="li-product-thumbnail"><a
												href="${item.getProduct().getImage() }"><img
													style="width: 150px; height: 100px"
													src="${item.getProduct().getImage() }"
													alt="Li's Product Image"></a></td>
											<td class="li-product-name"><a href="#">${item.getProduct().getNameProduct() }</a></td>
											<td class="li-product-price"><span class="amount">${item.getProduct().getPrice()}</span></td>
											<td class="quantity"><label>Số Lượng</label>
												<div class="cart-plus-minus">
												
													<input class="cart-plus-minus-box" id="quantity"
														value="${item.getQuantity()}" type="text">
													<div class="dec qtybutton">
														<i class="fa fa-angle-down"></i>
													</div>
													<div class="inc qtybutton">
														<i class="fa fa-angle-up"></i>
													</div>
												</div></td>
											<td class="product-subtotal"><span class="amount">${item.getProduct().getPrice() * item.getQuantity()}</span>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<div class="row">
							<div class="col-12">
								<div class="coupon-all">

									<div class="coupon2">
										<input class="button" name="update_cart" value="Cập nhật"
											type="submit">
									</div>
								</div>
							</div>
						</div>
						<%
						int total = 0;
						
						%>
						<c:forEach var="item" items="${cart.getItems()}">
							<div class="row">
								<div class="col-md-5 ml-auto">
									<div class="cart-page-total">
										<h2>Tổng</h2>
										<ul> 
											<li>Tổng phụ<span></span></li>
											<li>Tổng tiền<span>$130.00</span></li>
										</ul>
										<a href="#">Proceed to checkout</a>
									</div>
								</div>
							</div>
						</c:forEach>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!--Shopping Cart Area End-->


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