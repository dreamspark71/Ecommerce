<%@ include file="/WEB-INF/views/Header.jsp"%>
  
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="resources/theme1/images/witcher3.jpg" alt="witcher3" >
    </div>

    <div class="item">
      <img src="resources/theme1/images/batman.jpg" alt="batman" >
    </div>
    
    <div class="item">
      <img src="resources/theme1/images/assassins3.jpg" alt="assassins3">
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

<div class="smokewhite">

<br><br>


<!--Text-->
<div class="text-center">
  <b style="font-size: 20px"> FEATURED GAMES </b>
  <br>
  <b class="greycolor"> OUR FEATURED GAMES </b>
</div>
  
<br><br>

<!--Featured Games-->
<div class="container">
  <div class="row">
    <div class="col-lg-12 col-md-12 col-xs-12 col-sm-12">
      <div class="carousel slide multi-item-carousel" id="featured" data-ride="carousel">
        <div class="carousel-inner">
          
          <div class="item active">
            <div class="col-xs-12 col-lg-4 col-md-4 col-sm-6">
                <div class="panel panel-default pan ">
                  <div class="panel-body">
                      <img src="resources/theme1/images/gr.jpg"  class="img-responsive imagesize1 bluecolor" alt="a" />
                      <div class="feat">
                        <p class="vertical-text">FEATURED</p>
                      </div>
                      <div class="gaben">
                        <p>gabenstore.com</p>
                      </div>
                    <h5>GHOST RECON WILDLANDS</h5>
                    <h6 class="greycolor line1">ACTION STEAM</h6>
                    <h5 class="price-text-color bluecolor">RS 900
                       <strike class="greycolor" style="font-size: 12px">RS 1000</strike>
                      <i class="glyphicon glyph glyphicon-plus-sign pull-right  greycolor"></i>
                    </h5>
                  </div>
                </div>
            </div>
          </div>
          
          
          <div class="item">
            <div class="col-xs-12 col-lg-4 col-md-4 col-sm-6">
                <div class="panel panel-default pan ">
                  <div class="panel-body ">
                    <div class="photo">
                      <img src="resources/theme1/images/bf1.jpg"  class="img-responsive imagesize1 bluecolor" alt="a" />
                      <div class="feat">
                        <p class="vertical-text">FEATURED</p>
                      </div>
                      <div class="gaben">
                        <p>gabenstore.com</p>
                      </div>
                    </div>
                    <h5>BATTLEFIELD 1</h5>
                    <h6 class="greycolor line1">FPS,ORIGIN</h6>
                    <h5 class="price-text-color bluecolor">RS 199.99 
                      <strike class="greycolor" style="font-size: 12px">RS 1000</strike>
                      <i class="glyphicon glyphicon-plus-sign glyph pull-right greycolor"></i>
                    </h5>
                  </div>
                </div>
            </div>
          </div> 

          <div class="item">
            <div class="col-xs-12 col-lg-4 col-md-4 col-sm-6">
                <div class="panel panel-default pan ">
                  <div class="panel-body ">
                    <div class="photo">
                      <img src="resources/theme1/images/overwatch.jpg"  class="img-responsive imagesize1 bluecolor" alt="a" />
                      <div class="feat">
                        <p class="vertical-text">FEATURED</p>
                      </div>
                      <div class="gaben">
                        <p>gabenstore.com</p>
                      </div>
                    </div>
                    <h5>OVERWATCH</h5>
                    <h6 class="greycolor line1">OTHER</h6>
                    <h5 class="price-text-color bluecolor">RS 799.99 
                      <strike class="greycolor" style="font-size: 12px">RS 1000</strike>
                      <i class="glyphicon glyphicon-plus-sign pull-right greycolor glyph"></i>
                    </h5>
                  </div>
                </div>
            </div>
          </div> 

          <div class="item">
            <div class="col-xs-12 col-lg-4 col-md-4 col-sm-6">
                <div class="panel panel-default pan ">
                  <div class="panel-body ">
                    <div class="photo">
                      <img src="resources/theme1/images/gta5.jpg"  class="img-responsive imagesize1 bluecolor" alt="a" />
                      <div class="feat">
                        <p class="vertical-text">FEATURED</p>
                      </div>
                      <div class="gaben">
                        <p>gabenstore.com</p>
                      </div>
                    </div>
                    <h5>GRAND THEFT AUTO V</h5>
                    <h6 class="greycolor line1">ADVENTURE,STEAM</h6>
                    <h5 class="price-text-color bluecolor">RS 1549.99 
                      <strike class="greycolor" style="font-size: 12px">RS 1000</strike>
                      <i class="glyphicon glyphicon-plus-sign pull-right greycolor glyph"></i>
                    </h5>
                  </div>
                </div>
            </div>
          </div> 
        </div>
        
        <div id="featured">
          <a class="" href="#featured" data-slide="prev">
          </a>
          <a class="" href="#featured" data-slide="next">
          </a>
        </div>
        
      </div>
    </div>
  </div>
</div>

<br><br>

<!-- Request a game-->
<div class="container req bluebackgroundcolor" style="height: 150px;" >
  <div class="req1 ">
    <p class="whitecolor req2"><b>REQUEST A GAME </b>
      <button type="button" class="btn btn-primary pull-right req4 ">REQUEST NOW</button>
    </p>
    <p class="bluetextcolor req3"> DIDN'T FIND WHAT YOUR ARE LOOKING FOR?STILL LOOKING?</p>
  </div>
</div>

<br><br>

<!--Text-->
<div class="text-center">
  <b style="font-size: 20px"> LATEST GAMES </b>
  <br>
  <b class="greycolor"> NEWLY RELEASED GAMES </b>
</div>

<br><br>

<!--Latest games-->
<div class="container">
  <div class="row">
    <div class="col-lg-12 col-md-12 col-xs-12 col-sm-12">
      <div class="carousel slide multi-item-carousel" id="theCarousel" data-ride="carousel">
        <div class="carousel-inner">
          
          <div class="item active">
            <div class="col-xs-12 col-lg-4 col-md-4 col-sm-6">
                <div class="panel panel-default pan ">
                  <div class="panel-body ">
                    <div class="photo">
                      <img src="resources/theme1/images/gr.jpg"  class="img-responsive imagesize1 bluecolor" alt="a" />
                      <div class="feat">
                        <p class="vertical-text">ON</p>
                        <p class="vertical-text-sale">SALE</p>
                      </div>
                      <div class="gaben">
                        <p>gabenstore.com</p>
                      </div>
                    </div>
                    <h5>GHOST RECON WILDLANDS</h5>
                    <h6 class="greycolor line1">ACTION,STEAM</h6>
                    <h5 class="price-text-color bluecolor">RS 999.99 
                      <strike class="greycolor" style="font-size: 12px">RS 1000</strike>
                      <i class="glyphicon glyphicon-plus-sign pull-right greycolor glyph"></i>
                    </h5>
                  </div>
                </div>
            </div>
          </div>
          
          
          <div class="item">
            <div class="col-xs-12 col-lg-4 col-md-4 col-sm-6">
                <div class="panel panel-default pan ">
                  <div class="panel-body">
                      <img src="resources/theme1/images/bf1.jpg"  class="img-responsive imagesize1 bluecolor" alt="BATTLEFIELD" />
                      <div class="feat">
                        <p class="vertical-text">ON</p>
                        <p class="vertical-text-sale">SALE</p>
                      </div>
                      <div class="gaben">
                        <p>gabenstore.com</p>
                      </div>
                    <h5>BATTLEFIELD 1</h5>
                    <h6 class="greycolor line1">FPS,ORIGIN</h6>
                    <h5 class="price-text-color bluecolor">RS 199.99 
                      <strike class="greycolor" style="font-size: 12px">RS 1000</strike>
                      <i class="glyphicon glyphicon-plus-sign pull-right greycolor glyph"></i>
                    </h5>
                  </div>
                </div>
            </div>
          </div> 

          
          <div class="item">
            <div class="col-xs-12 col-lg-4 col-md-4 col-sm-6">
                <div class="panel panel-default pan ">
                  <div class="panel-body ">
                    <div class="photo">
                      <img src="resources/theme1/images/gta5.jpg"  class="img-responsive imagesize1 bluecolor" alt="a" />
                      <div class="feat">
                        <p class="vertical-text">ON</p>
                        <p class="vertical-text-sale">SALE</p>
                      </div>
                      <div class="gaben">
                        <p>gabenstore.com</p>
                      </div>
                    </div>
                    <h5>GRAND THEFT AUTO V</h5>
                    <h6 class="greycolor line1">ADVENTURE,STEAM</h6>
                    <h5 class="price-text-color bluecolor">RS 1549.99 
                      <strike class="greycolor" style="font-size: 12px">RS 1000</strike>
                        <i class="glyphicon glyphicon-plus-sign pull-right greycolor glyph"></i>
                    </h5>
                  </div>
                </div>
            </div>
          </div> 
        </div>
        
         <div id="theCarousel">
          <a  class="" href="#theCarousel" data-slide="prev">
          </a>
          <a class="" href="#theCarousel" data-slide="next">
          </a>
        </div>
         
      </div>
    </div>
  </div>
</div>
<script type="text/javascript">
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
<br><br><br><br>

<!--3 panels-->
<div class="container">
  <div class="row"> 

    <div class="panel panel-default pan col-sm-12 col-lg-12 col-md-12 col-xs-12" style="margin-right: 50px;">
      <div class="panel-body">
        <p class="line1 "><b>FEATURED GAMES</b></p>
      </div>
    </div>
    
    <div class="panel panel-default pan col-sm-12 col-lg-12 col-md-12 col-xs-12" style="margin-right: 50px;">
      <div class="panel-body ">
        <p class="line1 "><b>TOP RATED GAMES</b></p>
      </div>
    </div>

    <div class="panel panel-default pan col-sm-12 col-lg-12 col-md-12 col-xs-12">
      <div class="panel-body ">
        <p class="line1 "><b>ON SALE </b></p>
      </div>
    </div>
  </div>
</div>

<br><br><br><br><br>

<%@ include file="/WEB-INF/views/Footer.jsp"%>
</div>