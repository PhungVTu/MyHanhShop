
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>

<jsp:include flush="true" page="header.jsp"></jsp:include>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<style>
.single-img{
max-height:150%;
}
</style>

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
<section class="product-shop spad"  class="container">
	<div class="container" ng-app="myApp">	
			<!--  -->
	
	<div class="row">
			<div class="col-md-3">
				<img src="${pageContext.request.contextPath}/statics/${productDetail.thumbnail}" class="single-img" alt="image" /> 
			</div>
			<div class="col-md-3">

				<h3>${productDetail.nameProduct}</h3>
				<p>${productDetail.detailInformation}</p>
				<p>
					<strong>Item Code : </strong><span class="label label-warning">${productDetail.codeProduct}</span>
				</p>
				<%-- <p>
					<strong>manufacturer</strong> : ${product.manufacturer}
				</p>
				<p>
					<strong>category</strong> : ${product.category}
				</p>
				<p>
					<strong>Availble units in stock </strong> : ${product.unitsInStock}
				</p> --%>
				<h4>${productDetail.priceProduct}USD</h4>
				<p>
					<a href="<spring:url value="/shop"/>" class="btn btn-success">
						<span class="glyphicon-circle-arrow-left glyphicon"></span> back
					</a> 
					<c:url value="/checkout?codeProduct=${ productDetail.codeProduct}" var="addToCart"/>
					<a href="${addToCart}" class="btn btn-warning btn-large"> <span
						class="glyphicon-shopping-cart glyphicon"> </span> Order Now
					</a>
				</p>
			</div>
		</div>
	
				<!-- View product detail-->
				<%-- <div class="product-list">
					<div class="row">
						<!-- start 1 image -->
						<div class="col-lg-4 col-sm-6">
							<div class="product-item">
								<div class="pi-pic">
									<img class="urlImage"
										src="${pageContext.request.contextPath}/statics/${productDetail.thumbnail}"
										alt="" />
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

							</div>
						</div>
						<div class="col-lg-6 col-sm-6">
							<div class="pi-text">

								<a href="/MyHanhShop/productDetail">
									<h5 class="nameProduct">
										<c:out value="${productDetail.nameProduct}" />
									</h5>
								</a>
								<div class="product-price">
									<b style="font-size: 20px"><i>Đơn Giá: </i></b> 
									<span id="price">${productDetail.priceProduct} <b>đ</b></span>
								</div>
								<div class="unitCount">
									<b><i>Đơn Vị Tính: </i></b>
									<c:out value="${productDetail.unitCount}" />
								</div>
								<div class="description">
									<c:out value="${productDetail.detailInformation}" />
								</div>
								<div>
									<button class="buy">Mua</button><span class="isCheck"></span>
								</div>
							</div>
						</div>
					</div>
				</div> --%>

			</div>
		</div>
	</div>
</section>
<!-- Product Shop Section End -->

<jsp:include flush="true" page="footer.jsp"></jsp:include>