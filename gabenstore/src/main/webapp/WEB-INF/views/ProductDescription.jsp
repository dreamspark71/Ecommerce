<%@ include file="/WEB-INF/views/Header.jsp"%>

<div class="productback" ng-app="myApp" ng-controller="descriptionCtrl">
	<div class="container">
		<div class="productcard">
			<div class="row">
				<div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
					<div class="productcard1">
						<div class="productfeat">
							<p class="productvertical-text-sale">FEATURED</p>
						</div>
						<div class="productcard3">
							<div class="productgaben">
								<p>gabenstore.com</p>
							</div>		
							<img class="img-responsive productimage" src="resources/theme1/images/productImages/{{display.product.productID}}.jpg" alt="{{display.product.productName}}"/>
						</div>
					</div>
				</div>
				<div class="col-lg-7 col-md-7 col-sm-12 col-xs-12" style="padding-top: 30px;">
					<div class="row">
						<div class="col-lg-2">
							<i class="fa fa-chevron-circle-left" aria-hidden="true" style="font-size:30px;color: #eeeeee;margin-right:20px;"></i>
							<i class="fa fa-chevron-circle-right" aria-hidden="true" style="font-size:30px;color: #eeeeee"></i>
						</div>
						<div class="col-lg-3 pull-right">
							<div ng-if="review.reviewRating">
        					<div star-rating rating="rev.reviewRating" read-only="true" max-rating="5" click="click2(param)" mouse-hover="mouseHover2(param)" mouse-leave="mouseLeave2(param)"></div>
        					</div>
						</div>
					</div>	
					<div class="productline" style="margin-top:20px;border-color:#eeeeee"></div>
					<h3>{{display.product.productName}}</h3>
					<h6>{{display.product.category.categoryName}},{{display.product.productSubCategory}}</h6>
					<div ng-if="display.descriptionAbout">
					<div class="producttext">
						{{display.descriptionAbout}}
					</div>
					</div>
					<div style="padding-bottom: 20px;"></div>
					<h1 class="productblue">Rs. {{display.product.productSalePrice}}</h1>
					<div style="padding-bottom: 2px;"></div>
					<strike><h4 style="color: grey">Rs. {{display.product.productOriginalPrice}}</h4></strike>
					<div style="padding-bottom: 20px;"></div>
					<div class="row">
						<div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
							<button type="button" class="btn btn-primary" style="border-radius: 1px">ADD TO CART</button>
						</div>
						<div class="row">
							<div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 ">
								<div class="input-group number-spinner">
									<span class="input-group-btn data-dwn">
										<button class="btn btn-default btn-primary productbuttontext1" data-dir="dwn">-</button>
									</span>
									<input type="text" class="form-control text-center productbuttontext" value="1" min="1" max="10">
									<span class="input-group-btn data-up">
										<button class="btn btn-default btn-primary productbuttontext1" data-dir="up">+</button>
									</span>
								</div>
							</div>
						</div>
					</div>	
					<div style="margin-bottom: 50px;"></div>
					<h5>Categories:{{display.product.category.categoryName}},{{display.product.productSubCategory}}</h5>
					<div class="row" style="font-size: 20px;">
						<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                			<a href="#" class="icoFacebook" title="Facebook"><i class="fa fa-facebook"></i></a>
                			<a href="#" class="icoTwitter" title="Twitter"><i class="fa fa-twitter"></i></a>         
                			<a href="#" class="icoGoogle" title="Google +"><i class="fa fa-google-plus"></i></a>
                		</div>
	 				</div>         
				</div>
			</div>
			<div class="productline">
			</div>
			<div class="container">
				<div class="row">
		            <div class="col-lg-11 col-md-11 col-sm-12 col-xs-12">
                        
                            <ul class="nav nav-tabs" role="tablist">
                                <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">DESCRIPTION</a></li>
                                <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">REVIEW</a></li>     
                            </ul>
                            <div class="tab-content">
                                <div role="tabpanel" class="tab-pane active" id="home" style="color: grey;">
                                	<div ng-if="display.descriptionAbout">
                                		{{display.descriptionAbout}}<br>                         
                                		<div style="padding-bottom: 20px;"></div>
									</div>
									<div style="padding-bottom: 20px;"></div>
						
									Purchase type: <b>{{display.descriptionType}}<br></b>
									DRM: <b>{{display.descriptionDRM}}<br></b>
									Region: <b>{{display.descriptionRegion}}<br></b>
									<div style="padding-bottom: 20px;"></div>
									
									<div ng-if="display.descriptionMinimum || display.descriptionRecommended ||display.descriptionMac || display.descriptionLinux ||display.descriptionWindows">
										<u><b>SYSTEM REQUIREMENTS</b></u><br>
										<div style="padding-bottom: 20px;"></div>
									</div>
									
									<div ng-if="display.descriptionMinimum">
										<b>Minimum Requirement</b><br>
										<pre class="propre">{{display.descriptionMinimum}}</pre>
										<div style="padding-bottom: 20px;"></div>
									</div>
									
									
									<div ng-if="display.descriptionRecommended">
										<b>Recommended Requirement</b><br>
										<pre class="propre">{{display.descriptionRecommended}}</pre>
										<div style="padding-bottom: 20px;"></div>
									</div>
									
									
									<div ng-if="display.descriptionWindows">
										<b>WINDOWS</b><br>
										<pre class="propre">{{display.descriptionWindows}}</pre>
										<div style="padding-bottom: 20px;"></div>
									</div>
									
									
									<div ng-if="display.descriptionMac">
										<b>MacOS</b><br>
										<pre class="propre">{{display.descriptionMac}}</pre>
										<div style="padding-bottom: 20px;"></div>
									</div>
									
									
									<div ng-if="display.descriptionLinux">
										<b>SteamOS + Linux</b><br>
										<pre class="propre">{{display.descriptionLinux}}</pre>
										<div style="padding-bottom: 20px;"></div>
									</div>
									
									
									<div ng-if="display.descriptionKey">
										<b>KEY FEATURES</b><br>
										<pre class="propre">{{display.descriptionKey}}</pre>
									</div>
                                </div>
                               	
                               	<div role="tabpanel" class="tab-pane" id="profile">
            						<div class="row" ng-repeat="rev in review">
            							<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
            								<img src="resources/theme1/images/images.png" class="image-responsive">
            							</div>
            							<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
            								<div class="row">
            									{{rev.reviewName}}
            								</div>
            								<div class="row">
            									{{rev.reviewReview}}	
            								</div>	
            							</div>
            							<div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
            								{{rev.reviewDate}}
            							</div>
            							<div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 lead">
            								<div star-rating rating="rev.reviewRating" read-only="true" max-rating="5" click="click2(param)" mouse-hover="mouseHover2(param)" mouse-leave="mouseLeave2(param)"></div>
										</div>
									</div>
            						
            						
            									
            						<div class="productline">
									</div>
									
									<h5>ADD A REVIEW</h5>
									<form:form modelAttribute="review" action="addReview">
									<form:input path="productID" type="hidden" value="{{display.product.productID}}"/>
									<div class="productcard2 col-lg-12 col-md-12 col-sm-12 col-xs-12" style="padding: 20px;"> 
										YOUR RATING
										<div star-rating rating="starRating1" read-only="false" max-rating="5" click="click1(param)" mouse-hover="mouseHover1(param)" mouse-leave="mouseLeave1(param)"></div>
							           	<form:input type="hidden" class="form-control productbox1" path="reviewRating" value="{{starRating1}}"  />
							        	<form:input path="reviewDate" type="hidden" value="${date}"/>
										<p class="">YOUR REVIEW</p>
      									 <form:textarea class="form-control productbox" rows="5" id="comment" path="reviewReview" />
      									<div style="padding-bottom: 20px;"></div>
      									<div class="row">
      										<div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
      											NAME*
      										</div>
      										<div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
      											<form:input type="text" class="form-control productbox1" id="text" placeholder="" path="reviewName"/>	
      										</div>
      									</div>
      									<div class="row">
      										<div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
      											EMAIL*
      										</div>
      										<div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
      											<form:input type="email" class="form-control productbox1" id="email" placeholder="" path="reviewEmail"/>	
      										</div>
      										<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
      											<button type="submit" class="btn btn-primary" style="border-radius: 1px">SUBMIT</button>
      										</div>
      									</div>
      									</form:form>
      								</div>	
                                </div>
                            </div>
                    	</div>
					</div>
				</div>
			</div>
		</div>
		<div style="padding-top: 20px;"></div>
		<b><h3>RELATED PRODUCTS</h3></b>
		<div style="padding-top: 20px;"></div>
		<div class="row">
			<div class="col-lg-4 col-md-4 col-sm-3 col-xs-12">
            	<div class="panel panel-default homefeatpan">
                  <div class="panel-body">
                  	<div class="row homefeatpanborder">
                  		 <img src="nier.jpg"  class="img-responsive homeimagesize" alt="Ghost" />
                  		 <div class="homefeat">
                        	<p class="homevertical-text-sale1">SALE</p>
                      	 </div>
                      	 <div class="homegaben">
                        	<p>gabenstore.com</p>
                      	 </div>
                    </div>
                    <h5 class="homefeatline">NIER AUTOMATA</h5>
                    <h6 class="greycolor homefeattextpad">ROLE,STEAM</h6>
                    <h5 class="homefeattextpad homefeatcolor">RS 799
                       <strike class="homestrikecolor" style="font-size: 12px">RS 1000</strike>
                      <i class="glyphicon homeglyph glyphicon-plus-sign"></i>
                    </h5> 
                  </div>                
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-3 col-xs-12">
            	<div class="panel panel-default homefeatpan">
                  <div class="panel-body">
                  	<div class="row homefeatpanborder">
                  		 <img src="nier.jpg"  class="img-responsive homeimagesize" alt="Ghost" />
                  		 <div class="homefeat">
                        	<p class="homevertical-text-sale1">SALE</p>
                      	 </div>
                      	 <div class="homegaben">
                        	<p>gabenstore.com</p>
                      	 </div>
                    </div>
                    <h5 class="homefeatline">NIER AUTOMATA</h5>
                    <h6 class="greycolor homefeattextpad">ROLE,STEAM</h6>
                    <h5 class="homefeattextpad homefeatcolor">RS 799
                       <strike class="homestrikecolor" style="font-size: 12px">RS 1000</strike>
                      <i class="glyphicon homeglyph glyphicon-plus-sign"></i>
                    </h5> 
                  </div>                
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-3 col-xs-12">
            	<div class="panel panel-default homefeatpan">
                  <div class="panel-body">
                  	<div class="row homefeatpanborder">
                  		 <img src="nier.jpg"  class="img-responsive homeimagesize" alt="Ghost" />
                  		 <div class="homefeat">
                        	<p class="homevertical-text-sale1">SALE</p>
                      	 </div>
                      	 <div class="homegaben">
                        	<p>gabenstore.com</p>
                      	 </div>
                    </div>
                    <h5 class="homefeatline">NIER AUTOMATA</h5>
                    <h6 class="greycolor homefeattextpad">ROLE,STEAM</h6>
                    <h5 class="homefeattextpad homefeatcolor">RS 799
                       <strike class="homestrikecolor" style="font-size: 12px">RS 1000</strike>
                      <i class="glyphicon homeglyph glyphicon-plus-sign"></i>
                    </h5> 
                  </div>                
                </div>
            </div>
		</div>
		<div style="padding-bottom: 50px;"></div>
		<div class="row"> 
		  	<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
		  		<div class="homepan">
		  		</div>
		  	</div>
		  	<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
		  		<div class="homepan">
		  		</div>
		  	</div>
		  	<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
		  		<div class="homepan">
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
app.controller('descriptionCtrl', function($scope)
{
  $scope.display=${description};
  $scope.review=${displayReview};
  $scope.starRating1 = 4;
  $scope.starRating2 =${displayReview};
  $scope.starRating3 = 2;
  $scope.hoverRating1 = $scope.hoverRating2 = $scope.hoverRating3 = 0;

  $scope.click1 = function (param) {
      console.log('Click(' + param + ')');
  };

  $scope.mouseHover1 = function (param) {
      console.log('mouseHover(' + param + ')');
      $scope.hoverRating1 = param;
  };

  $scope.mouseLeave1 = function (param) {
      console.log('mouseLeave(' + param + ')');
      $scope.hoverRating1 = param + '*';
  };

  $scope.click2 = function (param) {
      console.log('Click');
  };

  $scope.mouseHover2 = function (param) {
      console.log('mouseHover(' + param + ')');
      $scope.hoverRating1 = param;
  };

  $scope.mouseLeave2 = function (param) {
      console.log('mouseLeave(' + param + ')');
      $scope.hoverRating2 = param + '*';
  };

  $scope.click3 = function (param) {
      console.log('Click');
  };

  $scope.mouseHover3 = function (param) {
      console.log('mouseHover(' + param + ')');
      $scope.hoverRating3 = param;
  };

  $scope.mouseLeave3 = function (param) {
      console.log('mouseLeave(' + param + ')');
      $scope.hoverRating3 = param + '*';
  };
});

app.directive('starRating', function () {
    return {
        scope: {
            rating: '=',
            maxRating: '@',
            readOnly: '@',
            click: "&",
            mouseHover: "&",
            mouseLeave: "&"
        },
        restrict: 'EA',
        template:
            "<div style='display: inline-block; margin: 0px; padding: 0px; cursor:pointer;' ng-repeat='idx in maxRatings track by $index'> \
                    <img ng-src='{{((hoverValue + _rating) <= $index) && \"http://www.codeproject.com/script/ratings/images/star-empty-lg.png\" || \"http://www.codeproject.com/script/ratings/images/star-fill-lg.png\"}}' \
                    ng-Click='isolatedClick($index + 1)' \
                    ng-mouseenter='isolatedMouseHover($index + 1)' \
                    ng-mouseleave='isolatedMouseLeave($index + 1)'></img> \
            </div>",
        compile: function (element, attrs) {
            if (!attrs.maxRating || (Number(attrs.maxRating) <= 0)) {
                attrs.maxRating = '5';
            };
        },
        controller: function ($scope, $element, $attrs) {
            $scope.maxRatings = [];

            for (var i = 1; i <= $scope.maxRating; i++) {
                $scope.maxRatings.push({});
            };

            $scope._rating = $scope.rating;
			
			$scope.isolatedClick = function (param) {
				if ($scope.readOnly == 'true') return;

				$scope.rating = $scope._rating = param;
				$scope.hoverValue = 0;
				$scope.click({
					param: param
				});
			};

			$scope.isolatedMouseHover = function (param) {
				if ($scope.readOnly == 'true') return;

				$scope._rating = 0;
				$scope.hoverValue = param;
				$scope.mouseHover({
					param: param
				});
			};

			$scope.isolatedMouseLeave = function (param) {
				if ($scope.readOnly == 'true') return;

				$scope._rating = $scope.rating;
				$scope.hoverValue = 0;
				$scope.mouseLeave({
					param: param
				});
			};
        }
    };
});
</script>