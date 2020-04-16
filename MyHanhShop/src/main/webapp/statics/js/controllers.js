var cartApp = angular.module('myApp', []);
cartApp.config(['$httpProvider', function($httpProvider) {
$httpProvider.defaults.useXDomain = true;
delete $httpProvider.defaults.headers.common['X-Requested-With'];
}
]);

cartApp.controller('controller', function($scope, $http){
	$scope.refreshCart = function(cartId){
		$http.get('/MyHanhShop/rest/cart/'+$scope.cartId)
		.success(function(data){
			debugger;
			$scope.cart = data;
		});
	};
	
	$scope.clearCart = function() {
		$http.get('/MyHanhShop/cart/delete/')
		refreshPages();
	};
	refreshPages = function()
	{
		 location.replace('/MyHanhShop/shop/')
	}
	refreshPagesCheckout =function()
	{
		 location.replace('/MyHanhShop/shop/')
	}
	$scope.refreshPage=function()
	{
		 location.replace('/MyHanhShop/admin/productList/');
	}
	$scope.initCartId = function(cartId) {
	
		$scope.cartId=cartId;
		$scope.refreshCart($scope.cartId);
	};
	$scope.order = function()
	{
		location.replace('/MyHanhShop/order/success')
	}	 
	 $scope.removeFromCart = function() {
		location.replace('/MyHanhShop/checkout/');
		location.reload();
	};
	

	
});
