<%@ include file="/WEB-INF/views/Header.jsp"%>

<div class="container">
<div class="container-fluid">
	<div class="row">	
		<form:form action="addDescription" modelAttribute="description">
		<form:input path="descriptionID" type="hidden" />
		
		<div class="col-lg-6" style="padding:20px;">
		Enter Product Name
		</div>
		<div class="col-lg-6" style="padding:20px;">	
			<form:select class="form-control" path="productID" items="${displayProduct}" itemValue="productID" itemLabel="productName"/>
		</div>
		
		<div class="col-lg-6" style="padding:20px;">
		Enter Description DRM
		</div>
		<div class="col-lg-6 " style="padding:20px;">	
			<form:input path="descriptionDRM"/>
		</div>
		
		<div class="col-lg-6" style="padding:20px;">
		Enter Description Region
		</div>
		<div class="col-lg-6" style="padding:20px;">	
			<form:input path="descriptionRegion"/>
		</div>
		
		<div class="col-lg-6" style="padding:20px;">
		Enter Description Type
		</div>
		<div class="col-lg-6" style="padding:20px;">	
			<form:input path="descriptionType"/>
		</div>
		
		<div class="col-lg-6" style="padding:20px;">
		Enter Description About
		</div>
		<div class="col-lg-6" style="padding:20px;">	
			<form:input path="descriptionAbout" />
		</div>
		
		<div class="col-lg-6" style="padding:20px;">
		Enter Description Minimum Requirement
		</div>
		<div class="col-lg-6" style="padding:20px;">	
			<form:textarea path="descriptionMinimum"/>
		</div>
		
		<div class="col-lg-6" style="padding:20px;">
		Enter Description Recommended Requirement
		</div>
		<div class="col-lg-6" style="padding:20px;">	
			<form:textarea path="descriptionRecommended"/>
		</div>
		
		<div class="col-lg-6" style="padding:20px;">
		Enter Description Windows Requirement
		</div>
		<div class="col-lg-6" style="padding:20px;">	
			<form:textarea path="descriptionWindows" />
		</div>
		
		<div class="col-lg-6" style="padding:20px;">
		Enter Description Mac Requirement
		</div>
		<div class="col-lg-6" style="padding:20px;">	
			<form:textarea path="descriptionMac"/>
		</div>
		
		<div class="col-lg-6" style="padding:20px;">
		Enter Description Linux Requirement
		</div>
		<div class="col-lg-6" style="padding:20px;">	
			<form:textarea path="descriptionLinux"/>
		</div>
		
		<div class="col-lg-6" style="padding:20px;">
		Enter Description Key Features
		</div>
		<div class="col-lg-6" style="padding:20px;">	
			<form:textarea path="descriptionKey" />
		</div>
		
		
		<div class="col-lg-4" style="padding:20px;">
			<input type="submit" value="Add" class="btn btn-default btn-primary">
		</div>
		</form:form>
	</div>	
</div>


<div ng-app="myApp" ng-controller="categoryCtrl" class="table-responsive">
<table class="table"> 
	<tr>
	<th>Description ID</th>
  	<th>Product Name</th>
  	<th>Description DRM</th>
  	<th>Description Region</th>
  	<th>Description Type</th>
  	<th>Description About</th>
  	<th>Description System Minimum</th>
  	<th>Description System Recommended</th>
  	<th>Description System Windows</th>
  	<th>Description System Mac</th>
  	<th>Description System Linux</th>
  	<th>Description Key</th>
  	<th>Description Edit</th>
  	<th>Description Delete</th>
  	<th>View</th>
	</tr>
  <tr ng-repeat="disp in display">
    <td>{{disp.descriptionID}}</td>
	<td>{{disp.product.productName}}</td>
	<td>{{disp.descriptionDRM}}</td>
	<td>{{disp.descriptionRegion}}</td>
	<td>{{disp.descriptionType}}</td>
	<td>{{disp.descriptionAbout}}</td>
	<td>{{disp.descriptionMinimum}}</td>
	<td>{{disp.descriptionRecommended}}</td>
	<td>{{disp.descriptionWindows}}</td>
	<td>{{disp.descriptionMac}}</td>
	<td>{{disp.descriptionLinux}}</td>
	<td>{{disp.descriptionKey}}</td>
	<td><a href="updateDescription-{{disp.descriptionID}}" class="btn btn-primary" role="button">EDIT</a></td>
	<td><a href="deleteDescription-{{disp.descriptionID}}" class="btn btn-primary" role="button">DELETE</a></td>
	<td><a href="viewProduct-{{disp.productID}}" class="btn btn-primary" role="button">VIEW</a></td>
  </tr>
</table>
</div>
 <script>
var app = angular.module('myApp', []);
app.controller('categoryCtrl', function($scope)
{
  $scope.display=${displayDescription};
});
</script>
<%@ include file="/WEB-INF/views/Footer.jsp"%>