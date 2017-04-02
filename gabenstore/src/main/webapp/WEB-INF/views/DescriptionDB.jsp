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
			<form:input path="descriptionAbout"/>
		</div>
		
		<div class="col-lg-6" style="padding:20px;">
		Enter Description Minimum Requirement
		</div>
		<div class="col-lg-6" style="padding:20px;">	
			<form:input path="descriptionMinimum"/>
		</div>
		
		<div class="col-lg-6" style="padding:20px;">
		Enter Description Recommended Requirement
		</div>
		<div class="col-lg-6" style="padding:20px;">	
			<form:input path="descriptionRecommended"/>
		</div>
		
		<div class="col-lg-6" style="padding:20px;">
		Enter Description Key Features
		</div>
		<div class="col-lg-6" style="padding:20px;">	
			<form:input path="descriptionKey"/>
		</div>
		
		
		<div class="col-lg-4" style="padding:20px;">
			<input type="submit" value="Add">
		</div>
		</form:form>
	</div>	
</div>



<div class="table-responsive"> 
 <table class="table" >
  	<tr>
  		<th>Description ID</th>
  		<th>Product Name</th>
  		<th>Description DRM</th>
  		<th>Description Region</th>
  		<th>Description Type</th>
  		<th>Description About</th>
  		<th>Description System Minimum</th>
  		<th>Description System Recommended</th>
  		<th>Description Key</th>
  		<th>Description Edit</th>
  		<th>Description Delete</th>
  	</tr>
  	<c:forEach items="${displayDescription}" var="display">
	<tr>
		<td>${display.descriptionID}</td>
		<td>${display.product.productName}</td>
		<td>${display.descriptionDRM}</td>
		<td>${display.descriptionRegion}</td>
		<td>${display.descriptionType}</td>
		<td>${display.descriptionAbout}</td>
		<td>${display.descriptionMinimum}</td>
		<td>${display.descriptionRecommended}</td>
		<td>${display.descriptionKey}</td>
		<td><a href="updateDescription-${display.descriptionID}" class="btn btn-primary" role="button">EDIT</a></td>
		<td><a href="deleteDescription-${display.descriptionID}" class="btn btn-primary" role="button">DELETE</a></td>
	</tr>
	</c:forEach>
  </table>	 
</div>
</div>
<%@ include file="/WEB-INF/views/Footer.jsp"%>