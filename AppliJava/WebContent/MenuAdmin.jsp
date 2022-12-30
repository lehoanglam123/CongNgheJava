<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div
	class="sidebar sidebar-hide-to-small sidebar-shrink sidebar-gestures">
	<div class="nano">
		<div class="nano-content">
			<div class="logo">
				<a href=""> <!-- <img src="images/logo.png" alt="" /> --> <span>Quản lý</span>
				</a>
			</div>
			<ul>
			<li class="label">Main</li>
				<li><a href="http://localhost:10351/AppliJava/CategoryController">
				<i class="fa fa-bars" aria-hidden="true"></i>Quản lý thể loại</a></li>
			</ul>
			<ul>
				<li><a href="http://localhost:10351/AppliJava/ProductController">
				<i class="fa fa-desktop" aria-hidden="true"></i>Quản lý sản phẩm</a></li>
			</ul>
			<ul>
				<li><a href="http://localhost:10351/AppliJava/ProductController">
				<i class="fa fa-desktop" aria-hidden="true"></i>Hóa đơn người dùng</a></li>
			</ul>
		</div>
	</div>
</div>
<!-- /# sidebar -->


<div class="header">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12">
				<div class="float-left">
					<div class="hamburger sidebar-toggle">
						<span class="line"></span> <span class="line"></span> <span
							class="line"></span>
					</div>
				</div>
				<div class="float-right">
					<div class="dropdown dib">
						<div class="header-icon" data-toggle="dropdown">
							<i class="ti-bell"></i>
							<div class="drop-down dropdown-menu dropdown-menu-right">
								<div class="dropdown-content-heading">
									<span class="text-left">Recent Notifications</span>
								</div>
								<div class="dropdown-content-body"></div>
							</div>
						</div>
					</div>
					<div class="dropdown dib">
						<div class="header-icon" data-toggle="dropdown">
							<i class="ti-email"></i>
							<div class="drop-down dropdown-menu dropdown-menu-right">
								<div class="dropdown-content-heading">
									<span class="text-left">2 New Messages</span> <a
										href="email.html"> <i class="ti-pencil-alt pull-right"></i>
									</a>
								</div>

							</div>
						</div>
					</div>

					<!-- hiển thị người dùng -->
					<div class="dropdown dib">
						<div class="header-icon" data-toggle="dropdown">
							<span class="user-avatar">Admin <i
								class="ti-angle-down f-s-10"></i>
							</span>
							<div
								class="drop-down dropdown-profile dropdown-menu dropdown-menu-right">
								<div class="dropdown-content-heading">
									<span class="text-left">Upgrade Now</span>
									<p class="trial-day">30 Days Trail</p>
								</div>
								<div class="dropdown-content-body">
									<ul>
										<li><a href="#"> <i class="ti-user"></i> <span>Tài khoản</span>
										</a></li>
										<li><a href="#"> <i class="ti-settings"></i> <span>Cài đặt</span>
										</a></li>
										<li><a href="#"> <i class="ti-power-off"></i> <span>Đăng xuất</span>
										</a></li>
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