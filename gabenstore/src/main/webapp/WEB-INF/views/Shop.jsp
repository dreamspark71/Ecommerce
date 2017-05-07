<%@ include file="/WEB-INF/views/Header.jsp"%>

<div ng-app="myApp" ng-controller="MyCtrl" class="shopback">
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
			<div class="col-lg-3 col-md-3 hidden-xs hidden-sm">
				<div class="shopsearch">
					<b><p class="shoppad">SEARCH GAMES</p></b>
					<p class="shopline"></p>
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<input type="text" class="form-control" style="margin-top: 5px;border-radius: 1px;" placeholder="Search Products.." ng-model="searchtext">
					</div>
					<!-- <div class="col-lg-3 col-lg-3 col-xs-3 col-sm-3">
						<button type="button" class="btn btn-primary" style="margin-top: 10px;border-radius: 1px;">SEARCH</button>
					</div> -->
				</div>
				<div style="padding-bottom: 30px"></div>
				
				<div class="shopcategory">	
					<b><p class="shoppad">GAMES CATEGORIES</p></b>	
					<p class="shopline"></p>
					
					<a href="Shop" class="shoptext">All</a>
					<p class="shopline1"></p>
					
					<div ng-repeat="disp in display" >
					<a href="Shop?search={{disp.categoryName}}" class="shoptext">{{disp.categoryName}}</a>
					<p class="shopline1"></p>
					</div>
					
					<a href="Shop" class="shoptext">Uplay</a>
					<p class="shopline1"></p>
					
					<a href="Shop" class="shoptext">Origin</a>
					<p class="shopline1"></p>
					<div style="padding-bottom: 20px"></div>
				</div>
				<div style="padding-bottom: 30px"></div>
				<!-- <div class="row">
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
				</div> -->
			</div>

			<div class="row hidden-lg hidden-md">
			<div class="col-sm-6 col-xs-6">
				<div class="shopsearch1" style="width: 100%">
					<b><p class="shoppad">SEARCH GAMES</p></b>
					<p class="shopline"></p>
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<input type="text" class="form-control" style="margin-top: 5px;border-radius: 1px;" placeholder="Search Products.." ng-model="searchtext">
					</div>
					<!-- <div class="col-lg-3 col-lg-3 col-xs-3 col-sm-3">
						<button type="button" class="btn btn-primary" style="margin-top: 10px;border-radius: 1px;">SEARCH</button>
					</div> -->
				</div>
			</div>
			<div class="col-sm-6 col-xs-6">
				<div class="dropdown">
    				<button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown" style="border-radius: 1px">Filter
    				<span class="caret"></span></button>
    				<ul class="dropdown-menu">
    					<li><a href="Shop" style="text-decoration: none!important;color:black;">All</a></li>
    					<div ng-repeat="disp in display">
      					<li><a href="Shop?search={{disp.categoryName}}" style="text-decoration: none!important;color:black;">{{disp.categoryName}}</a></li>
      					</div>
    				</ul>
  				</div>
			</div> 
			</div>

			<div style="padding-bottom:30px;" class="hidden-lg hidden-md"></div>
			<div style="margin-top: 10px" class="hidden-lg hidden-md"></div>
	
			<div class="row">
			<div ng-repeat="disp in data | filter:searchtext | startFrom:currentPage*pageSize | limitTo:pageSize|filter:lel">
				<div ng-if="$index+1*pageSize*currentPage < ${count}">				
				<div class="col-lg-2 col-md-2 col-sm-3 col-xs-6">
					<div class="shopitem">
					<a data-toggle="tooltip" title="Wishlist" href="addWishShop-{{disp.productID}}" ><span class="fa fa-heart-o pull-right" aria-hidden="true" ></span></a>
						<div class="shopimage">
						<a href="viewProduct-{{disp.productID}}"><img src="resources/theme1/images/productImages/{{disp.productID}}.jpg" class="image-responsive" style="width: 126px;height: 166px" alt="{{disp.productName}}"></a>
						</div>
						<h5 class="homefeatline">{{disp.productName}}</h5>
                    	<h6 class="greycolor homefeattextpad">{{disp.category.categoryName}},{{disp.productSubCategory}}</h6>
						<h5 class="homefeattextpad homefeatcolor">Rs. {{disp.productSalePrice}}
                       		<strike class="homestrikecolor" style="font-size: 12px">Rs. {{disp.productOriginalPrice}}</strike>
                      		<a href="addToCartShop-{{disp.productID}}" data-toggle="tooltip" title="Add To Cart" class="pull-right"><i class="glyphicon homeglyph glyphicon-plus-sign"></i></a>
                    	</h5> 
					</div>
					<div style="padding-top:10px"></div>
				</div>
				</div>
			</div>
		</div>
		
			<div class="row">	
			<div class="col-lg-6"></div>
			<div class="col-lg-3">		
				<button ng-disabled="currentPage == 0" ng-click="currentPage=currentPage-1" class="btn btn-primary" style="border-radius: 1px;">
        			Previous
    			</button>
    			<span style="font-size:16px">{{currentPage+1}}/{{numberOfPages()}}</span>
    			<button ng-disabled="currentPage >= getData().length/pageSize/6 - 1" ng-click="currentPage=currentPage+1" class="btn btn-primary" style="border-radius: 1px;">
        			Next
    			</button> 								
			</div>
			</div>
	</div>
</div>
<div style="padding-top:30px"></div>
<!--3 panels-->
<div class="container">
  <div class="row"> 

    <div class="panel panel-default homepan5 col-sm-12 col-lg-12 col-md-12 col-xs-12" style="margin-right: 50px;">
      <div class="panel-body">
        <p class="homeline5"><b>FEATURED GAMES</b></p>
        <c:forEach items="${topFeatured}" var="disp" varStatus="loopCount">
        <div class="row">
          <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
            <div style="border-width: 2px;border-style: solid;width:70px;height: 100px;border-color: #2263a6">
              <a href="viewProduct-${disp.productID }"><img src="resources/theme1/images/productImages/${disp.productID}.jpg" class="image-responsive" style="width: 66px;height: 96px"></a>
            </div>
          </div>
          <div class="col-lg-8 col-md-4 col-sm-8 col-xs-8">
            <p style="margin-bottom: 2px;">${disp.productName}</p>
            <p style="margin-bottom: 0px;font-size: 12px;">${disp.category.categoryName},${disp.productSubCategory}</p>
            <p class="homefeatcolor">Rs. ${disp.productSalePrice} <strike class="homestrikecolor" style="font-size: 12px">Rs. ${disp.productOriginalPrice}</strike></p>
          </div>
        </div>
        <c:if test="${loopCount.count ne 3}">
        <div class="homeline5" style="margin-top: 3px;margin-bottom: 3px;"></div>
        </c:if>
        </c:forEach>
      </div>
    </div>
    
    <div class="panel panel-default homepan5 col-sm-12 col-lg-12 col-md-12 col-xs-12" style="margin-right: 50px;">
      <div class="panel-body ">
        <p class="homeline5"><b>TOP RATED GAMES</b></p>
        <c:forEach items="${ratedTop}" var="disp" varStatus="loopCount">
        <div class="row">
          <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
            <div style="border-width: 2px;border-style: solid;width:70px;height: 100px;border-color: #2263a6">
              <a href="viewProduct-${disp.productID }"><img src="resources/theme1/images/productImages/${disp.productID}.jpg" class="image-responsive" style="width: 66px;height: 96px"></a>
            </div>
          </div>
          <div class="col-lg-8 col-md-4 col-sm-8 col-xs-8">
            <p style="margin-bottom: 2px;">${disp.productName}</p>
            <p style="margin-bottom: 0px;font-size: 12px;">${disp.categoryName},${disp.productSubCategory}</p>
            <p class="homefeatcolor">Rs. ${disp.productSalePrice} <strike class="homestrikecolor" style="font-size: 12px">Rs. ${disp.productOriginalPrice}</strike></p>
          </div>
        </div>
        <c:if test="${loopCount.count ne 3}">
        <div class="homeline5" style="margin-top: 3px;margin-bottom: 3px;"></div>
        </c:if>
        </c:forEach>
      </div>
    </div>

    <div class="panel panel-default homepan5 col-sm-12 col-lg-12 col-md-12 col-xs-12">
      <div class="panel-body ">
        <p class="homeline5"><b>ON SALE </b></p>
        <c:forEach items="${topSale}" var="disp" varStatus="loopCount">
        <div class="row">
          <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
            <div style="border-width: 2px;border-style: solid;width:70px;height: 100px;border-color: #2263a6">
              <a href="viewProduct-${disp.productID }"><img src="resources/theme1/images/productImages/${disp.productID}.jpg" class="image-responsive" style="width: 66px;height: 96px"></a>
            </div>
          </div>
          <div class="col-lg-8 col-md-4 col-sm-8 col-xs-8">
            <p style="margin-bottom: 2px;">${disp.productName}</p>
            <p style="margin-bottom: 0px;font-size: 12px;">${disp.category.categoryName},${disp.productSubCategory}</p>
            <p class="homefeatcolor">Rs. ${disp.productSalePrice} <strike class="homestrikecolor" style="font-size: 12px">Rs. ${disp.productOriginalPrice}</strike></p>
          </div>
        </div>
        <c:if test="${loopCount.count ne 3}">
        <div class="homeline5" style="margin-top: 3px;margin-bottom: 3px;"></div>
        </c:if>
        </c:forEach>
      </div>
    </div>
  </div>
</div>
<%@ include file="/WEB-INF/views/Footer.jsp"%>
</div>
<script >
var app=angular.module('myApp', []);
app.controller('MyCtrl', ['$scope', '$filter', function ($scope, $filter,$location) {
 $scope.currentPage = 0;
 $scope.pageSize = 12;
 $scope.data = ${displayProduct};
 $scope.q = '';
 $scope.lel = location.search.substr(8).slice(0,3);
 $scope.display=${category};	
 $scope.getData = function () {
   // needed for the pagination calc
   // https://docs.angularjs.org/api/ng/filter/filter
   return $filter('filter')($scope.data, $scope.q)
  /* 
    // manual filter
    // if u used this, remove the filter from html, remove above line and replace data with getData()
    
     var arr = [];
     if($scope.q == '') {
         arr = $scope.data;
     } else {
         for(var ea in $scope.data) {
             if($scope.data[ea].indexOf($scope.q) > -1) {
                 arr.push( $scope.data[ea] );
             }
         }
     }
     return arr;
    */
 }
 
 $scope.numberOfPages=function(){
     return Math.ceil($scope.getData().length/$scope.pageSize/6);                
 }
 
 for (var i=0; i<65; i++) {
     $scope.data.push("Item "+i);
 }
}]);

//We already have a limitTo filter built-in to angular,
//let's make a startFrom filter
app.filter('startFrom', function() {
 return function(input, start) {
     start = +start; //parse to int
     return input.slice(start);
 }
});

</script>
<script>
$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip();   
});
</script>



					