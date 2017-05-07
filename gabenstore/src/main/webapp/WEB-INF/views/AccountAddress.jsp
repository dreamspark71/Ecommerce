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
							The following addresses will be used on the checkout page by default.<br>
							<a href="/gabenstore/BillAddress"><button type="button" class="btn" style="border-radius: 1px;background-color: black;color:white" >Edit</button></a><br>
								${address.addressFirst} ${address.addressLast}<br>
								${address.addressCompany}
								${address.addressAddress}<br>
								${address.addressState} ${address.addressCountry}<br>
								${address.addressCity} ${address.addressPostal}<br>
								${address.addressPhone}
								 								
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
  /* $scope.disp=${address}; */
});
</script>