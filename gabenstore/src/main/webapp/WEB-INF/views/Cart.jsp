<%@ include file="/WEB-INF/views/Header.jsp"%>

<div ng-app="myApp" ng-controller="categoryCtrl" class="cartback">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="cartcard">
					<p style="font-size: 30px">SHOPPING CART</p>
				</div>
			</div>
		</div>
		<div ng-if="display.length==0">You have No Items in Cart.Go to <a href="/gabenstore/Shop">Shop</a></div>
		<div ng-if="display.length!=0">
			<div style="padding-bottom: 30px;"></div>
			<div class="row">
				<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
					<div class="col-lg-4 col-md-4 col-sm-3 col-xs-3">
						<p>PRODUCT</p>
					</div>
					<div class="col-lg-2 col-md-2 col-sm-3 col-xs-3">
						<p>PRICE</p>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
						<p>QUANTITY</p>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
						<p>TOTAL</p>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 hidden-sm hidden-xs">
					<p>CART TOTALS</p>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
					<div ng-repeat="disp in display">
						<div class="cartitem">
							<a href="delete-{{disp.cartItemsID}}"> 
								<i class="fa fa-times-circle-o" style="position: absolute; font-size: 20px; margin-top: 25px; margin-left: -5px; color: black"></i>
							</a>
							<div class="col-lg-1 col-md-1 col-xs-2 col-sm-1">
								<div class="cartimage">
									<img src="resources/theme1/images/productImages/{{disp.productID}}.jpg" class="image-responsive" style="width: 46px; height: 74px;" alt="{{disp.productName}}">
								</div>
							</div>

							<div class="col-lg-3 col-md-1 col-xs-2 col-sm-2 ">
								<p>{{disp.productName}}</p>
							</div>

							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-1 cartpad">
								<p>Rs. {{disp.cartAmount}}</p>
							</div>

							<div class="col-lg-3 col-md-3 col-sm-3 col-xs-4 cartpad">
								<div class="input-group number-spinner">
									<input type="button" onclick="decrementValue()" value="-"class="btn btn-primary productbuttontext1" style="border-radius: 1px" /> 
									<input type="text" class="text-center productbuttontext" value="{{disp.cartItemQuantity}}" maxlength="2" max="10" size="1" id="number" stye="height:120px;"> 
									<input type="button" onclick="incrementValue()" value="+" class="btn btn-primary productbuttontext1" style="border-radius: 1px" />
								</div>
							</div>

							<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 cartpad"
								style="padding-left: 50px;">
								<p>RS. {{disp.cartTotalAmount}}</p>
							</div>
						</div>
						<div style="margin-top: 10px"></div>
					</div>
				</div>

				<div class="hidden-lg hidden-md" style="margin-top: 100px;"></div>
				<div class="col-lg-4 col-md-4 col-md-12 col-xs-12">
					<div class="carttotalcard">
					<div ng-repeat="disp in display">
						<div class="row cartline" style="padding-top: 10px;">
							<p class="col-lg-9 col-md-9 col-sm-9 col-xs-9 carttotal" style="font-size: 12px;">{{disp.productName}}</p>
							<p class="col-lg-3 col-md-3 col-sm-3 col-xs-3 carttotal" style="font-size: 12px; color: grey">Rs. {{disp.cartTotalAmount}}</p>
						</div>
						
						<div class="row cartline">
							<p class="col-lg-9 col-md-9 col-sm-9 col-xs-9 carttotal" style="font-size: 12px;">Subtotal</p>
							<p class="col-lg-3 col-md-3 col-sm-3 col-xs-3 carttotal" style="font-size: 12px; color: grey">Rs. {{disp.cartTotalAmount}}</p>
						</div>
						
						<div class="row cartline"
							style="padding-bottom: 10px; border-color: white">
							<p class="col-lg-9 col-md-9 col-sm-9 col-xs-9 carttotal" style="font-size: 12px;">Total</p>
							<p class="col-lg-3 col-md-3 col-sm-3 col-xs-3 carttotal" style="font-size: 12px; color: #2263a6;">Rs. {{disp.cartTotalAmount}}</p>
						</div>
					</div>	
					</div>
					<div style="padding-top: 20px;"></div>
					<div class="row">
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
							<button type="button" class="btn btn-primary" style="border-radius: 1px; width: 100%">UPDATE CART</button>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
							<button type="button" class="btn btn-primary" style="background-color: black; border-color: black; border-radius: 1px; width: 100%">CHECKOUT</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/Footer.jsp"%>
</div>			
<script>
	$(function() {
    var action;
    $(".number-spinner button").mousedown(function () {
        btn = $(this);
        input = btn.closest('.number-spinner').find('input');
        btn.closest('.number-spinner').find('button').prop("disabled", false);

    	if (btn.attr('data-dir') == 'up') {
            action = setInterval(function(){
                if ( input.attr('max') == undefined || parseInt(input.val()) < parseInt(input.attr('max')) ) {
                    input.val(parseInt(input.val())+1);
                }else{
                    btn.prop("disabled", true);
                    clearInterval(action);
                }
            }, 50);
    	} else {
            action = setInterval(function(){
                if ( input.attr('min') == undefined || parseInt(input.val()) > parseInt(input.attr('min')) ) {
                    input.val(parseInt(input.val())-1);
                }else{
                    btn.prop("disabled", true);
                    clearInterval(action);
                }
            }, 50);
    	}
    }).mouseup(function(){
        clearInterval(action);
    });
});

</script>
<script>
var app = angular.module('myApp', []);
app.controller('categoryCtrl', function($scope)
{
  $scope.display=${displayCart};
});
</script>
<script type="text/javascript">
function incrementValue()
{
    var value = parseInt(document.getElementById('number').value, 10);
    value = isNaN(value) ? 0 : value;
    if(value<10){
        value++;
            document.getElementById('number').value = value;
    }
}
function decrementValue()
{
    var value = parseInt(document.getElementById('number').value, 10);
    value = isNaN(value) ? 0 : value;
    if(value>1){
        value--;
            document.getElementById('number').value = value;
    }

}
</script>
				