<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/views/Header.jsp"%>
<div style="background-color: #eeeeee;padding-left:100px;">
<br><br>
<div class="container col-lg-12 col-md-12 col-sm-12 col-xs-12" style="border-style:solid;border-width:1px;width:100%;height:100%;border-color:white;background-color:white;margin-bottom:50px;">
<center><p><h3>Category Database </p></center></h3>

<form:form action="addCategory" modelAttribute="category">
Enter Category Name	
<form:input path="categoryName"/>
<form:input path="categoryID" type="hidden" />
<input type="submit" value="Add">
</form:form>


 <h2>Category Table</h2>  
 <table class="table">
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

<%@ include file="/WEB-INF/views/Footer.jsp"%>
</div>