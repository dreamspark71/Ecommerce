<%@ include file="/WEB-INF/views/Header.jsp"%>

<div class="container">
<div class="container-fluid">
	<div class="row">	
		<form:form action="addUser" modelAttribute="user">
		<form:input path="userID" type="hidden" />
		<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 text-center" style="padding:20px;">
		Enter User
		</div>
		<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 text-center" style="padding:20px;">	
			<form:input path="userName"/>
		</div>
		<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 text-center" style="padding:20px;">	
			<form:input path="userPassword" type="password"/>
		</div>
		
		<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 text-center" style="padding:20px;">
			<input type="submit" value="Add">
		</div>
		</form:form>
	</div>	
</div>

<div class="table-responsive"> 
 <table class="table" >
  	<tr>
  		<th>User ID</th>
  		<th>User Name</th>
  		<th>User Edit</th>
  		<th>User Delete</th>
  	</tr>
  	<c:forEach items="${displayUser}" var="display">
	<tr>
		<td>${display.userID}</td>
		<td>${display.userName}</td>
		<td><a href="updateUser-${display.userID}" class="btn btn-primary" role="button">EDIT</a></td>
		<td><a href="deleteUser-${display.userID}" class="btn btn-primary" role="button">DELETE</a></td>
	</tr>
	</c:forEach>
  </table>	 
</div>
</div>