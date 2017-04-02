<%@ include file="/WEB-INF/views/Header.jsp"%>

<div class="container">
<div class="container-fluid">
	<div class="row">	
		<form:form action="addProduct" modelAttribute="product">
		<form:input path="productID" type="hidden" />
		
		<div class="col-lg-6" style="padding:20px;">
		Enter Product Name
		</div>
		<div class="col-lg-6 " style="padding:20px;">	
			<form:input path="productName"/>
		</div>
		
		<div class="col-lg-6" style="padding:20px;">
		Enter Product Category
		</div>
		<div class="col-lg-6" style="padding:20px;">	
			<form:select class="form-control" path="categoryID" items="${displayCategory}" itemValue="categoryID" itemLabel="categoryName"/>
		</div>
		
		<div class="col-lg-6" style="padding:20px;">
		Enter Product SubCategory
		</div>
		<div class="col-lg-6" style="padding:20px;">	
			<form:input path="productSubCategory"/>
		</div>
		
		<div class="col-lg-6" style="padding:20px;">
		Enter Product Original Price
		</div>
		<div class="col-lg-6" style="padding:20px;">	
			<form:input path="productOriginalPrice"/>
		</div>
		
		<div class="col-lg-6" style="padding:20px;">
		Enter Product Sale Price
		</div>
		<div class="col-lg-6" style="padding:20px;">	
			<form:input path="productSalePrice"/>
		</div>
		
		<div class="col-lg-6" style="padding:20px;">
		Enter Product Tag
		</div>
		<div class="col-lg-6" style="padding:20px;">	
			<form:input path="productTag"/>
		</div>
		
		<div class="col-lg-6" style="padding:20px;">
		Enter Product Quantity
		</div>
		<div class="col-lg-6" style="padding:20px;">	
			<form:input path="productQuantity"/>
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
  		<th>Product ID</th>
  		<th>Product Name</th>
  		<th>Product Category</th>
  		<th>Product SubCategory</th>
  		<th>Product Original Price</th>
  		<th>Product Sale Price</th>
  		<th>Product Tag</th>
  		<th>Product Quantity</th>
  		<th>Product Edit</th>
  		<th>Product Delete</th>
  	</tr>
  	<c:forEach items="${displayProduct}" var="display">
	<tr>
		<td>${display.productID}</td>
		<td>${display.productName}</td>
		<td>${display.category.categoryName}</td>
		<td>${display.productSubCategory}</td>
		<td>${display.productOriginalPrice}</td>
		<td>${display.productSalePrice}</td>
		<td>${display.productTag}</td>
		<td>${display.productQuantity}</td>
		<td><a href="updateProduct-${display.productID}" class="btn btn-primary" role="button">EDIT</a></td>
		<td><a href="deleteProduct-${display.productID}" class="btn btn-primary" role="button">DELETE</a></td>
	</tr>
	</c:forEach>
  </table>	 
</div>
</div>
<%@ include file="/WEB-INF/views/Footer.jsp"%>