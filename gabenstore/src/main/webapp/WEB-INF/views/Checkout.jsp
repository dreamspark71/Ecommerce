<%@ include file="/WEB-INF/views/Header.jsp"%>
<div  ng-app="myApp" ng-controller="categoryCtrl" class="cartback">
	<div class="container">
		<div class="row">
			<div class="col-lg-7 col-md-7 col-sm-12 col-xs-12">
				<div class="checkoutcard">
					<div class="row">
						<div class="col-lg-11 col-md-11 col-xs-11 col-sm-11">
						<form:form action="addAddressCheckout" modelAttribute="address">							
							<p>BILLING ADDRESS</p>		
							<p class="billline"></p>
							<form:input class="form-control" path="userID" value="${displayUser}" type="hidden"/>
							<p class="billtext">FIRST NAME</p>
							<form:input class="form-control billtextbox" path="addressFirst" value="{{address.addressFirst}}"/>
							<div style="padding-top: 10px"></div>
							
							 <p class="billtext">LAST NAME</p>
							<form:input type="text" class="form-control billtextbox" path="addressLast" value="{{address.addressLast}}"/>
							<div style="padding-top: 10px"></div>
							
							<p class="billtext">COMPANY</p>
							<form:input type="text" class="form-control billtextbox" path="addressCompany" value="{{address.addressCompany}}"/>
							<div style="padding-top: 10px"></div>
							
							<p class="billtext">COUNTRY</p>
							<form:input type="text" class="form-control billtextbox" path="addressCountry" value="{{address.addressCountry}}"/>
							<div style="padding-top: 10px"></div>
							
							<p class="billtext">ADDRESS</p>
							<form:input type="text" class="form-control billtextbox" path="addressAddress" value="{{address.addressAddress}}"/>
							<div style="padding-top: 10px"></div>
							
							<p class="billtext">TOWN/CITY</p>
							<form:input type="text" class="form-control billtextbox" path="addressCity" value="{{address.addressCity}}"/>
							<div style="padding-top: 10px"></div>
							
							<p class="billtext">STATE/COUNTY</p>
							<form:input type="text" class="form-control billtextbox" path="addressState" value="{{address.addressState}}"/>
							<div style="padding-top: 10px"></div>
							
							<p class="billtext">PINCODE / ZIP</p>
							<form:input type="text" class="form-control billtextbox" path="addressPostal" value="{{address.addressPostal}}"/>
							<div style="padding-top: 10px"></div>
							
							<p class="billtext">PHONE</p>
							<form:input type="text" class="form-control billtextbox" path="addressPhone" value="{{address.addressPhone}}"/>
							<div style="padding-top: 10px"></div>
							
							<p class="billtext">EMAIL</p>
							<form:input type="email" class="form-control billtextbox" path="addressEmail" value="${pageContext.request.userPrincipal.name}"/>
							<div style="padding-top: 10px"></div>
							
							<button type="submit" class="btn btn-primary" style="border-radius: 1px">EDIT</button>
							</form:form>
						</div>
					</div>
				</div>	
			</div>
			<div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
				<div class="checkoutcard">	
					<p style="font-size: 14px;" class="checkline">YOUR ORDER</p>
					<div ng-repeat="disp in display">
						<p style="padding-top: 10px;padding-bottom: 10px" class="checkline">{{disp.productName}}<span class="pull-right" style="color:grey;font-size: 12px">Rs. {{disp.cartTotalAmount}}</span><br><span style="font-size: 12px;color: grey">Quantity: {{disp.cartItemQuantity}}</span></p>
					</div>
					<p style="font-size: 12px;padding-bottom: 5px;" class="checkline">CART SUBTOTAL<span class="pull-right" style="color:grey;font-size: 12px">Rs. ${grandtotal}</span></p>
					<p style="font-size: 12px;padding-bottom: 5px; border-color: white" class="checkline">ORDER TOTAL<span class="pull-right" style="color:#2263a6;font-size: 14px">Rs. ${grandtotal}</span></p>
				</div>	
				<div style="margin-top: 10px;"></div>
				<div class="checkoutcard">	
					<p style="font-size: 14px;" class="checkline">PAYMENT METHOD</p>
					<p style="font-size: 14px;">CHOOSE A METHOD</p>
					<label class="radio-inline"><input type="radio" name="optradio">CREDIT CARD</label>
					<label class="radio-inline"><input type="radio" name="optradio">DEBIT CARD</label>
					<label class="radio-inline"><input type="radio" name="optradio">NET-BANKING</label>
				</div>
				<a href="placeOrders"><button type="button" class="btn btn-default" style="border-radius: 1px;margin-top: 10px;background-color:black;color:white;border-color:black">PLACE ORDER</button></a>	
			</div>
		</div>				
	</div>
<%@ include file="/WEB-INF/views/Footer.jsp"%>
</div>	

 <script>
var app = angular.module('myApp', []);
app.controller('categoryCtrl', function($scope)
{
  $scope.display=${displayCart};
  $scope.address=${Address};
});
</script>