<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>

<jsp:include flush="true" page="header.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Breadcrumb Section Begin -->
<div class="breacrumb-section">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="breadcrumb-text product-more">
					<a href="/MyHanhShop/"><i class="fa fa-home"></i> Home</a> <a
						href="/MyHanhShop/shop/">Shop</a> <span>Check Out</span>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Breadcrumb Section Begin -->	

<!-- Shopping Cart Section Begin -->
<section class="checkout-section spad">
	<div class="container" ng-app="myApp">
		<form action="" name="myForm" class="checkout-form" onclick="return checkValidate()" method="post">
			<div class="row">
				<div class="col-lg-6">

					<h4>Biiling Details</h4>
					<div class="row">
						<div class="col-lg-6">
							<label for="fir">First Name<span>*</span></label> <span style="color:red;align:right" id="firstName"></span><input
								type="text" id="first" name="firstName">
								
						</div>
						<div class="col-lg-6">
							<label for="last">Last Name<span>*</span></label><span style="color:red" id="lastName"></span> <input
								type="text" id="last" name="lastName"><span style="color:red" id="lastName"></span>
						</div>
						<div class="col-lg-6">
							<label for="email">Email Address<span>*</span></label> <span style="color:red" id="email"></span><input
								type="text" id="email" name="email">
						</div>
						<div class="col-lg-6">
							<label for="phone">Phone<span>*</span></label><span style="color:red" id="phone"></span> <input type="text"
								id="phone" name="phone">
						</div>
						<div class="col-lg-12">
							<label for="street">Address<span>*</span></label><span style="color:red" id="address"></span> <input
								type="text" id="street" class="street-first" name="address">
						</div>
						
						<div class="col-lg-12">
							<label for="cun">Country</label> <input type="text"
								id="cun" name="country">
						</div>
						

						<div class="col-lg-12">
							<label for="cun-name">Company Name</label> <input type="text"
								id="cun-name" name="company">
						</div>
						<div class="col-lg-12">
							<div class="create-item">
								<label for="acc-create"> Create an account? <input
									type="checkbox" id="acc-create"> <span
									class="checkmark" name="createAccount" value="createAccount"></span>
								</label>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="place-order" ng-controller="controller">
						<h4>Your Order</h4>
						<div class="order-total">
							<div>
								<a class="btn btn-danger pull-left" ng-click="clearCart()">
									<span class="glyphicon glyphicon-remove-sign"></span> Clear
									Cart
								</a>
							</div>
							<table class="table table-hover">
								<tr>
									<th>Sản Phẩm</th>
									<th>Số Lượng</th>
									<th>Đơn vị giá</th>
									<th>Giá</th>
									<th>Action</th>
								</tr>
								<c:forEach items="${order.items}" var="item">
								<c:set var="i" value="${0}"/>
								<tr class ="classItem">
									<td>${item.product.nameProduct}</td>
									<td>${item.quantity}</td>
									<td>${item.product.priceProduct }</td>
									<td>${item.price }</td>
									<td><button class="btn btn-danger" ng-click="removeFromCart()" > <span
											class="glyphicon glyphicon-remove" /></span> Remove
									</button></td>
								</tr>
								
								</c:forEach>

							</table>
							<a href="<spring:url value="/shop" />" class="btn btn-success">
								<span class="glyphicon-circle-arrow-left glyphicon"></span>
								continue shopping
							</a>
							<div class="payment-check">
								<div class="pc-item">
									<label for="pc-check"> Payment via card <input
										type="checkbox" id="pc-check" name="card" value="card"> <span class="checkmark"></span>
									</label>
								</div>
								<div class="pc-item">
									<label for="pc-paypal"> Cash <input type="checkbox"
										id="pc-paypal" name="cash" vaule="cash"> <span class="checkmark"></span>
									</label>
								</div>
							</div>
							<div class="order-btn">
								<button type="submit" id="order" class="btn btn-success">Place
									Order</button>
							</div>
						</div>
					</div>
				</div>
			</div>
	</div>
	</form>
	</div>
</section>
<!-- Shopping Cart Section End -->

<!-- Partner Logo Section Begin -->
<div class="partner-logo">
	<div class="container">
		<div class="logo-carousel owl-carousel">
			<div class="logo-item">
				<div class="tablecell-inner">
					<img src="img/logo-carousel/logo-1.png" alt="">
				</div>
			</div>
			<div class="logo-item">
				<div class="tablecell-inner">
					<img src="img/logo-carousel/logo-2.png" alt="">
				</div>
			</div>
			<div class="logo-item">
				<div class="tablecell-inner">
					<img src="img/logo-carousel/logo-3.png" alt="">
				</div>
			</div>
			<div class="logo-item">
				<div class="tablecell-inner">
					<img src="img/logo-carousel/logo-4.png" alt="">
				</div>
			</div>
			<div class="logo-item">
				<div class="tablecell-inner">
					<img src="img/logo-carousel/logo-5.png" alt="">
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Partner Logo Section End -->
<jsp:include flush="true" page="footer.jsp"></jsp:include>
