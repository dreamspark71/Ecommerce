<%@ include file="/WEB-INF/views/Header.jsp"%>

<div ng-app="myApp" ng-controller="categoryCtrl" class="shopback">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="shopcard">
					<p style="font-size: 30px">SHOP</p>
				</div>
				<div style="padding-bottom: 30px;"></div>
				<div class="dropdown">
    				<button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown" style="border-radius: 1px">SORT
    				<span class="caret"></span></button>
    				<ul class="dropdown-menu">
      					<li><a href="#">Sort by popularity</a></li>
      					<li><a href="#">Sort by rating</a></li>
      					<li><a href="#">Sort by price:low to high</a></li>
      					<li><a href="#">Sort by price:high to low</a></li>
    				</ul>
  				</div>
  				<div style="padding-bottom: 10px;"></div>
  				<p style="font-size: 12px;">SHOWING 1-16 OF 99 RESULTS</p>
			</div>
		</div>
		<div style="padding-bottom: 30px;"></div>
		<div class="row">
			<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
				<div class="shopsearch">
					<b><p class="shoppad">SEARCH GAMES</p></b>
					<p class="shopline"></p>
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<input type="text" class="form-control" style="margin-top: 5px;border-radius: 1px;" placeholder="Search Products..">
					</div>
					<div class="col-lg-3 col-lg-3 col-xs-3 col-sm-3">
						<button type="button" class="btn btn-primary" style="margin-top: 10px;border-radius: 1px;">SEARCH</button>
					</div>
				</div>
				<div style="padding-bottom: 30px"></div>
				<div class="shopcategory">	
					<b><p class="shoppad">GAMES CATEGORIES</p></b>	
					<p class="shopline"></p>
					<a href="#" class="shoptext">ACTION</a>
					<p class="shopline1"></p>
					<a href="#" class="shoptext">ADVENTURE</a>
					<p class="shopline1"></p>
					<a href="#" class="shoptext">ACRADE & INDIE</a>
					<p class="shopline1"></p>
					<a href="#" class="shoptext">FPS</a>
					<p class="shopline1"></p>
					<a href="#" class="shoptext">MICROSOFT</a>
					<p class="shopline1"></p>
					<a href="#" class="shoptext">MMO</a>
					<p class="shopline1"></p>
					<a href="#" class="shoptext">OPEN WORLD</a>
					<p class="shopline1"></p>
					<a href="#" class="shoptext">ORIGIN</a>
					<p class="shopline1"></p>
					<a href="#" class="shoptext">OTHER</a>
					<p class="shopline1"></p>
					<a href="#" class="shoptext">PRE-ORDER</a>
					<p class="shopline1"></p>
					<a href="#" class="shoptext">RACING</a>
					<p class="shopline1"></p>
					<a href="#" class="shoptext">RPG</a>
					<p class="shopline1"></p>
					<a href="#" class="shoptext">SIMULATION</a>
					<p class="shopline1"></p>
					<a href="#" class="shoptext">SPORT</a>
					<p class="shopline1"></p>
					<a href="#" class="shoptext">STEAM WALLET</a>
					<p class="shopline1"></p>
					<a href="#" class="shoptext">STRATEGY</a>
					<p class="shopline1"></p>
					<a href="#" class="shoptext">UPLAY</a>
					<div style="padding-bottom: 20px"></div>
				</div>
				<div style="padding-bottom: 30px"></div>
				<div class="row">
					<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
						<div class="shopsearch">
							<b><p class="shoppad">FILTER BY PRICE</p></b>
							<p class="shopline"></p>
							<input type="range" multiple value="0,400"/>										
							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
								<button type="button" class="btn btn-primary" style="margin-top: 10px;border-radius: 1px;">FILTER</button>
							</div>
						</div>
					</div> 
				</div>
			</div>
			
			<div class="row hidden-sm hidden-xs">
				<div class="col-lg-2" ng-repeat="disp in display">
					<a href="#" data-toggle="tooltip" title="Add To Cart"><i class="fa fa-heart-o pull-right" aria-hidden="true"></i></a>
					<div class="shopitem">
						<div class="shopimage">
							<img src="resources/theme1/images/productImages/{{disp.productID}}.jpg" class="image-responsive" style="width: 126px;height: 166px">
						</div>
						<h5 class="homefeatline">{{disp.productName}}</h5>
                    	<h6 class="greycolor homefeattextpad">{{disp.category.categoryName}},{{disp.productSubCategory}}</h6>
						<h5 class="homefeattextpad homefeatcolor">Rs. {{disp.productSalePrice}}
                       		<strike class="homestrikecolor" style="font-size: 12px">Rs. {{disp.productOriginalPrice}}</strike>
                      	<a href="addToCartShop-{{disp.productID}}" data-toggle="tooltip" title="Add To Cart" ><i class="glyphicon homeglyph glyphicon-plus-sign"></i></a>
                    	</h5> 
					</div>
					<div style="margin-top:30px"></div>
				</div>	
			</div>

			<div class="row hidden-lg hidden-md hidden-xs">
				<div class="col-sm-2"></div>
				<div class="col-sm-3">
					<div class="shopitem">
						<div class="shopimage">
							<img src="bf1.jpg" class="image-responsive" style="width: 126px;height: 166px">
						</div>
						<h5 class="homefeatline">GHOST RECON WILDLANDS</h5>
                    	<h6 class="greycolor homefeattextpad">ACTION,STEAM</h6>
						<h5 class="homefeattextpad homefeatcolor">RS 1999
                       		<strike class="homestrikecolor" style="font-size: 12px">RS 1000</strike>
                      		<i class="glyphicon homeglyph glyphicon-plus-sign"></i>
                    	</h5> 
					</div>
				</div>
				<div class="col-sm-3">
					<div class="shopitem">
						<div class="shopimage">
							<img src="bf1.jpg" class="image-responsive" style="width: 126px;height: 166px">
						</div>
						<h5 class="homefeatline">GHOST RECON WILDLANDS</h5>
                    	<h6 class="greycolor homefeattextpad">ACTION,STEAM</h6>
						<h5 class="homefeattextpad homefeatcolor">RS 1999
                       		<strike class="homestrikecolor" style="font-size: 12px">RS 1000</strike>
                      		<i class="glyphicon homeglyph glyphicon-plus-sign"></i>
                    	</h5> 
					</div>
				</div>
			</div>
			
			<div class="row hidden-lg hidden-md hidden-sm">
				<div class="col-xs-3"></div>
				<div class="col-xs-4">
					<div class="shopitem">
						<div class="shopimage">
							<img src="bf1.jpg" class="image-responsive" style="width: 126px;height: 166px">
						</div>
						<h5 class="homefeatline">GHOST RECON WILDLANDS</h5>
                    	<h6 class="greycolor homefeattextpad">ACTION,STEAM</h6>
						<h5 class="homefeattextpad homefeatcolor">RS 1999
                       		<strike class="homestrikecolor" style="font-size: 12px">RS 1000</strike>
                      		<i class="glyphicon homeglyph glyphicon-plus-sign"></i>
                    	</h5> 
					</div>
				</div>
			</div>
			<div class="row">
				
			</div>
	</div>
</div>
<%@ include file="/WEB-INF/views/Footer.jsp"%>
</div>
 <script>
 var app = angular.module('myApp', []);
 app.controller('categoryCtrl', function($scope)
 {
   $scope.display=${displayProduct};
 });
 </script>
<script>
$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip();   
});
</script>



					