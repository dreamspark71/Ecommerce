<%@ include file="/WEB-INF/views/Header.jsp"%>
<style>
#googleMap {
    width: 100%; /* Span the entire width of the screen */
    height: 1000px; /* Set the height to 400 pixels */
}
</style>

<div id="googleMap"></div>
<div style="background-color: #eeeeee;">
<br><br>
<div class="container" style="position: absolute;margin-top: -950px">
	<div style=" border-style: solid;border-width: 1px;border-color: white;width:400px;height:400px;
	color: black;background-color: white;padding-left: 20px;padding-right: 20px;padding-top: 20px;font-size:12px;" > 
<p style="color: black;border-bottom: solid;
    border-bottom-color:grey;
    border-width: 1px;">OUR ADDRESS</p>

General Information<br>
We gladly welcome you to GabenStore, the new era in digital game key distribution. The store is a long last wish of its owners: 
Creating a place where people are able to buy games at affordable prices.
<br><br>
We offer a secure, fast, cheap and reliable platform for all to a wide variety of your gaming needs.
We don&#8217t have something you want or need? No problem! Contact us at:
support@gabenstore.com<br>
And we will do everything we can to get it for you.<br>
<br>
Aditya Modi<br>
Mumbai.<br>
PHONE: +91 97103 29800<br>
<br>
Email us at: aditya@gabenstore.com<br>
</div>
<br>
<div style=" border-style: solid;border-width: 1px;border-color: white;width:400px;height:400px;
	color: black;background-color: white;padding-left: 20px;padding-right: 20px;padding-top: 20px;font-size:12px;"> 
<p style="color: black;border-bottom: solid;
    border-bottom-color:grey;
    border-width: 1px;">CONTACT FORM</p>
	<p class="greycolor text">Name*</p>
      <input type="text" class="form-control"  placeholder="" style="border-radius: 1px;background-color: #f4f4f4">
      <p class="greycolor text pad">Email</p>
      <input type="email" class="form-control" placeholder="" style="border-radius: 1px;background-color: #f4f4f4">
      <p class="greycolor text pad">Message*</p>
      <textarea class="form-control " placeholder="" style="background-color: #f4f4f4;margin-bottom: 5px"></textarea>
      <button type="submit" class="btn btn-primary" style="border-radius: 1px;">SEND</button>
      
</div>
</div>
</div>
<!-- Add Google Maps -->
<script src="http://maps.googleapis.com/maps/api/js"></script>
<script>
var myCenter = new google.maps.LatLng(19.301111, 72.846646);

function initialize() {
var mapProp = {
center:myCenter,
zoom:12,
scrollwheel:true,
draggable:true,
mapTypeId:google.maps.MapTypeId.ROADMAP
};

var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);

var marker = new google.maps.Marker({
position:myCenter,
});

marker.setMap(map);
}

google.maps.event.addDomListener(window, 'load', initialize);
</script>
<%@ include file="/WEB-INF/views/Footer.jsp"%>