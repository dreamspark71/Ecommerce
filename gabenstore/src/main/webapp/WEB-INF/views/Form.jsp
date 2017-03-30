<%@ include file="/WEB-INF/views/Header.jsp"%>

<div style="background-color: #eeeeee">
<br><br>
<div class="container">
  <div class="row" style="padding-left:50px;">
    <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12 bor" style="">
      <p class="line log" style="">LOGIN
      <span class="glyphicon glyphicon-log-in pull-right"></span>
      </p>
      <p class="greycolor text">USERNAME OR EMAIL ADDRESS*</p>
      <input type="email" class="form-control pad2 textboxcolor bord" id="email" placeholder="">
      <p class="greycolor text pad">PASSWORD*</p>
      <input type="password" class="form-control pad2 textboxcolor bord" id="pwd" placeholder="">
      <button type="submit" class="btn btn-default pad1 buttoncolor">LOGIN</button>
      <p class="rem greycolor pull-right" style="margin-top: 20px;padding-right: 5px">REMEMBER ME</p>
      <input type="checkbox" value="" class=" greycolor pull-right" style="margin-top: 20px;">
      <a href="#" style="" class="lost">Lost Your Password?</a>
    </div>
    <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12 bor">
      <p class="line log" style="">REGISTER
      <span class="glyphicon glyphicon-log-in pull-right"></span>
      </p>
       <p class="greycolor text">EMAIL ADDRESS*</p>
      <input type="email" class="form-control pad2 textboxcolor bord" id="email" placeholder="">
      <p class="greycolor text pad">PASSWORD*</p>
      <input type="password" class="form-control pad2 textboxcolor bord" id="pwd" placeholder="">
      <button type="submit" class="btn btn-default pad1 buttoncolor">REGISTER</button>
    </div>
  </div>
</div>
<br><br><br> 
<%@ include file="/WEB-INF/views/Footer.jsp"%>
</div>