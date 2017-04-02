<%@ include file="/WEB-INF/views/Header.jsp"%>


<div class="container">
<div class="container-fluid">
	<div class="row">	
		<form:form action="addCategory" modelAttribute="category">
		<form:input path="categoryID" type="hidden" />
		
		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 text-center" style="padding:20px;">
		Enter Category Name
		</div>
		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 text-center" style="padding:20px;">	
			<form:input path="categoryName"/>
		</div>
		
		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 text-center" style="padding:20px;">
			<input type="submit" value="Add">
		</div>
		</form:form>
	</div>	
</div>
<div class="table-responsive"> 
 <table class="table" >
  	<tr>
  		<th>Category ID</th>
  		<th>Category Name</th>
  		<th>Category Edit</th>
  		<th>Category Delete</th>
  	</tr>
  	<c:forEach items="${displayCategory}" var="display">
	<tr>
		<td>${display.categoryID}</td>
		<td>${display.categoryName}</td>
		<td><a href="updateCategory-${display.categoryID}" class="btn btn-primary" role="button">EDIT</a></td>
		<td><a href="deleteCategory-${display.categoryID}" class="btn btn-primary" role="button">DELETE</a></td>
	</tr>
	</c:forEach>
  </table>	 
</div>
</div>
<%@ include file="/WEB-INF/views/Footer.jsp"%> 