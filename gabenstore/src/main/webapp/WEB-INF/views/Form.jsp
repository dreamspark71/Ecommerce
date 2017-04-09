<%@ include file="/WEB-INF/views/Header.jsp"%>

<div style="background-color: #eeeeee">
<br><br>
<form:form modelAttribute="user" action="addUserForm">
<div class="container">
  <div class="row" style="padding-left:50px;">
    <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12 accountborder" style="">
      <p class="accountline accountlog" style="">LOGIN
      <span class="glyphicon glyphicon-log-in pull-right"></span>
      </p>
      <p class="accountgreycolor accounttext">USERNAME OR EMAIL ADDRESS*</p>
      <input type="email" class="form-control accountpad2 accounttextboxcolor bord" id="email" placeholder="">
      <p class="accountgreycolor accounttext accountpad">PASSWORD*</p>
      <input type="password" class="form-control accountpad2 accounttextboxcolor bord" id="pwd" placeholder="">
      <button type="submit" class="btn btn-default accountpad1 accountbuttoncolor">LOGIN</button>
      <p class="rem greycolor pull-right" style="margin-top: 20px;padding-right: 5px">REMEMBER ME</p>
      <input type="checkbox" value="" class=" greycolor pull-right" style="margin-top: 20px;">
      <a href="#" style="" class="lost">Lost Your Password?</a>
    </div>
    
    <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12 accountborder">
      <p class="accountline accountlog" style="">REGISTER
      <span class="glyphicon glyphicon-log-in pull-right"></span>
      </p>
       <p class="accountgreycolor accounttext">EMAIL ADDRESS*</p>
      <form:input type="text" class="form-control accountpad2 accounttextboxcolor bord"  placeholder="" path="userName"/>
      <p class="accountgreycolor accounttext accountpad">PASSWORD*</p>
      <form:input type="password" class="form-control accountpad2 accounttextboxcolor bord"  placeholder="" path="userPassword"/>
      <button type="submit" class="btn btn-default accountpad1 accountbuttoncolor">REGISTER</button>
    </div>
    </form:form>
  </div>
</div>
<br><br><br> 

<%@ include file="/WEB-INF/views/Footer.jsp"%>
</div>