<%@ include file="/WEB-INF/views/Header.jsp"%>
<!-- Carousel -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="resources/theme1/images/witcher3.jpg" alt="witcher3" class="img-responsive">
    </div>

    <div class="item">
      <img src="resources/theme1/images/batman.jpg" alt="batman" class="img-responsive">
    </div>
    
    <div class="item">
      <img src="resources/theme1/images/assassins3.jpg" alt="assassins3" class="img-responsive">
    </div>
  </div>

  <a class="left carousel-control" href="#myCarousel"  data-slide="prev">
    <span aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel"  data-slide="next">
    <span  aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

<div style="background-color: #eeeeee">
<div class="container-fluid">
	<div class="row" style="padding-bottom: 50px;">
	</div>
</div>

<!-- Text Box -->
<div class="container-fluid">
	<div class="row">
		<div class="text-center col-lg-12 col-md-12 col-sm-12 col-xs-12">
  			<b style="font-size: 20px"> FEATURED GAMES </b>
  		</div>
  		<div class="text-center col-lg-12 col-md-12 col-sm-12 col-xs-12">
  			<b class="greycolor" style="color: grey;font-size: 12px"> OUR FEATURED GAMES </b>
		</div>
	</div>
</div>

<div class="container-fluid">
	<div class="row" style="padding-bottom: 50px;">
	</div>
</div>


<!-- Featured Games  Visible in lg and md-->
<div class="container hidden-sm hidden-xs">
  <div class="row">
    <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
      <div class="carousel slide multi-item-carousel" id="theCarousel">
        <div class="carousel-inner">

				
			  	<c:forEach items="${featured}" var="display" varStatus="loopCount">
			  	 <c:if test="${loopCount.count eq 1}">
          			<div class="item active">
          		</c:if>  
          		<c:if test="${loopCount.count ne 1}">
          			<div class="item">
          		</c:if>	        		                    
            		<div class="col-lg-4 col-md-4 col-sm-3 col-xs-12">
            			<div class="panel panel-default homefeatpan">
            			<a href="addWishHome-${display.productID}" data-toggle="tooltip" title="Wishlist"><span class="fa fa-heart-o pull-right" aria-hidden="true" ></span></a>
                  			<div class="panel-body">
                  				<div class="row homefeatpanborder">
	                  		 		<a href="/gabenstore/viewProduct-${display.productID}"><img src="resources/theme1/images/productImages/${display.productID}.jpg"  class="img-responsive homeimagesize" alt="${display.productName}" /></a>
	                  		 		<div class="homefeat">
	                        			<p class="homevertical-text-sale">${display.productTag}</p>
	                      	 		</div>
	                      	 		<!-- <div class="homegaben">
	                        			<p>gabenstore.com</p>
	                      	 		</div> -->
                    			</div>
                    			<h5 class="homefeatline">${display.productName}</h5>
                    			<h6 class="greycolor homefeattextpad"><a href="Shop-${display.category.categoryID}" style="text-decoration: none!important;color: black">${display.category.categoryName}</a>,<a href="Shop?search=${display.productSubCategory}" style="text-decoration: none!important;color: black">${display.productSubCategory}</a></h6>
                    			<h5 class="homefeattextpad homefeatcolor">RS. ${display.productSalePrice}
                       				<strike class="homestrikecolor" style="font-size: 12px">RS. ${display.productOriginalPrice}</strike>
                      				<a href="addToCartHome-${display.productID}" data-toggle="tooltip" title="Add To Cart"><i class="glyphicon homeglyph glyphicon-plus-sign"></i></a>
                    			</h5> 
                  			</div>                
                		</div>
            		</div>
          		</div>
			 </c:forEach>			   
		
        </div>
        <span class="" href="#theCarousel" data-slide="prev"></span>
        <span class="" href="#theCarousel" data-slide="next"></span>
      </div>
    </div>
  </div>
</div>
       
<!-- Featured games visible to sm -->
<div class="container hidden-xs hidden-lg hidden-md">
  <div class="row">
    <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
      <div class="carousel slide multi-item-carousel1" id="theCarousel">
        <div class="carousel-inner">
          
          	<c:forEach items="${featured}" var="display" varStatus="loopCount">
			  	 <c:if test="${loopCount.count eq 1}">
          			<div class="item active">
          		</c:if>  
          		<c:if test="${loopCount.count ne 1}">
          			<div class="item">
          		</c:if>	        		                    
            		<div class="col-sm-6">
            			<div class="panel panel-default homefeatpan">
            			<a href="addWishHome-${display.productID}" data-toggle="tooltip" title="Wishlist"><span class="fa fa-heart-o pull-right" aria-hidden="true" ></span></a>
                  			<div class="panel-body">
                  				<div class="row homefeatpanborder">
	                  		 	<a href="/gabenstore/viewProduct-${display.productID}"><img src="resources/theme1/images/productImages/${display.productID}.jpg"  class="img-responsive homeimagesize" alt="${display.productName}" /></a>
	                  		 		<div class="homefeat">
	                        			<p class="homevertical-text-sale">${display.productTag}</p>
	                      	 		</div>
	                      	 		<!-- <div class="homegaben">
	                        			<p>gabenstore.com</p>
	                      	 		</div> -->
                    			</div>
                    			<h5 class="homefeatline">${display.productName}</h5>
                    			<h6 class="greycolor homefeattextpad"><a href="Shop?search=${display.category.categoryName}" style="text-decoration: none!important;color: black">${display.category.categoryName}</a>,<a href="Shop?search=${display.productSubCategory}" style="text-decoration: none!important;color: black">${display.productSubCategory}</a></h6>
                    			<h5 class="homefeattextpad homefeatcolor">RS. ${display.productSalePrice}
                       				<strike class="homestrikecolor" style="font-size: 12px">RS. ${display.productOriginalPrice}</strike>
                      				<a href="addToCartHome-${display.productID}" data-toggle="tooltip" title="Add To Cart"><i class="glyphicon homeglyph glyphicon-plus-sign"></i></a>
                    			</h5> 
                  			</div>                
                		</div>
            		</div>
          		</div>
			 </c:forEach>
			         
        </div>
        <a class="" href="#theCarousel" data-slide="prev"></a>
        <a class="" href="#theCarousel" data-slide="next"></a>
      </div>
    </div>
  </div>
</div>

<!-- Featured games visible to xs -->
<div class="container hidden-lg hidden-md hidden-sm" style="margin-left: 50px;">
    <div class="row">
        <div class="row">      
          <div class="controls pull-right hidden-xs">
            <a class="" href="#carousel-example" data-slide="prev"></a>
            <a class="" href="#carousel-example" data-slide="next"></a>
          </div>
        </div>
        <div id="carousel-example" class="carousel slide" data-ride="carousel">        
            <div class="carousel-inner">
                
                <c:forEach items="${featured}" var="display" varStatus="loopCount">
			  	 <c:if test="${loopCount.count eq 1}">
          			<div class="item active">
          		</c:if>  
          		<c:if test="${loopCount.count ne 1}">
          			<div class="item">
          		</c:if>	        		                    
            		<div class="col-lg-4 col-md-4 col-sm-3 col-xs-12">
            			<div class="panel panel-default homefeatpan">
            			<a href="addWishHome-${display.productID}" data-toggle="tooltip" title="Wishlist"><span class="fa fa-heart-o pull-right" aria-hidden="true" ></span></a>
                  			<div class="panel-body">
                  				<div class="row homefeatpanborder">
	                  		 	<a href="/gabenstore/viewProduct-${display.productID}"><img src="resources/theme1/images/productImages/${display.productID}.jpg"  class="img-responsive homeimagesize" alt="${display.productName}" /></a>
	                  		 		<div class="homefeat">
	                        			<p class="homevertical-text-sale">${display.productTag}</p>
	                      	 		</div>
	                      	 		<!-- <div class="homegaben">
	                        			<p>gabenstore.com</p>
	                      	 		</div> -->
                    			</div>
                    			<h5 class="homefeatline">${display.productName}</h5>
                    			<h6 class="greycolor homefeattextpad"><a href="Shop?search=${display.category.categoryName}" style="text-decoration: none!important;color: black">${display.category.categoryName}</a>,<a href="Shop?search=${display.productSubCategory}" style="text-decoration: none!important;color: black">${display.productSubCategory}</a></h6>
                    			<h5 class="homefeattextpad homefeatcolor">RS. ${display.productSalePrice}
                       				<strike class="homestrikecolor" style="font-size: 12px">RS. ${display.productOriginalPrice}</strike>
                      				<a href="addToCartHome-${display.productID}" data-toggle="tooltip" title="Add To Cart"><i class="glyphicon homeglyph glyphicon-plus-sign"></i></a>
                    			</h5> 
                  			</div>                
                		</div>
            		</div>
          		</div>
			 </c:forEach>
             
            </div>
        </div>
    </div>
</div>

 
<div class="container-fluid">
	<div class="row" style="padding-bottom: 50px;">
	</div>
</div>

<!--Request a game  -->
<div class="container homereq homebluebackgroundcolor" style="height: 150px;" >
  <div class="homereq1 ">
    <p class="homereq2" style="color:white"><b>REQUEST A GAME </b>
      <button type="button" class="btn btn-primary pull-right homereq4 ">REQUEST NOW</button>
    </p>
    <p class="homereq3" style="color:white"> DIDN'T FIND WHAT YOUR ARE LOOKING FOR?STILL LOOKING?</p>
  </div>
</div>

<div class="container-fluid">
	<div class="row" style="padding-bottom: 50px;">
	</div>
</div>

<!-- Text -->
<div class="container-fluid">
	<div class="row">
		<div class="text-center col-lg-12 col-md-12 col-sm-12 col-xs-12">
  			<b style="font-size: 20px">LATEST GAMES</b>
  		</div>
  		<div class="text-center col-lg-12 col-md-12 col-sm-12 col-xs-12">
  			<b class="greycolor" style="color: grey;font-size: 12px"> NEWLY RELEASED GAMES </b>
		</div>
	</div>
</div>

<div class="container-fluid">
	<div class="row" style="padding-bottom: 50px;">
	</div>
</div>

<!-- Latest Games Visible in lg and md-->
<div class="container hidden-sm hidden-xs">
  <div class="row">
    <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
      <div class="carousel slide multi-item-carousel" id="theCarousel">
        <div class="carousel-inner">
          
          <c:forEach items="${latest}" var="display" varStatus="loopCount">
			  	 <c:if test="${loopCount.count eq 1}">
          			<div class="item active">
          		</c:if>  
          		<c:if test="${loopCount.count ne 1}">
          			<div class="item">
          		</c:if>	        		                    
            		<div class="col-lg-4 col-md-4 col-sm-3 col-xs-12">
            			<div class="panel panel-default homefeatpan">
            			<a href="addWishHome-${display.productID}" data-toggle="tooltip" title="Wishlist"><span class="fa fa-heart-o pull-right" aria-hidden="true" ></span></a>
                  			<div class="panel-body">
                  				<div class="row homefeatpanborder">
	                  		 	<a href="/gabenstore/viewProduct-${display.productID}"><img src="resources/theme1/images/productImages/${display.productID}.jpg"  class="img-responsive homeimagesize" alt="${display.productName}" /></a>
	                  		 		<div class="homefeat">
                        				<p class="homevertical-text-sale" style="margin-top:50px">${display.productTag}</p>
                      	 			</div>
	                      	 		<!-- <div class="homegaben">
	                        			<p>gabenstore.com</p>
	                      	 		</div> -->
                    			</div>
                    			<h5 class="homefeatline">${display.productName}</h5>
                    			<h6 class="greycolor homefeattextpad"><a href="Shop-${display.category.categoryID}" style="text-decoration: none!important;color: black">${display.category.categoryName}</a>,<a href="ShopSub-${display.productSubCategory}" style="text-decoration: none!important;color: black">${display.productSubCategory}</a></h6>
                    			<h5 class="homefeattextpad homefeatcolor">RS. ${display.productSalePrice}
                       				<strike class="homestrikecolor" style="font-size: 12px">RS. ${display.productOriginalPrice}</strike>
                      				<a href="addToCartHome-${display.productID}" data-toggle="tooltip" title="Add To Cart"><i class="glyphicon homeglyph glyphicon-plus-sign"></i></a>
                    			</h5> 
                  			</div>                
                		</div>
            		</div>
          		</div>
			 </c:forEach>
			                     
        </div>
        <a class="" href="#theCarousel" data-slide="prev"></a>
        <a class="" href="#theCarousel" data-slide="next"></a>
      </div>
    </div>
  </div>
</div>

<!-- Latest for sm -->
<div class="container hidden-xs hidden-lg hidden-md">
  <div class="row">
    <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
      <div class="carousel slide multi-item-carousel1" id="theCarousel">
        <div class="carousel-inner">
          
          <c:forEach items="${latest}" var="display" varStatus="loopCount">
			  	 <c:if test="${loopCount.count eq 1}">
          			<div class="item active">
          		</c:if>  
          		<c:if test="${loopCount.count ne 1}">
          			<div class="item">
          		</c:if>	        		                    
            		<div class="col-sm-6 col-xs-12">
            			<div class="panel panel-default homefeatpan">
            			<a href="addWishHome-${display.productID}" data-toggle="tooltip" title="Wishlist"><span class="fa fa-heart-o pull-right" aria-hidden="true" ></span></a>
                  			<div class="panel-body">
                  				<div class="row homefeatpanborder">
	                  		 	<a href="/gabenstore/viewProduct-${display.productID}"><img src="resources/theme1/images/productImages/${display.productID}.jpg"  class="img-responsive homeimagesize" alt="${display.productName}" /></a>
	                  		 		<div class="homefeat">
                        				<p class="homevertical-text-sale">${display.productTag}</p>
                      	 			</div>
	                      	 		<!-- <div class="homegaben">
	                        			<p>gabenstore.com</p>
	                      	 		</div> -->
                    			</div>
                    			<h5 class="homefeatline">${display.productName}</h5>
                    			<h6 class="greycolor homefeattextpad"><a href="Shop?search=${display.category.categoryName}" style="text-decoration: none!important;color: black">${display.category.categoryName}</a>,<a href="Shop?search=${display.productSubCategory}" style="text-decoration: none!important;color: black">${display.productSubCategory}</a></h6>
                    			<h5 class="homefeattextpad homefeatcolor">RS. ${display.productSalePrice}
                       				<strike class="homestrikecolor" style="font-size: 12px">RS. ${display.productOriginalPrice}</strike>
                      				<a href="addToCartHome-${display.productID}" data-toggle="tooltip" title="Add To Cart"><i class="glyphicon homeglyph glyphicon-plus-sign"></i></a>
                    			</h5> 
                  			</div>                
                		</div>
            		</div>
          		</div>
			 </c:forEach>

        </div>
        <a class="" href="#theCarousel" data-slide="prev"></a>
        <a class="" href="#theCarousel" data-slide="next"></a>
      </div>
    </div>
  </div>
</div>

<!-- Latest Game visible xs -->
<div class="container hidden-lg hidden-md hidden-sm" style="margin-left: 50px;">
    <div class="row">
        <div class="row">      
          <div class="controls pull-right hidden-xs">
            <a class="" href="#carousel-example" data-slide="prev"></a>
            <a class="" href="#carousel-example" data-slide="next"></a>
          </div>
        </div>
        <div id="carousel-example" class="carousel slide" data-ride="carousel">        
            <div class="carousel-inner">
				<c:forEach items="${latest}" var="display" varStatus="loopCount">
			  	 <c:if test="${loopCount.count eq 1}">
          			<div class="item active">
          		</c:if>  
          		<c:if test="${loopCount.count ne 1}">
          			<div class="item">
          		</c:if>	        		                    
            		<div class="col-sm-6 col-xs-12">
            			<div class="panel panel-default homefeatpan">
            			<a href="addWishHome-${display.productID}" data-toggle="tooltip" title="Wishlist"><span class="fa fa-heart-o pull-right" aria-hidden="true" ></span></a>
                  			<div class="panel-body">
                  				<div class="row homefeatpanborder">
	                  		 	<a href="/gabenstore/viewProduct-${display.productID}"><img src="resources/theme1/images/productImages/${display.productID}.jpg"  class="img-responsive homeimagesize" alt="${display.productName}" /></a>
	                  		 		<div class="homefeat">
                        				<p class="homevertical-text-sale">${display.productTag}</p>
                      	 			</div>
	                      	 		<!-- <div class="homegaben">
	                        			<p>gabenstore.com</p>
	                      	 		</div> -->
                    			</div>
                    			<h5 class="homefeatline">${display.productName}</h5>
                    			<h6 class="greycolor homefeattextpad"><a href="Shop?search=${display.category.categoryName}" style="text-decoration: none!important;color: black">${display.category.categoryName}</a>,<a href="Shop?search=${display.productSubCategory}" style="text-decoration: none!important;color: black">${display.productSubCategory}</a></h6>
                    			<h5 class="homefeattextpad homefeatcolor">RS. ${display.productSalePrice}
                       				<strike class="homestrikecolor" style="font-size: 12px">RS. ${display.productOriginalPrice}</strike>
                      				<a href="addToCartHome-${display.productID}" data-toggle="tooltip" title="Add To Cart"><i class="glyphicon homeglyph glyphicon-plus-sign"></i></a>
                    			</h5> 
                  			</div>                
                		</div>
            		</div>
          		</div>
			 </c:forEach>
            </div>
        </div>
    </div>
</div>

<script>
// Instantiate the Bootstrap carousel
$('.multi-item-carousel').carousel({
  interval: 4000
});
// for every slide in carousel, copy the next slide's item in the slide.
// Do the same for the next, next item.
$('.multi-item-carousel .item').each(function(){
  var next = $(this).next();
  if (!next.length) {
    next = $(this).siblings(':first');
  }
  next.children(':first-child').clone().appendTo($(this));
  
  if (next.next().length>0) {
    next.next().children(':first-child').clone().appendTo($(this));
  } else {
    $(this).siblings(':first').children(':first-child').clone().appendTo($(this));
  }
});
</script>

<script>
//Instantiate the Bootstrap carousel
$('.multi-item-carousel1').carousel({
  interval: 4000
});
// for every slide in carousel, copy the next slide's item in the slide.
// Do the same for the next, next item.
$('.multi-item-carousel1 .item').each(function(){
  var next = $(this).next();
  if (!next.length) {
    next = $(this).siblings(':first');
  }
  next.children(':first-child').clone().appendTo($(this));
  
  
});
</script>

<script>
$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip();   
});
</script>



<div class="container-fluid">
	<div class="row" style="padding-bottom: 50px;">
	</div>
</div>

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
