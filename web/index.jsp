<!DOCTYPE html>
<html lang="en">
<head>
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
 
  <div class="container">
    <div class="row no-gutters slider-text js-fullheight align-items-center" data-scrollax-parent="true">
      <div class="col-md-7 ftco-animate">
      </div>
</div>
</div>
</div>

<section class="ftco-section ftco-no-pb ftco-no-pt">
   <div class="container">
      <div class="row">
         <div class="col-md-4"></div>
         <div class="col-md-5 order-md-last">
          <div class="login-wrap p-4 p-md-5">
              <h3 class="mb-4">Login</h3>
              <form action="login.jsp" class="signup-form" method="POST">
                 <div class="form-group">
                    <label class="label" for="username">Nom d'utilisateur</label>
                    <input type="text" class="form-control" name="username" required >
                </div>
               
                <div class="form-group">
                 <label class="label" for="password">Mot de passe</label>
                 <input id="password-field" type="password" name="password" class="form-control">
             </div>
                  <div class="form-group">
                       <%
     Object  rs=  session.getAttribute("error");
       if(rs != null){
          
       
       %> 
       <span class="text-danger">
           <%
              out.print(rs);
              session.removeAttribute("error");
               }
               %>
       </span>
                  </div>
                  
            
             <div class="form-group d-flex justify-content-start ">
                 <div class="col-md-4"></div>
                 <button type="submit" class="btn btn-primary submit">
                     <span class="fa fa-sign-in"></span>
                     Login
                 </button>
             </div>
         </form>
         <p class="text-center">Voulez-vous inscrire ? <a href="inscription.jsp">Ici</a></p>
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