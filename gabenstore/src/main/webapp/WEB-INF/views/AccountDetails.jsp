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
								<a href="/gabenstore/AccountDetails" class="accounttext">ACCOUNT DETAILS</a>
								<p class="accountline"></p>
								<a href="logout" class="accounttext">LOGOUT</a>
						</div>
						<div class="col-lg-8">
							
							<form:form action="addUserAccount" modelAttribute="user">							
							<p>ACCOUNT DETAILS</p>		
							<p class="billline"></p>
							 <form:input type="hidden" path="userID" value="${userid}"/>
							
							<p class="billtext">FIRST NAME</p>
							<form:input class="form-control billtextbox" path="userFirst"/>
							<div style="padding-top: 10px"></div>
							
							 <p class="billtext">LAST NAME</p>
							<form:input type="text" class="form-control billtextbox" path="userLast"/>
							<div style="padding-top: 10px"></div>
							
							<p class="billtext">EMAIL</p>
							<form:input type="email" class="form-control billtextbox" path="userName" value="${pageContext.request.userPrincipal.name}" readonly="true"/>
							<div style="padding-top: 10px"></div>
							
							<p>PASSWORD CHANGE</p>		
							<p class="billline"></p>
							
							<p class="billtext">CURRENT PASSWORD</p>${error}
							<input type="password" class="form-control billtextbox" name="current" />
							<div style="padding-top: 10px"></div>
							
							<p class="billtext">NEW PASSWORD</p>
							<form:input type="password" class="form-control billtextbox" path="userPassword"/>
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
							