<%@ include file="/WEB-INF/views/Header.jsp"%>
<div class="shopback">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="billcard">
					<div class="row">
						<div class="col-lg-3">
								<a class="accounttext" href="/gabenstore/Account">DASHBOARD</a>
								<p class="accountline"></p>
								<a href="/gabenstore/Orders" class="accounttext">ORDERS</a>
								<p class="accountline"></p>
								<a href="/gabenstore/AccountAddress" class="accounttext">ADDRESSES</a>
								<p class="accountline"></p>
								<a href="/gabenstore/AccountWishlist" class="accounttext">WISHLIST</a>
								<p class="accountline"></p>
								<a href="/" class="accounttext">ACCOUNT DETAILS</a>
								<p class="accountline"></p>
								<a href="logout" class="accounttext">LOGOUT</a>
						</div>
						<div class="col-lg-8">
							<form:form action="addAddress" modelAttribute="address">							
							<p>BILLING ADDRESS</p>		
							<p class="billline"></p>
							<form:input class="form-control" path="userID" value="${displayUser}" type="hidden"/>
							<p class="billtext">FIRST NAME</p>
							<form:input class="form-control billtextbox" path="addressFirst"/>
							<div style="padding-top: 10px"></div>
							
							 <p class="billtext">LAST NAME</p>
							<form:input type="text" class="form-control billtextbox" path="addressLast"/>
							<div style="padding-top: 10px"></div>
							
							<p class="billtext">COMPANY</p>
							<form:input type="text" class="form-control billtextbox" path="addressCompany"/>
							<div style="padding-top: 10px"></div>
							
							<p class="billtext">COUNTRY</p>
							<form:input type="text" class="form-control billtextbox" path="addressCountry"/>
							<div style="padding-top: 10px"></div>
							
							<p class="billtext">ADDRESS</p>
							<form:input type="text" class="form-control billtextbox" path="addressAddress"/>
							<div style="padding-top: 10px"></div>
							
							<p class="billtext">TOWN/CITY</p>
							<form:input type="text" class="form-control billtextbox" path="addressCity"/>
							<div style="padding-top: 10px"></div>
							
							<p class="billtext">STATE/COUNTY</p>
							<form:input type="text" class="form-control billtextbox" path="addressState"/>
							<div style="padding-top: 10px"></div>
							
							<p class="billtext">PINCODE / ZIP</p>
							<form:input type="text" class="form-control billtextbox" path="addressPostal"/>
							<div style="padding-top: 10px"></div>
							
							<p class="billtext">PHONE</p>
							<form:input type="text" class="form-control billtextbox" path="addressPhone"/>
							<div style="padding-top: 10px"></div>
							
							<p class="billtext">EMAIL</p>
							<form:input type="email" class="form-control billtextbox" path="addressEmail" value="${pageContext.request.userPrincipal.name}"/>
							<div style="padding-top: 10px"></div>
							
							<button type="submit" class="btn btn-primary" style="border-radius: 1px">SUBMIT</button>
							</form:form>
						</div>
					</div>		
				</div>

			</div>
		</div>
	</div>
<%@ include file="/WEB-INF/views/Footer.jsp"%>
</div>				
							