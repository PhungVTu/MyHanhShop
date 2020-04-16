<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include flush="true" page="header.jsp"></jsp:include>

<!-- Breadcrumb Section Begin -->
<div class="breacrumb-section">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="breadcrumb-text">
					<a href="#"><i class="fa fa-home"></i> Home</a> <span>Contact</span>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Map Section Begin -->
    <div class="map spad">
        <div class="container">
            <div class="map-inner">
                <iframe
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.4432203295514!2d105.72980611461438!3d21.05495288598419!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313454570b27e1b7%3A0x61dcb84467f555ad!2zMzAgUGjhu5EgTmjhu5VuLCBYdcOibiBQaMawxqFuZywgQuG6r2MgVOG7qyBMacOqbSwgSMOgIE7hu5lpLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1583316732329!5m2!1svi!2s"
                    height="610" style="border:0" allowfullscreen="">
                </iframe>
                <div class="icon">
                    <i class="fa fa-map-marker"></i>
                </div>
            </div>
        </div>
    </div>
    <!-- Map Section Begin -->

<!-- Contact Section Begin -->
<section class="contact-section spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-5">
				<div class="contact-title">
					<h4>Contacts Us</h4>
					<p>Contrary to popular belief, Lorem Ipsum is simply random
						text. It has roots in a piece of classical Latin literature from
						45 BC, maki years old.</p>
				</div>
				<div class="contact-widget">
					<div class="cw-item">
						<div class="ci-icon">
							<i class="ti-location-pin"></i>
						</div>
						<div class="ci-text">
							<span>Address:</span>
							<p>30 Phố Nhổn</p>
						</div>
					</div>
					<div class="cw-item">
						<div class="ci-icon">
							<i class="ti-mobile"></i>
						</div>
						<div class="ci-text">
							<span>Phone:</span>
							<p>0979773222</p>
						</div>
					</div>
					<div class="cw-item">
						<div class="ci-icon">
							<i class="ti-email"></i>
						</div>
						<div class="ci-text">
							<span>Email:</span>
							<p>myhanhshop@gmail.com</p>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-6 offset-lg-1">
				<div class="contact-form">
					<div class="leave-comment">
						<h4>Leave A Comment</h4>
						<p>Our staff will call back later and answer your questions.</p>
						<form method="post" class="comment-form" >
							<div class="row">
								<div class="col-lg-6">
									<input type="text" placeholder="Your name" name="fullName" />
								</div>
								<div class="col-lg-6">
									<input type="text" placeholder="Your email" name="email"/>
								</div>
								<div class="col-lg-12">
									<textarea placeholder="Your message" name="contendFeedBack"></textarea>
									<button type="submit" id="feedBack" class="site-btn">Send feedBack</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Contact Section End -->

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