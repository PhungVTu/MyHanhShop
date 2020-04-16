'use strict';

(function($) {
	
	var buttion=$('#addPrSubmit');
	buttion.click(function() {

		var codeProduct=$("input[name*='masp']").val();
		var nameProduct=$("input[name*='tensp']").val();
		var brand=$("input[name*='brand']").val();
		var codeTypeProduct=$('#mySelected').val();
		var amount=$("input[name*='amount']").val();
		var meterial=$("input[name*='meterial']").val();
		var size=$("input[name*='size']").val();
		var descriptionProduct=$("input[name*='description']").val();
		var priceProduct=$("input[name*='price']").val();
		var unitCount=$("input[name*='unitCount']").val();
		var detailInformation=$("textarea[name*='descriptionDetail']").val();
		var thumbnail=$("input[name*='fileImage']").val().replace(/C:\\fakepath\\/i, '')
		
		var data={thumbnail,codeProduct,nameProduct,brand,codeTypeProduct,amount,meterial,size,descriptionProduct,priceProduct,unitCount,detailInformation};
	
		if(checkValidateAddProduct(data))
			{
				$.ajax({
					type:'post',
					url: '/MyHanhShop/admin/registerProduct',
					 data: JSON.stringify(data),
			         dataType: 'json',
					 contentType: "application/json; charset=utf-8",
			         success:  function(response)
			         { 
			         }
				 
				});
				redirectPageAddProduct();
			}
		
	});
	function redirectPageAddProduct()
	{
		location.replace("/MyHanhShop/admin/productList");
	}
	function redirectPageOrder()
	{
		location.replace('/MyHanhShop/order/success');
	}
	function checkValidateAddProduct(data)
	{
		if(data.codeProduct == "")
			{
				$('#masp').html('Please fill out');
				return false;
			}
		if(!validateSpecialCharactor(data.codeProduct))
			{
			$('#masp').html('Code Product has not special character');
				return false;
			}
		if(data.nameProduct == "")
			{
				$('#tensp').html('Please fill out');
				return false;
			}
		if(!checkName(data.nameProduct))
			{
				$('#tensp').html('Name Product has not special character')
				return false;
			}
		if(data.amount == "")
			{
				$('#giasp').html('Please fill out');
				return false;
			}
		if(data.amount == "")
			{
				$('#sosp').html('Please fill out');
				return false;
			}
		if(data.pricePRoduct == ""){
			$('#giasp').html('Please fill out');
			return false;
		}
		if(data.thumbnail == "")
			{
				$('#anh').html('Please fill out');
				return false;
			}
		return true;
	};
	
	
	var feedBack=$('#feedBack')
	feedBack.click(function(){
		debugger;
		var data={}
		var email=$("input[name*='email']").val()
		var fullName=$("input[name*='fullName']").val()
		var contend=$("textarea[name*='contendFeedBack']").val()
		data={fullName,email,contend};
		
		$.ajax({
			url: '/MyHanhShop/contact/feedback',
			data: data,
			 contentType: "application/json; charset=utf-8",
			 dataType: "json",
	         success:  function(data)
	         {
	        	 
	         }
		});
		
	});

	/*jQuery('a[href="#"]').on('click', function(e){ 
		e.preventDefault();
		$(this).toggleClass("btn-success");
	});*/
	var order=$('#order');
	order.click(function(){

		var firstName = $("input[name*='firstName']").val();
		var lastName = $("input[name*='lastName']").val();
		var email = $("input[name*='email']").val();
		var phone = $("input[name*='phone']").val();
		var address = $("input[name*='address']").val();
		var country = $("input[name*='country']").val();
		var company = $("input[name*='company']").val();
		var card = false;
		var cash = false;
		if($("input[name*='card']").val() == "card")
			{
				card =true;
			}
		if($("input[name*='cash']").val() == "cash")
			{
				cash =true;
			}
		var data={firstName,lastName,email,phone,address,country,company};
		if(checkValidateOrder(data))
			{
				$.ajax({
					type:'post',
					url: '/MyHanhShop/bill/pay',
					 data: JSON.stringify(data),
			         dataType: 'json',
					 contentType: "application/json; charset=utf-8",
			         success:  function(data)
			         {
			        	 location.replace('/MyHanhShop/admin/productList/');
			         }
				});
				redirectPageOrder();
			}
	});
	
	function checkValidateOrder(data)
	{
		var createAccount = $("input[name*='createAccount']").val();
		var card = $("input[name*='card']").val();
		var cash = $("input[name*='cash']").val();
		if(data.firstName == "")
			{
				$('#firstName').html('Please fill firstName');
				return false;
			}
		if(!checkName(data.firstName))
			{
				$('#firstName').html('First Name not have special character');
				return false;
			}
		if(data.lastName == "")
			{
				$('#lastName').html('Please fill lastName');
				return false;
			}
		if(!checkName(data.lastName))
			{
				$('#lastName').html('Last Name not have special character');
				return false;
			}
		if( data.email =="")
			{
				$('#email').html('Please fill email address');
				return false;
			}
		if(!validateEmail(data.email))
			{
				$('#email').html('email not format');
				return false
			}
		if(data.phone =="")
			{
				$('#phone').html('Please fill number phone');
				return false;
			}
		if(!validatePhone(data.phone))
			{
				$('#phone').html('phone not format');
				return false
			}
		if(data.address==""){
				$('#address').html('Please fill address');
				return false;
		}
		return true;
	}
	function checkName(input)
	{
		 if (input != "") {
	         var value = input;
	         var ch= /[!@#$%^&*()+\=\[\]{};':"\\|,.<>\/?]/;
	         var check = ch.test(value);
	          return !check;
	     }
	     return true;
	};
	function validateEmail(input)
	{
		 if (input != "") {
	         var value = input;
			var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	         var check=	re.test(value);
	          return check;
	     }
	     return true;
	};
	function validatePhone(input)
	{
		if (input != "") {
	        var value = input;
	        var check=	/^(0[1-9]{1,2}|\+[0-9]{1,3})+([0-9]{8,11})$/.test(value);
	         return check;
	    }
	    return true;
	};
	function validateSpecialCharactor(input)
	{
		 if (input != "") {
	         var value = input;
	         var ch= /[Ạ-ỹáàạảãâấầậẩẫăắằặẳẵÁÀẠẢÃÂẤẦẬẨẪĂẮẰẶẲẴéèẹẻẽêếềệểễÉÈẸẺẼÊẾỀỆỂỄóòọỏõôốồộổỗơớờợởỡÓÒỌỎÕÔỐỒỘỔỖƠỚỜỢỞỠúùụủũưứừựửữÚÙỤỦŨƯỨỪỰỬỮíìịỉĩÍÌỊỈĨđĐýỳỵỷỹÝỲỴỶỸ!@#$%^&*()+\=\[\]{};':"\\|,.<>\/?]/;
	         var check = ch.test(value);
	          return !check;
	     }
	     return true;
	  };
	  var remove=$('.btn-danger');
	  remove.click(function(){
		
		  var nameProduct=$(this).closest('.classItem').find('td:nth-child(1)').text();
		  var data={nameProduct};
		  $.ajax({
				type:'post',
				url: '/MyHanhShop/cart/removeCart',
				 data: JSON.stringify(data),
		         dataType: 'json',
				 contentType: "application/json; charset=utf-8",
		         success:  function(data)
		         {	
		         }
			});
		  
	  })


	

})(jQuery);
