'use strict';

(function($) {

	/*------------------
	    Preloader
	--------------------*/
	$(window).on('load', function() {
		$(".loader").fadeOut();
		$("#preloder").delay(200).fadeOut("slow");
	});

	/*------------------
	    Background Set
	--------------------*/
	$('.set-bg').each(function() {
		var bg = $(this).data('setbg');
		$(this).css('background-image', 'url(' + bg + ')');
	});

	/*------------------
		Navigation
	--------------------*/
	$(".mobile-menu").slicknav({
		prependTo : '#mobile-menu-wrap',
		allowParentLinks : true
	});

	/*------------------
	    Hero Slider
	--------------------*/
	$(".hero-items").owlCarousel(
			{
				loop : true,
				margin : 0,
				nav : true,
				items : 1,
				dots : false,
				animateOut : 'fadeOut',
				animateIn : 'fadeIn',
				navText : [ '<i class="ti-angle-left"></i>',
						'<i class="ti-angle-right"></i>' ],
				smartSpeed : 1200,
				autoHeight : false,
				autoplay : true,
			});

	/*------------------
	    Product Slider
	--------------------*/
	$(".product-slider").owlCarousel(
			{
				loop : true,
				margin : 25,
				nav : true,
				items : 4,
				dots : true,
				navText : [ '<i class="ti-angle-left"></i>',
						'<i class="ti-angle-right"></i>' ],
				smartSpeed : 1200,
				autoHeight : false,
				autoplay : true,
				responsive : {
					0 : {
						items : 1,
					},
					576 : {
						items : 2,
					},
					992 : {
						items : 2,
					},
					1200 : {
						items : 3,
					}
				}
			});

	/*------------------
	   logo Carousel
	--------------------*/
	$(".logo-carousel").owlCarousel(
			{
				loop : false,
				margin : 30,
				nav : false,
				items : 5,
				dots : false,
				navText : [ '<i class="ti-angle-left"></i>',
						'<i class="ti-angle-right"></i>' ],
				smartSpeed : 1200,
				autoHeight : false,
				mouseDrag : false,
				autoplay : true,
				responsive : {
					0 : {
						items : 3,
					},
					768 : {
						items : 5,
					}
				}
			});

	/*-----------------------
	   Product Single Slider
	-------------------------*/
	$(".ps-slider").owlCarousel(
			{
				loop : false,
				margin : 10,
				nav : true,
				items : 3,
				dots : false,
				navText : [ '<i class="fa fa-angle-left"></i>',
						'<i class="fa fa-angle-right"></i>' ],
				smartSpeed : 1200,
				autoHeight : false,
				autoplay : true,
			});

	/*------------------
	    CountDown
	--------------------*/
	// For demo preview
	var today = new Date();
	var dd = String(today.getDate()).padStart(2, '0');
	var mm = String(today.getMonth() + 1).padStart(2, '0'); // January is 0!
	var yyyy = today.getFullYear();

	if (mm == 12) {
		mm = '01';
		yyyy = yyyy + 1;
	} else {
		mm = parseInt(mm) + 1;
		mm = String(mm).padStart(2, '0');
	}
	var timerdate = mm + '/' + dd + '/' + yyyy;
	// For demo preview end

	console.log(timerdate);

	// Use this for real timer date
	/* var timerdate = "2020/01/01"; */

	$("#countdown")
			.countdown(
					timerdate,
					function(event) {
						$(this)
								.html(
										event
												.strftime("<div class='cd-item'><span>%D</span> <p>Days</p> </div>"
														+ "<div class='cd-item'><span>%H</span> <p>Hrs</p> </div>"
														+ "<div class='cd-item'><span>%M</span> <p>Mins</p> </div>"
														+ "<div class='cd-item'><span>%S</span> <p>Secs</p> </div>"));
					});

	/*----------------------------------------------------
	 Language Flag js 
	----------------------------------------------------*/
	$(document).ready(function(e) {
		// no use
		
		try {
			var pages = $("#pages").msDropdown({
				on : {
					change : function(data, ui) {
						var val = data.value;
						if (val != "")
							window.location = val;
					}
				}
			}).data("dd");

			var pagename = document.location.pathname.toString();
			pagename = pagename.split("/");
			pages.setIndexByValue(pagename[pagename.length - 1]);
			$("#ver").html(msBeautify.version.msDropdown);
		} catch (e) {
			// console.log(e);
		}
		$("#ver").html(msBeautify.version.msDropdown);

		// convert
		$(".language_drop").msDropdown({
			roundedBorder : false
		});
		$("#tech").data("dd");
	});
	/*-------------------
		Range Slider
	--------------------- */
	var rangeSlider = $(".price-range"), minamount = $("#minamount"), maxamount = $("#maxamount"), minPrice = rangeSlider
			.data('min'), maxPrice = rangeSlider.data('max');
	rangeSlider.slider({
		range : true,
		min : minPrice,
		max : maxPrice,
		values : [ minPrice, maxPrice ],
		slide : function(event, ui) {
			minamount.val('$' + ui.values[0]);
			maxamount.val('$' + ui.values[1]);
		}
	});
	minamount.val('$' + rangeSlider.slider("values", 0));
	maxamount.val('$' + rangeSlider.slider("values", 1));

	/*-------------------
		Radio Btn
	--------------------- */
	$(".fw-size-choose .sc-item label, .pd-size-choose .sc-item label")
			.on(
					'click',
					function() {
						$(
								".fw-size-choose .sc-item label, .pd-size-choose .sc-item label")
								.removeClass('active');
						$(this).addClass('active');
					});

	/*-------------------
		Nice Select
	--------------------- */
	$('.sorting, .p-show').niceSelect();

	/*------------------
		Single Product
	--------------------*/
	$('.product-thumbs-track .pt').on('click', function() {
		$('.product-thumbs-track .pt').removeClass('active');
		$(this).addClass('active');
		var imgurl = $(this).data('imgbigurl');
		var bigImg = $('.product-big-img').attr('src');
		if (imgurl != bigImg) {
			$('.product-big-img').attr({
				src : imgurl
			});
			$('.zoomImg').attr({
				src : imgurl
			});
		}
	});

	$('.product-pic-zoom').zoom();

	/*-------------------
		Quantity change
	--------------------- */
	var proQty = $('.pro-qty');
	proQty.prepend('<span class="dec qtybtn">-</span>');
	proQty.append('<span class="inc qtybtn">+</span>');
	proQty.on('click', '.qtybtn', function() {
		var $button = $(this);
		var oldValue = $button.parent().find('input').val();
		if ($button.hasClass('inc')) {
			var newVal = parseFloat(oldValue) + 1;
		} else {
			// Don't allow decrementing below zero
			if (oldValue > 0) {
				var newVal = parseFloat(oldValue) - 1;
			} else {
				newVal = 0;
			}
		}
		$button.parent().find('input').val(newVal);
	});

	/* add js */
	var total=parseFloat($('.cart-price').text());
	var forget_pass = $('.forget-pass');
	forget_pass.click(function(data) {
		debugger;
		// window.location.href = '/TTTN_DA/register/';
	});
	var search = $('.ti-search');
	search.click(function(){
		// window.location.href='/TTTN_DA/';
	});
	var login=$('#login');
	login.click(function(){
		debugger;
		var userName=$('#username').val();
		var passWord=$('#pass').val();
		var data={userName,passWord};
		
		$.get({
			 url : '/admin/login/',
			 data: data,
			 contentType: "application/json; charset=utf-8",
			 dataType: "json",
	         success:  function(data)
	         {
	        	 debugger;
	         }
		});
	});
	var isCalvin= $('#bc-calvin').prop('checked');
	var isGucci= $('#bc-gucci').prop('checked');
	var isTommy= $('#bc-tommy').prop('checked');
	var isNike= $('#bc-nike').prop('checked');
	var minAmount=parseFloat($('#minamount').val().replace('$',''));
	var maxAmount=parseFloat($('#maxamount').val().replace('$',''));
	var filter=$('filter');
	filter.click(function(){
		
	});
	
	/*var buy=$('.buy');
	var click=0;
	
	buy.click(function(data){
	
		debugger;
		$('.select-items').html(itemCart);
		var size=buy.length;
		
		var price=parseFloat($('.price').text().replace('đ',''));
	
		var isNike= $('#bc-nike').prop('checked');
		var urlImage=$('#urlImage').text();
		total= total+price;
		$('.cart-price').html(total);
		$('#total').html(total);
	
	});*/
	$('.cart-price').html(total);
	

		  
	
})(jQuery);