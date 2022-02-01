<!DOCTYPE html>
<html lang="en">
<head>
    <script type="text/javascript">
function check(value){ 
xmlHttp=GetXmlHttpObject()
var url="checkajax.jsp";
url=url+"?email="+value;
xmlHttp.onreadystatechange=stateChanged 
xmlHttp.open("GET",url,true)
xmlHttp.send(null)
}
function stateChanged(){ 
if(xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){ 
var showdata = xmlHttp.responseText; 
document.getElementById("mydiv").innerHTML= showdata;
} 
}
function GetXmlHttpObject(){
var xmlHttp=null;
try{
xmlHttp=new XMLHttpRequest();
}
catch (e) {
try {
xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
}
catch (e){
xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
}
}
return xmlHttp;
}
</script>


<script>
  var checkPass = function() {
  if (document.getElementById('password').value ==
    document.getElementById('repassword').value) {
    document.getElementById('message').style.color = 'green';
    document.getElementById('message').innerHTML = 'matching';
  } else {
    document.getElementById('message').style.color = 'red';
    document.getElementById('message').innerHTML = 'not matching';
  }
}
    </script>
    <title>Gestion des étudiants</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="design/css/animate.css">
    
    <link rel="stylesheet" href="design/css/owl.carousel.min.css">
    <link rel="stylesheet" href="design/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="design/css/magnific-popup.css">

    <link rel="stylesheet" href="design/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="design/css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="design/css/flaticon.css">
    <link rel="stylesheet" href="design/css/style.css">
</head>
<body>
 <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
   <div class="container">
     <a class="navbar-brand" href="index.html"><span>Study</span>Lab</a>
     <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
       <span class="oi oi-menu"></span> Menu
   </button>

</div>
</nav>
<!-- END nav -->

<div class="hero-wrap js-fullheight" style="background-image: url('design/images/image_1.jpg');">
  <div class="overlay"></div>
  <div class="container">
    <div class="row no-gutters slider-text js-fullheight align-items-center" data-scrollax-parent="true">
     
</div>
</div>
</div>

<section class="ftco-section ftco-no-pb ftco-no-pt">
   <div class="container">
      <div class="row">
         <div class="col-md-2"></div>
         <div class="col-md-8 order-md-last">
          <div class="login-wrap p-md-5">
              <h3 class="mb-4">Inscription</h3>
              <form action="register_bdd.jsp" class="signup-form" method="POST">
                  <div class="form-group row">
                      
                      <div class="col-md-6">
                            <label class="label" for="mat">Matricule</label>
                            <input type="number" class="form-control" name="mat" required >
                      </div>
                       <div class="col-md-6">
                           <label class="label" for="nom">Nom</label>
                           <input type="text" class="form-control" required name="nom" >
                      </div>
                  
                </div>
                
                <div class="form-group">
                    <div class="row">
                        <div class="col-md-6">
                            <label class="label" for="date">Date</label>
                            <input type="date" class="form-control" name="ddate" required>
                        </div>
                        <div class="col-md-6">
                           <label class="label" for="moyenne">Moyenne</label>
                           <input type="number" class="form-control" name="moyenne" min="0" max="20" required> 
                        </div>
                    </div>
                    
                </div>
                 
                <div class="form-group">
                    <div class="row">
                        <div class="col-md-6">
                      <label class="label" for="username">Nom d'utilisateur</label>
                      <input id="password-field" type="text" class="form-control" required name="username" onkeyup="check(this.value);">   
                      <div class="form-group">
                           <div >
                          <font color="red"><div id="mydiv"></div></font>
                           </div>
                      </div> 
                    </div>
                    </div>
                </div>
                      
                     <div class="form-group">
                    <div class="row">
                        
                    <div class="col-md-6">
                      <label class="label" for="password">Password</label>
                 <input id="password" type="password" class="form-control" required name="password">  
                    </div>
                        <div class="col-md-6">
                             <label class="label" for="repassword">Confirmation Password</label>
                             <input id="repassword" type="password" class="form-control" required name="repassword" onkeyup='checkPass();'>
                             
                             <span id='message'></span>
                        </div>
                    </div>
                 
             </div>
             
              <div class="form-group d-flex justify-content-start ">
                 <div class="col-md-5"></div>
                 <button type="submit" class="btn btn-primary submit">
                     <span class="fa fa-save"></span>
                     Valider
                 </button>
             </div>
         </form>
         <p class="text-center">Avez-vous un compte ? <a href="index.jsp">Login</a></p>
     </div>
 </div>
</div>
</div>
</section>

<!-- loader -->
<div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


<script src="design/js/jquery.min.js"></script>
<script src="design/js/jquery-migrate-3.0.1.min.js"></script>
<script src="design/js/popper.min.js"></script>
<script src="design/js/bootstrap.min.js"></script>
<script src="design/js/jquery.easing.1.3.js"></script>
<script src="design/js/jquery.waypoints.min.js"></script>
<script src="design/js/jquery.stellar.min.js"></script>
<script src="design/js/owl.carousel.min.js"></script>
<script src="design/js/jquery.magnific-popup.min.js"></script>
<script src="design/js/jquery.animateNumber.min.js"></script>
<script src="design/js/bootstrap-datepicker.js"></script>
<script src="design/js/scrollax.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
<script src="design/js/google-map.js"></script>
<script src="design/js/main.js"></script>

</body>
</html>