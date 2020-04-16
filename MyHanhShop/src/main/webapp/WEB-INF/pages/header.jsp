<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%	
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="Fashi Template">
<meta name="keywords" content="Fashi, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>My Hanh Shop</title>
<script
	src="${pageContext.request.contextPath}/statics/js/jquery-3.3.1.min.js"></script>
<!-- Google Font -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.0/themes/base/jquery-ui.css" />
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<link
	href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css">
<!-- Css Styles -->
<link rel="stylesheet" type="text/css" href="https://editor.datatables.net/extensions/Editor/css/editor.dataTables.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/statics/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/statics/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/statics/css/themify-icons.css"
	type="text/css">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/@icon/themify-icons@1.0.1-alpha.3/themify-icons.css" />

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/statics/css/elegant-icons.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/statics/css/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/statics/css/nice-select.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/statics/css/jquery-ui.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/statics/css/slicknav.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/statics/css/style.css"
	type="text/css">
</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header Section Begin -->
	<header class="header-section">
		<div class="header-top">
			<div class="container">
				<div class="ht-left">
					<div class="mail-service">
						<i class="fa fa-envelope"></i> myhanhshop@gmail.com
					</div>
					<div class="phone-service">
						<i class="fa fa-phone"></i> 0979773222
					</div>
				</div>
				<div class="ht-right">
					<a href="/MyHanhShop/login/" class="login-panel"><i
						class="fa fa-user"></i>Đăng Nhập</a>
					<div class="lan-selector">
						<select class="language_drop" name="countries" id="countries"
							style="width: 300px;">
							<option value='yt'
								data-image="${pageContext.request.contextPath}/statics/img/vn.jpg"
								data-imagecss="flag yt" data-title="English">Vi</option>
							<option value='yu'
								data-image="${pageContext.request.contextPath}/statics/img/flag-1.jpg"
								data-imagecss="flag yu" data-title="Bangladesh">Us</option>
						</select>
					</div>
					<div class="top-social">
						<a href="#"><i class="ti-facebook"></i></a> <a href="#"><i
							class="ti-twitter-alt"></i></a> <a href="#"><i
							class="ti-linkedin"></i></a> <a href="#"><i class="ti-pinterest"></i></a>
					</div>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="inner-header">
				<div class="row">
					<div class="col-lg-2 col-md-2">
						<div class="logo">
							<a href="/MyHanhShop/"> <img
								src="${pageContext.request.contextPath}/statics/img/logo.png"
								alt="">
							</a>
						</div>
					</div>
					<div class="col-lg-7 col-md-7">
						<div class="advanced-search">
							<button type="button" class="category-btn">Tìm kiếm Loại
							</button>
							<div class="input-group">
								<input type="text" placeholder="Bạn cần tìm gì?">
								<button type="button">
									<i class="ti-search"></i>
								</button>
							</div>
						</div>
					</div>
					<div class="col-lg-3 text-right col-md-3">
						<ul class="nav-right">
							<!--<li class="heart-icon"><a href="#"> <i
									class="icon_heart_alt"></i>

							</a></li>
							<li class="cart-icon"><a href="#"> <i
									class="icon_bag_alt"></i> <span id="count">0</span>
							</a>
								<div class="cart-hover">
									<div class="select-items">
										<table id="tableCart">

										</table>

									</div>
									<div class="select-total">
										<span>total:</span>
										<h5>
											<span id="total">0.00</span><span>đ</span>
										</h5>
									</div>
									<div class="select-button">
										<button id="checkout"
											class="primary-btn checkout-btn">CHECK OUT</button>
									</div>
								</div></li> 
							<span> Total: </span>
							<li id="cart-price">0.00</li>
							<b>đ</b>
							-->
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="nav-item">
			<div class="container">
				<div class="nav-depart">
					
				</div>
				<nav class="nav-menu mobile-menu">
					<ul>
						<li><a href="/MyHanhShop/">Trang chủ</a></li>
						<li><a href="/MyHanhShop/shop/">Cửa Hàng</a></li>
			
						<li><a href="/MyHanhShop/blog/">Blog</a></li>
						<li><a href="/MyHanhShop/contact/">Liên Hệ</a></li>
						<li><a href="/MyHanhShop/checkout/">Thanh Toán</a></li>
						<li><a href="/MyHanhShop/followProduct/">Theo Dõi đơn
								hàng</a></li>

					</ul>
				</nav>
				<div id="mobile-menu-wrap"></div>
			</div>
		</div>
	</header>
	<!-- Header End -->