<%@ include file="/WEB-INF/views/Header.jsp"%>
<div class="faqback">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="faqcard" style="padding: 10px;">
					<div class="row">
						<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
							<form:form action="addRequest" modelAttribute="request">
							<p style="margin-bottom: 0px;margin-top: 10px">ENTER YOUR NAME</p>
							<form:input class="form-control billtextbox" path="requestName"/>
							
							<p style="margin-bottom: 0px;margin-top: 10px">ENTER YOUR EMAIL</p>
							<form:input class="form-control billtextbox" path="requestEmail"/>
							
							<p style="margin-bottom: 0px;margin-top: 10px">STEAM GAME LINK (EX - STORE.STEAMPOWERED.COM/APP/365590)</p>
							<form:input class="form-control billtextbox" path="requestSteam"/>
							
							<p style="margin-bottom: 0px;margin-top: 10px">PRICE OF GAME</p>
							<form:input class="form-control billtextbox" path="requestOriginalPrice"/>
							
							<button type="submit" class="btn btn-primary" style="margin-top: 10px;border-radius: 1px" >ADD TO CART</button>
							</form:form>
						</div>
					</div>	
				</div>
			</div>
		</div>
	</div>
<%@ include file="/WEB-INF/views/Footer.jsp"%>
</div>	