<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<jsp:include flush="true" page="header.jsp"></jsp:include>

<!-- Breadcrumb Section Begin -->
<div class="breacrumb-section">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="breadcrumb-text">
					<a href="#"><i class="fa fa-home"></i> Home</a> <span>Login</span>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Breadcrumb Form Section Begin -->

<!-- Register Section Begin -->
<div class="register-login-section spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 offset-lg-3">
				<div class="login-form">
					<h2>Login</h2>
					<form action="#" method="post" name="loginForm">
						<div class="group-input">
							<label for="username">Username or email address *</label> 
							<input 
								type="text" name="userName" id="username">
						</div>
						<div class="group-input">
							<label for="pass">Password *</label> <input type="password" name="passWord" id="pass">
						</div>
						<div class="group-input gi-check">
							<div class="gi-more">
								<label for="save-pass"> Save Password <input
									type="checkbox" id="save-pass"> <span class="checkmark"></span>
								</label>
								<h3 class="forget-pass">Forget your Password</h3>
							</div>
						</div>
						<button type="submit" id="login" class="site-btn login-btn">Sign In</button>
					</form>
					<div class="switch-login">
						<a href="/MyHanhShop/register/" class="or-login">Or Create An
							Account</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Register Form Section End -->

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
<!-- Partner Logo Section End -->

<jsp:include flush="true" page="footer.jsp"></jsp:include>