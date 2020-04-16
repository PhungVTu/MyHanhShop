<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<jsp:include flush="true" page="header.jsp"></jsp:include>

<!-- Breadcrumb Section Begin -->
<div class="breacrumb-section">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="breadcrumb-text">
					<a href="#"><i class="fa fa-home"></i> Home</a> <span>Shop</span>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Breadcrumb Section Begin -->

<!-- Product Shop Section Begin -->
<section class="product-shop spad" ng-app="myApp">
	<div class="container">
		<div class="row">
			<div
				class="col-lg-3 col-md-6 col-sm-8 order-2 order-lg-1 produts-sidebar-filter">
				<div class="filter-widget">
					<h4 class="fw-title">Categories</h4>
					<ul class="filter-catagories">
						<li><a href="#">Men</a></li>
						<li><a href="#">Women</a></li>
						<li><a href="#">Kids</a></li>
					</ul>
				</div>
				<div class="filter-widget">
					<h4 class="fw-title">Thương Hiệu</h4>
					<div class="fw-brand-check">
						<div class="bc-item">
							<label for="bc-calvin"> Calvin Klein <input
								type="checkbox" id="bc-calvin"> <span class="checkmark"></span>
							</label>
						</div>
						<div class="bc-item">
							<label for="bc-gucci"> Gucci <input type="checkbox"
								id="bc-gucci"> <span class="checkmark"></span>
							</label>
						</div>
						<div class="bc-item">
							<label for="bc-nike"> Nike <input type="checkbox" name=""
								id="bc-nike"> <span class="checkmark"></span>
							</label>
						</div>
						<div class="bc-item">
							<label for="bc-tommy"> Tommy<input type="checkbox"
								id="bc-tommy"> <span class="checkmark"></span>
							</label>
						</div>

					</div>
				</div>
				<div class="filter-widget">
					<h4 class="fw-title">Price</h4>
					<div class="filter-range-wrap">
						<div class="range-slider">
							<div class="price-input">
								<input type="text" id="minamount"> <input type="text"
									id="maxamount">
							</div>
						</div>
						<div
							class="price-range ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"
							data-min="100" data-max="1500">
							<div class="ui-slider-range ui-corner-all ui-widget-header"></div>
							<span tabindex="0"
								class="ui-slider-handle ui-corner-all ui-state-default"></span>
							<span tabindex="0"
								class="ui-slider-handle ui-corner-all ui-state-default"></span>
						</div>
					</div>
					<button id="filter" class="filter-btn">Filter</button>
				</div>
				<div class="filter-widget">
					<h4 class="fw-title">Size</h4>
					<div class="fw-size-choose">
						<div class="sc-item">
							<input type="radio" id="s-size"> <label for="s-size">s</label>
						</div>
						<div class="sc-item">
							<input type="radio" id="m-size"> <label for="m-size">m</label>
						</div>
						<div class="sc-item">
							<input type="radio" id="l-size"> <label for="l-size">l</label>
						</div>
						<div class="sc-item">
							<input type="radio" id="xs-size"> <label for="xs-size">xs</label>
						</div>
					</div>
				</div>
				<div class="filter-widget">
					<h4 class="fw-title">Tags</h4>
					<div class="fw-tags">
						<a href="#">Towel</a> <a href="#">Shoes</a> <a href="#">Coat</a> <a
							href="#">Dresses</a> <a href="#">Trousers</a> <a href="#">Men's
							hats</a> <a href="#">Backpack</a>
					</div>
				</div>
			</div>
			<div class="col-lg-9 order-1 order-lg-2">
				<div class="product-show-option">
					<div class="row">
						
						<div class="col-lg-5 col-md-5 text-left">
							<input type="search" placeholder="sreach"/><button id="search" class="btn btn-success"> Tìm Kiếm</button>
						</div>
					</div>
				</div>
				<!-- View product -->
				<div class="product-list">
					<div class="row">
						<!-- start 1 image -->
						<c:forEach items="${listProduct}" var="product" varStatus="loop">
							<div class="col-lg-4 col-sm-6">
								<div class="product-item">
									<div class="pi-pic">
										<a href="/MyHanhShop/productDetail?id=${ product.id}"
											><img class="urlImage"
											src="${pageContext.request.contextPath}/statics/${product.thumbnail}"
											alt=""></a>
										<div class="sale pp-sale">Sale</div>
										<div class="icon">
											<i class="icon_heart_alt"></i>
										</div>
										<ul>
											<li class="w-icon active"><a href="#"><i
													class="icon_bag_alt"></i></a></li>
											<li class="quick-view"><a href="#">+ Quick View</a></li>
											<li class="w-icon"><a href="#"><i
													class="fa fa-random"></i></a></li>
										</ul>
									</div>
									<div class="pi-text">
										<div class="catagory-name"></div>
										<a href="/MyHanhShop/productDetail">
											<h5 class="nameProduct">
												<c:out value="${product.nameProduct}" />
											</h5>
										</a>
										<div class="product-price">

											<h4 class="price"><c:out value="${product.priceProduct}" /><b>$</b></h4>
											 <span>500.00</span><b>$</b>
										</div>
										<c:url value="/checkout?codeProduct=${ product.codeProduct}" var="addToCart"/>
										<a href="${addToCart}" class="btn btn-warning btn-large"> <span
											class="glyphicon-shopping-cart glyphicon"> </span> Order Now
										</a>
									</div>
								</div>
							</div>
						</c:forEach>

					</div>
				</div>
				
			</div>
		</div>
		<div class="row"></div>
	</div>
</section>
<!-- Product Shop Section End -->

<!-- Partner Logo Section Begin -->
<div class="partner-logo">
	<div class="container">
		<div class="logo-carousel owl-carousel">
			<div class="logo-item">
				<div class="tablecell-inner">
					<img
						src="${pageContext.request.contextPath}/statics/img/logo-carousel/logo-1.png"
						alt="">
				</div>
			</div>
			<div class="logo-item">
				<div class="tablecell-inner">
					<img
						src="${pageContext.request.contextPath}/statics/img/logo-carousel/logo-2.png"
						alt="">
				</div>
			</div>
			<div class="logo-item">
				<div class="tablecell-inner">
					<img
						src="${pageContext.request.contextPath}/statics/img/logo-carousel/logo-3.png"
						alt="">
				</div>
			</div>
			<div class="logo-item">
				<div class="tablecell-inner">
					<img
						src="${pageContext.request.contextPath}/statics/img/logo-carousel/logo-4.png"
						alt="">
				</div>
			</div>
			<div class="logo-item">
				<div class="tablecell-inner">
					<img
						src="${pageContext.request.contextPath}/statics/img/logo-carousel/logo-5.png"
						alt="">
				</div>
			</div>
		</div>
	</div>
</div>

<jsp:include flush="true" page="footer.jsp"></jsp:include>