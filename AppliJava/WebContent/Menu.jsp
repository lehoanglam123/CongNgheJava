<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <div class="header-top">
                    <div class="container">
                        <div class="row">
                            <!-- Begin Header Top Left Area -->
                            <div class="col-lg-3 col-md-4">
                                <div class="header-top-left">
                                    <ul class="phone-wrap">
                                        <li><span>Số điện thoại:</span><a href="#">(+123) 123 321 345</a></li>
                                    </ul>
                                </div>
                            </div>

							<!-- Tài khoản -->
                            <div class="col-lg-9 col-md-8">
                                <div class="header-top-right">
                                    <ul class="ht-menu">
                                        <!-- Begin Setting Area -->
                                        <li>
                                            <div class="ht-setting-trigger"><span>Setting</span></div>
                                            <div class="setting ht-setting">
                                                <ul class="ht-setting-list">
                                                <c:if test="${sessionScope.user==null}">
                                                	<li><a href="Login-Register.jsp">Đăng nhập</a></li>
                                                </c:if>
                                                
                                                <c:if test="${sessionScope.user!=null&&sessionScope.user.isAdmin!=1}">
                                                	<li><a href="login-register.html">${sessionScope.user.userName}</a></li>
                                                    <li><a href="login-register.html">Đăng xuất</a></li>
                                                </c:if>  
                                                    
                                                <c:if test="${sessionScope.user.isAdmin==1}">
                                                	<li><a href="login-register.html">${sessionScope.user.userName}</a></li>
                                                	<li><a href="HomeAdmin.jsp">Quyền Admin</a></li>
                                                    <li><a href="login-register.html">Đăng xuất</a></li>
                                                </c:if>
                                                </ul>
                                            </div>
                                        </li>
                                        <!-- Setting Area End Here -->
                                        <!-- Begin Currency Area -->
                                       
                                    </ul>
                                </div>
                            </div>
                            <!-- Header Top Right Area End Here -->
                        </div>
                    </div>
                </div>
             <!-- Phần đầu menu --> 
             
             <!-- Phần giỏ hàng -->  
           <header class="li-header-4">      
                <!-- Header Top Area End Here -->
                <!-- Begin Header Middle Area -->
                <div class="header-middle pl-sm-0 pr-sm-0 pl-xs-0 pr-xs-0">
                    <div class="container">
                        <div class="row">
                            <!-- Begin Header Logo Area -->
                            <div class="col-lg-3">
                                <div class="logo pb-sm-30 pb-xs-30">
                                    <a href="http://localhost:10351/AppliJava/">
                                        <img src="images/menu/logo/1.jpg" alt="" >
                                    </a>
                                </div>
                            </div>
                            <!-- Header Logo Area End Here -->
                            <!-- Begin Header Middle Right Area -->
                            <div class="col-lg-9 pl-0 ml-sm-15 ml-xs-15">
                                <!-- Begin Header Middle Searchbox Area -->
                                <form action="search" class="hm-searchbox" method="post">
                                    
                                    <input type="text" name="search" placeholder="Nhập tên sản phẩm">
                                    <button class="li-btn" type="submit"><i class="fa fa-search"></i></button>
                                </form>
                                
                                <!-- giỏ hàng nhỏ -->
                                <div class="header-middle-right">
                                    <ul class="hm-menu">
                                        
                                        <li class="hm-wishlist">
                                            <a href="wishlist.html">
                                                <span class="cart-item-count wishlist-item-count">0</span>
                                                <i class="fa fa-heart-o"></i>
                                            </a>
                                        </li>
                                        
                                        
                                        <li class="hm-minicart">
                                            <div class="hm-minicart-trigger">
                                                <span class="item-icon"></span>
                                                <span class="item-text">£80.00
                                                    <span class="cart-item-count">2</span>
                                                </span>
                                            </div>
                                            <span></span>
                                            <div class="minicart">
                                                <ul class="minicart-product-list">
                                                
                                                	<!-- 1 sản phẩm -->
                                                    <li>
                                                        <a href="single-product.html" class="minicart-product-image">
                                                            <img src="images/product/small-size/1.jpg" alt="cart products">
                                                        </a>
                                                        <div class="minicart-product-details">
                                                            <h6><a href="single-product.html">TV-SamSung 4k full HD</a></h6>
                                                            <span>£40 x 1</span>
                                                        </div>
                                                        
                                                        <!-- nút xóa -->
                                                        <button class="close">
                                                            <i class="fa fa-close"></i>
                                                        </button>
                                                    </li>
                                                    
                                                    <!-- 1 sản phẩm -->
                                                    <li>
                                                        <a href="single-product.html" class="minicart-product-image">
                                                            <img src="images/product/small-size/2.jpg" alt="cart products">
                                                        </a>
                                                        <div class="minicart-product-details">
                                                            <h6><a href="single-product.html">camera-chống trộm</a></h6>
                                                            <span>£40 x 1</span>
                                                        </div>
                                                        <button class="close">
                                                            <i class="fa fa-close"></i>
                                                        </button>
                                                    </li>
                                                </ul>
                                                
                                                <!-- nút thanh toán và  -->
                                                <p class="minicart-total">SUBTOTAL: <span>£80.00</span></p>
                                                <div class="minicart-button">
                                                    <a href="checkout.html" class="li-button li-button-dark li-button-fullwidth li-button-sm">
                                                        <span>Vào giỏ hàng</span>
                                                    </a>
                                                    <a href="checkout.html" class="li-button li-button-fullwidth li-button-sm">
                                                        <span>Thanh toán</span>
                                                    </a>
                                                </div>
                                            </div>
                                        </li>
                                       
                                    </ul>
                                </div>
                               
                            </div>
                           
                        </div>
                    </div>
                </div>
                <!-- Header Middle Area End Here -->
                <!-- Begin Header Bottom Area -->
                <div class="header-bottom header-sticky stick d-none d-lg-block d-xl-block">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                               <!-- Begin Header Bottom Menu Area -->
                               <div class="hb-menu">
                                   <nav>
                                       <ul>
                                           <li class="dropdown-holder"><a href="#">Home</a>
                                               
                                           </li>
                                           <li class="megamenu-holder"><a href="#">DELL</a>
                                           </li>
                                           <li class="dropdown-holder"><a href="#">HP</a>
                                           </li>
                                           <li class="megamenu-static-holder"><a href="#">Lenovo</a>
                                           </li>
										   <li class="megamenu-static-holder"><a href="#">Apple</a>
                                           </li>
										   <li class="megamenu-static-holder"><a href="#">Asus</a>
                                           </li>
										   
                                          
                                       </ul>
                                   </nav>
                               </div>
                               <!-- Header Bottom Menu Area End Here -->
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Header Bottom Area End Here -->
                <!-- Begin Mobile Menu Area -->
                <div class="mobile-menu-area mobile-menu-area-4 d-lg-none d-xl-none col-12">
                    <div class="container"> 
                        <div class="row">
                            <div class="mobile-menu">
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Mobile Menu Area End Here -->
            </header>
            <!-- Header Area End Here -->