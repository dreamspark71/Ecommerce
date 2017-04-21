<%@ include file="/WEB-INF/views/Header.jsp"%>
<div ng-app="myApp" ng-controller="categoryCtrl" class="shopback">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="shopcard">
					<p style="font-size: 30px">MY ACCOUNT</p>
				</div>
				<div style="padding-bottom: 30px;"></div>
				<div class="accountcard">
					<div class="row">
						<div class="col-lg-3">
								<a class="accounttext" href="/gabenstore/Account">DASHBOARD</a>
								<p class="accountline"></p>
								<a href="/gabenstore/Orders" class="accounttext">ORDERS</a>
								<p class="accountline"></p>
								<a href="/gabenstore/AccountAddress" class="accounttext">ADDRESSES</a>
								<p class="accountline"></p>
								<a href="/gabenstore/AccountWishlist" class="accounttext">WISHLIST</a>
								<p class="accountline"></p>
								<a href="/gabenstore/AccountDetails" class="accounttext">ACCOUNT DETAILS</a>
								<p class="accountline"></p>
								<a href="logout" class="accounttext">LOGOUT</a>
						</div>
						<div class="col-lg-9">
								<div ng-if="display.length == 0">
									You don't have any wishlisted items
								</div>
								<div ng-repeat="disp in display">
								<div class="row">
								<div class="col-lg-2">
									<div class="accountbox1">
										<a href="viewProduct-{{disp.productID}}"><img src="resources/theme1/images/productImages/{{disp.productID}}.jpg" class="image-responsive" style="width:68px;height:88px;"></a>
									</div>
								</div>
								<div class="col-lg-3" style="margin-top:30px">
									<a href="viewProduct-{{disp.productID}}">{{disp.productName}}</a>
								</div>
								<div class="col-lg-2" style="margin-top:30px">
									Rs. {{disp.productPrice}}
								</div>
								<div class="col-lg-2" style="margin-top:30px">
									<a href="deleteWish-{{disp.wishID}}" class="btn btn-primary" style="border-radius: 1px">REMOVE</a>
								</div>
								<div class="col-lg-2" style="margin-top:30px">
									<a href="addToCartWish-{{disp.productID}}" class="btn btn-primary" style="border-radius: 1px">ADD TO CART</a>
								</div>
								</div>
								<div style="padding-top:10px"></div>
							</div>
						</div>
						
					</div>
				</div>
			</div>
		</div>			
	</div>
<%@ include file="/WEB-INF/views/Footer.jsp"%>	
</div>
 <script>
var app = angular.module('myApp', []);
app.controller('categoryCtrl', function($scope)
{
  $scope.display=${wishdisplay};
});
</script>
