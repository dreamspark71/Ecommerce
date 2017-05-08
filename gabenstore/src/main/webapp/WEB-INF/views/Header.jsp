<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"  isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/theme1/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/theme1/css/body.css">
<link rel="stylesheet" href="resources/theme1/css/font-awesome.min.css">  
<link rel="stylesheet" href="resources/theme1/css/multirange.css">
<script src="resources/theme1/js/jquery-3.1.1.min.js"> </script>
<script src="resources/theme1/js/angular.min.js"></script>
<script src="resources/theme1/js/bootstrap.min.js"> </script>
<script src="resources/theme1/js/multirange.js"></script>
<script src="resources/theme1/js/dirPagination.js"></script>

</head>
<body>
<div id="collapse1" class="collapse headcollapse">
    <div class="panel-body">
		<div class="container">
        <c:if test="${pageContext.request.userPrincipal.name==null}">
			<div class="col-lg-9">
				<span style="font-size:50px">You have No Items in Cart</span>
			</div>
			<div class="col-md-3 col-xs-3 col-lg-3 col-sm-3">
            	<a href="/gabenstore/viewCart"><button type="button" class="btn " style="margin-left: 150px;margin-top: 50px;border-radius: 1px;background-color: grey;color: white"><i class="fa fa-shopping-cart" aria-hidden="true"></i> VIEW CART</button></a>
            	<a href="/gabenstore/Checkout"><button type="button" class="btn btn-primary" style="margin-left: 150px;margin-top:10px;border-radius: 1px;color: white"><i class="fa fa-pencil" aria-hidden="true"></i> CHECKOUT</button></a>
          	</div>		
		</c:if>
		<c:if test="${pageContext.request.userPrincipal.name!=null}">
			<c:if test="${cartCount eq 0}">
				<div class="col-lg-9">
					<span style="font-size:50px">You have No Items in Cart</span>
				</div>
				<div class="col-md-3 col-xs-3 col-lg-3 col-sm-3">
            		<a href="/gabenstore/viewCart"><button type="button" class="btn " style="margin-left: 150px;margin-top: 50px;border-radius: 1px;background-color: grey;color: white"><i class="fa fa-shopping-cart" aria-hidden="true"></i> VIEW CART</button></a>
            		<a href="/gabenstore/Checkout"><button type="button" class="btn btn-primary" style="margin-left: 150px;margin-top:10px;border-radius: 1px;color: white"><i class="fa fa-pencil" aria-hidden="true"></i> CHECKOUT</button></a>
          		</div>		
			</c:if>
			<c:if test="${cartCount gt 0}">
        		<div class="row">
          			<div class="col-md-9 col-lg-9 col-sm-9 col-xs-9">
            			<div class="carousel slide multi-item-carousel5" id="theCarousel">
              				<div class="carousel-inner">
              					<c:forEach items="${panelCart}" var="display" varStatus="loopCount">
              						<c:if test="${loopCount.count eq 1}">
                						<div class="item active">
                					</c:if>
                					<c:if test="${loopCount.count ne 1}">
                						<div class="item">
                					</c:if>
                  					<div class="col-xs-4 col-lg-4 col-md-4 col-sm-4">
                    					<div style="border-style: solid;border-width: 2px;width: 220px;height: 130px;border-color: white;background-color: white">
                      						<div class="row">
                        						<div class="col-xs-6 col-lg-6 col-md-6 col-sm-6">
                          							<img src="resources/theme1/images/productImages/${display.productID}.jpg" style="height: 126px;width: 100px;margin-right:-2px">
                        						</div>
                        						<div class="col-xs-6 col-lg-6 col-md-6 col-sm-6">
                          							<p>${display.productName}</p>
                          							<p>Qt.${display.cartItemQuantity}</p>
                        						</div>
                      						</div>
                    					</div>
                  					</div>
                				</div>
                				</c:forEach>
              			</div>
              			<a class="left carousel-control" href="#theCarousel" data-slide="prev" style="margin-left: -80px;"><i class="glyphicon glyphicon-chevron-left"></i></a>
              			<a class="right carousel-control" href="#theCarousel" data-slide="next"><i class="glyphicon glyphicon-chevron-right"></i></a>
            		</div>
          		</div>   
          		<div class="col-md-3 col-xs-3 col-lg-3 col-sm-3">
            	<a href="/gabenstore/viewCart"><button type="button" class="btn " style="margin-left: 150px;margin-top: 50px;border-radius: 1px;background-color: grey;color: white"><i class="fa fa-shopping-cart" aria-hidden="true"></i> VIEW CART</button></a>
            		<a href="/gabenstore/Checkout"><button type="button" class="btn btn-primary" style="margin-left: 150px;margin-top:10px;border-radius: 1px;color: white"><i class="fa fa-pencil" aria-hidden="true"></i> CHECKOUT</button></a>
          		</div>
          </c:if>
        </c:if>
      </div>
    </div>    	
    </div>
</div>
<script>
//Instantiate the Bootstrap carousel
$('.multi-item-carousel5').carousel({
  interval: false
});

// for every slide in carousel, copy the next slide's item in the slide.
// Do the same for the next, next item.
$('.multi-item-carousel5 .item').each(function(){
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
<div class="container-fluid">
	<div class="row"> 
		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 headpadimage">
		<a href="/gabenstore/"><img class="img-responsive" src="resources/theme1/images/gaben.png" alt="Gabenstore"></a>
		</div>
		<div class="col-lg-3 col-md-2 col-sm-1 col-xs-0">
		</div>
		
		<div class="col-lg-3 col-md-3 col-sm-4 col-xs-5 headpadtext">
			<c:if test="${pageContext.request.userPrincipal.name==null}">
				<a href="Register" class="headtextstyle">MY ACCOUNT |</a>
			</c:if>
			<c:if test="${pageContext.request.userPrincipal.name!=null}">
					<sec:authorize access="hasRole('ROLE_ADMIN')">
						<span class="dropdown">
							<a href="#" class="dropdown-toggle headtextstyle" data-toggle="dropdown">
								${pageContext.request.userPrincipal.name} 
								
							</a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="CategoryDB">Category Management</a></li>
								<li><a href="ProductDB">Product Management</a></li>
								<li><a href="UserDB">User Management</a></li>
								<li><a href="DescriptionDB">Description Management</a></li>
								<li class="divider"></li>
								<li><a href="logout">Logout</a></li>
							</ul>
						</span>
					</sec:authorize>
					
					 <sec:authorize access="hasRole('ROLE_USER')">
						<span class="dropdown">
							<a href="#" class="dropdown-toggle headtextstyle" data-toggle="dropdown">
								${pageContext.request.userPrincipal.name} 
								
							</a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="/gabenstore/Account">Profile</a></li>
								<li><a href="logout">Logout</a></li>
							</ul>
						</span>
					</sec:authorize>
			 </c:if>
			
			<a href="/gabenstore/Checkout" class="headtextstyle">CHECKOUT |</a>
			<a href="/gabenstore/contact" class="headtextstyle">CONTACT US</a>
		</div>
		<div class="col-lg-2 col-md-3 col-sm-3 col-xs-3">
      		<a data-toggle="collapse" href="#collapse1" >
        		<img class="img-responsive headbook" src="resources/theme1/images/book1.jpg" alt="book1">
        		<c:if test="${pageContext.request.userPrincipal.name==null}">
        			<div style="position: absolute;margin-top: -80px;margin-left: 30px;color:white;font-size:20px">${cartCount}</div>
        		</c:if>
        		<c:if test="${pageContext.request.userPrincipal.name!=null}">
        			<div style="position: absolute;margin-top: -80px;margin-left: 30px;color:white;font-size:20px">${cartCount}</div>
        		</c:if>
      		</a>
		</div>
	</div>
</div>

<div class="container-fluid">
	<div class="row" style="padding-bottom: 50px;">
	</div>
</div>

<!-- Navbar -->
<div class="container-fluid">
	<div class="row">
		<nav class="navbar navbar-default nav col-lg-12 col-md-12 col-sm-12 col-xs-12" style="margin-bottom: 0px">
  		<div class="container-fluid">
    		<div class="navbar-header">
      		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        		<span class="icon-bar"></span>
        		<span class="icon-bar"></span>
        		<span class="icon-bar"></span>                        
      		</button>
      			<a class="navbar-brand" href="#"></a>
    		</div>
    		<div class="collapse navbar-collapse" id="myNavbar">
      			<ul class="nav navbar-nav">
        			<li class="active"><a href="#">Home</a></li>
        			<li class="dropdown">
          				<a class="dropdown-toggle" data-toggle="dropdown" href="#">CATEGORY<span class="caret"></span></a>
          				<ul class="dropdown-menu">
          					<li><a href="Shop">All</a></li>
          					<c:forEach items="${globalCategory}" var="category">
          					<c:if test="${category.categoryName != 'STEAM WALLET'}">
          					<c:if test="${category.categoryName != 'MICROSOFT'}">			
            					<li><a href="Shop?search=${category.categoryName}">${category.categoryName}</a></li>
            				</c:if>
            				</c:if>
            				</c:forEach>
          				</ul>
       				</li>
        			<li><a href="Shop?search=WALLET">STEAM</a></li>
        			<li><a href="Shop?search=MICROSOFT">MICROSOFT</a></li>
        			<!-- <li><a href="Request">REQUEST A GAME</a></li> -->
      			</ul>      
    		</div>
  		</div>
		</nav>
	</div>
</div>
