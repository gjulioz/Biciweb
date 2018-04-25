<%-- 
    Document   : ini
    Created on : 23/04/2018, 11:46:11 PM
    Author     : mea
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/estilos.css" rel="stylesheet">
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    </head>
    <body>
         <script src="js/jquery.min.js"></script>
         <script src="js/bootstrap.bundle.min.js"></script>
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                           <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                           <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                           <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                        </ol>

                       <div class="carousel-inner" role="listbox">
                           <!-- Slide One - Set the background image for this slide in the line below -->
                           <div class="carousel-item active" >       
                               <div class="carousel-caption d-none d-md-block">      
                                   <img src="img\1.jpg" width="750" height="500">
                                   <h3 style="color: black">Eventos</h3>
                                   <p style="color: black">Compite con tus amigos en los eventos semanales que te ofrece BICIWEB</p>
                               </div>
                           </div>
                           <!-- Slide Two - Set the background image for this slide in the line below -->
                           <div class="carousel-item">
                               <div class="carousel-caption d-none d-md-block">
                                   <img src="img\2.png" width="750" height="500" >
                                   <h3 style="color: black">Ruta de la semana</h3>
                               </div>
                           </div>
                           <!-- Slide Three - Set the background image for this slide in the line below -->
                           <div class="carousel-item" >     
                               <div class="carousel-caption d-none d-md-block">
                                   <img src="img\2.jpg" width="750" height="500" >
                                   <h3 style="color: black">Alquila la bicicleta que mas te guste!</h3> 
                               </div>
                           </div>
                       </div>
                       <a  class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                           <span  class="carousel-control-prev-icon" aria-hidden="true"></span>
                           <span class="sr-only">Previous</span>
                       </a>
                       <a   class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                           <span  class="carousel-control-next-icon" aria-hidden="true"></span>
                           <span class="sr-only">Next</span>
                       </a>
                    </div>

    </body>
    
</html>
    
