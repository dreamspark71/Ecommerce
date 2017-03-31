<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"  isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/theme1/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/theme1/css/body.css">
<script src="resources/theme1/js/jquery-3.1.1.min.js"> </script>
<script src="resources/theme1/js/bootstrap.min.js"> </script>
</head>
<body>
<div id="collapse1" class="panel-collapse headcollapse">
    <div class="panel-body">
    </div>
</div>
<div class="container-fluid">
	<div class="row"> 
		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 headpadimage">
			<img class="img-responsive" src="resources/theme1/images/gaben.png" alt="Gabenstore">
		</div>
		<div class="col-lg-3 col-md-2 col-sm-1 col-xs-0">
		</div>
		<div class="col-lg-3 col-md-3 col-sm-4 col-xs-5 headpadtext">
			<a href="#" class="headtextstyle">MY ACCOUNT |</a>
			<a href="#" class="headtextstyle">CHECKOUT |</a>
			<a href="#" class="headtextstyle">CONTACT US</a>
		</div>
		<div class="col-lg-2 col-md-3 col-sm-3 col-xs-3">
      		<a data-toggle="collapse" href="#collapse1" >
        		<img class="img-responsive headbook" src="resources/theme1/images/book1.jpg" alt="book1">
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
            				<li><a href="#">ACTION</a></li>
            				<li><a href="#">ADVENTURE</a></li>
            				<li><a href="#">RPS</a></li>
            				<li><a href="#">SIMULATION</a></li>
            				<li><a href="#">SPORTS</a></li>
            				<li><a href="#">FPS</a></li>
          				</ul>
       				</li>
        			<li><a href="#">STEAM</a></li>
        			<li><a href="#">MICROSOFT</a></li>
        			<li><a href="#">REQUEST A GAME</a></li>
      			</ul>      
    		</div>
  		</div>
		</nav>
	</div>
</div>