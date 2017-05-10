<%@ include file="/WEB-INF/views/Header.jsp"%>

<div ng-app="myApp" ng-controller="categoryCtrl" class="shopback">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="shopcard">
					<p style="font-size: 30px">SHOP</p>
				</div>
				<div style="padding-bottom: 30px;"></div>
				 <select ng-model="order" >
            		<option value="productID" ng-selected="!order">Recently Added</option>
            		<option value="productSalePrice">Price (low to high)</option>
            		<option value="-productSalePrice">Price (high to low)</option>
            		<option value="productName">Name A-Z</option>
            		<option value="-productName">Name Z-A</option>
        		</select>
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
					
					<div ng-repeat="disp in dispcategory" >
					<a href="Shop-{{disp.categoryID}}" class="shoptext">{{disp.categoryName}}</a>
					<p class="shopline1"></p>
					</div>
					
					<a href="ShopSub-UPLAY" class="shoptext">UPLAY</a>
					<p class="shopline1"></p>
					
					<a href="ShopSub-ORIGIN" class="shoptext">ORIGIN</a>
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
      					<li><a href="Shop-{{disp.categoryID}}" style="text-decoration: none!important;color:black;">{{disp.categoryName}}</a></li>
      					</div>
    				</ul>
  				</div>
			</div> 
			</div>

			<div style="padding-bottom:30px;" class="hidden-lg hidden-md"></div>
			<div style="margin-top: 10px" class="hidden-lg hidden-md"></div>
	
			<div class="row">
				<div class="col-lg-2 col-md-2 col-sm-3 col-xs-6" dir-paginate="disp in display | filter:searchtext | itemsPerPage: 12|orderBy:order" current-page="currentPage">					
					<div class="shopitem">
					<a data-toggle="tooltip" title="Wishlist" href="addWishShop-{{disp.productID}}" ><span class="fa fa-heart-o pull-right" aria-hidden="true" ></span></a>
						<div class="shopimage">
						<a href="viewProduct-{{disp.productID}}"><img src="resources/theme1/images/productImages/{{disp.productID}}.jpg" class="image-responsive" style="width: 126px;height: 166px" alt="{{disp.productName}}"></a>
						</div>
						<h5 class="homefeatline">{{disp.productName}}</h5>
                    	<h6 class="greycolor homefeattextpad">{{disp.category.categoryName}},{{disp.productSubCategory}}</h6>
						<h5 class="homefeattextpad homefeatcolor">Rs. {{disp.productSalePrice}}
                       		<strike class="homestrikecolor" style="font-size: 12px">Rs. {{disp.productOriginalPrice}}</strike>
                       		<div ng-if="disp.productQuantity > 0">
                      		<a href="addToCartShop-{{disp.productID}}" data-toggle="tooltip" title="Add To Cart" class="pull-right"><i class="glyphicon homeglyph glyphicon-plus-sign"></i></a>
                      		</div>
                      		<div ng-if="disp.productQuantity ==0">
                      		<p data-toggle="tooltip" title="No Stock" class="pull-right"><i class="fa fa-ban homeglyph"></i></p>
                      		</div>
                    	</h5> 
					</div>
					<div style="padding-top:10px"></div>
				</div>
				
			<!-- </div> -->
			
		</div>
		
			<div class="row">	
			<div class="col-lg-6"></div>
			<dir-pagination-controls boundary-links="true" on-page-change="pageChangeHandler(newPageNumber)" template-url="resources/theme1/js/dirPagination.tpl.html"></dir-pagination-controls>
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
              <a href="viewProduct-${disp.productID }"><img src="resources/theme1/images/productImages/${disp.productID}.jpg" class="image-responsive" style="width: 66px;height: 96px"></a>
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
{{search}}
<%@ include file="/WEB-INF/views/Footer.jsp"%>
</div>
<script>
var app = angular.module('myApp', ['angularUtils.directives.dirPagination']);
app.controller('categoryCtrl', function($scope)
{
  $scope.display=${displayProduct};
  $scope.dispcategory=${category};
  $scope.currentPage = 1;
});
</script>
<script>
$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip();   
});
</script>



					