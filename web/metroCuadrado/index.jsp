<%-- 
    Document   : InAlpes
    Created on : 13/09/2019, 04:43:10 PM
    Author     : sala8
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Metro Cuadrado</title>
        <!-- Resources-->
        <link href="./metroCuadrado.css" rel="stylesheet">

	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro" rel="stylesheet">

	<!-- Stylesheets -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="../resources/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="../resources/css/font-awesome.min.css"/>
	<link rel="stylesheet" href="../resources/css/animate.css"/>
	<link rel="stylesheet" href="../resources/css/owl.carousel.css"/>
	<link rel="stylesheet" href="../resources/css/style.css"/>

</head>        
<body>     
    <nav class="navbar navbar-expand-sm navbar-light bg-light" data-toggle="affix">
        <div class="mx-auto d-sm-flex d-block flex-sm-nowrap">
            <a href="https://www.metrocuadrado.com/"> <img alt="Metrocuadrado" src="./img/logo_metrocuadrado@2x.png" class="logo"/></a>
            <div class="collapse navbar-collapse text-center" id="navbar">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">BUSCAR INMUEBLES</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="#">NOTICIAS Y TENDENCIAS</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="#">HERRAMIENTAS</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>   
    <div class="container-fluid" id="containimg">
        <div class="row">
            <div class="col-lg-12">
                <h2 id="titu">ENCUENTRA INMUEBLES EN VENTA Y ARRIENDO:</h2>
                <form class="form col-lg-12" id="formu">
                    <div class="form-group form-inline">
                        <select class="form-control col-lg-3" id="buy">
                            <option>Compra Nuevo</option>
                            <option>Compra Usado</option>
                            <option>Compra Nuevo y Usado</option>
                            <option>Arriendo</option>
                        </select>
                        <select class="form-control col-lg-3" id="tip">
                            <option>Apartamentos</option>
                            <option>Oficinas</option>
                            <option>Bodegas</option>
                            <option>Consultorios</option>
                            <option>Locales</option>
                            <option>Lotes</option>
                            <option>Fincas</option>
                        </select>
                        <input class="form-control col-lg-3" type="text" id="tipot" placeholder="Ciudad, Zona o Barrio">
                        <button class="btn btn-danger col-lg-3" type="button">BUSCAR INMUEBLE</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="container-fluid" id="car">
            <div class="col-lg-6">
                <div class="form-group form-inline">
                    <h4>INMUEBLES DESTACADOS</h4>
                    <form class="form form-inline">
                        <div class="card border-primary" id="" style="width: 18rem;">
                            <img src="./img/logo_metrocuadrado@2x.png" class="card-img-top" alt="...">
                            <div class="card-body">
                              <h5 class="card-title">Card title</h5>
                              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                              <a href="#" class="btn btn-primary">Go somewhere</a>
                            </div>
                        </div>
                        <div class="card border-primary" style="width: 18rem;">
                            <img src="./img/logo_metrocuadrado@2x.png" class="card-img-top" alt="...">
                            <div class="card-body">
                              <h5 class="card-title">Card title</h5>
                              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                              <a href="#" class="btn btn-primary">Go somewhere</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-lg-6">
                
            </div>   
    </div>
    
    
    
    
	<!-- Footer section end -->

	<!--====== Javascripts & Jquery ======-->
	<script src="../resources/js/jquery-3.2.1.min.js"></script>
	<script src="../resources/js/bootstrap.min.js"></script>
	<script src="../resources/js/owl.carousel.min.js"></script>
	<script src="../resources/js/masonry.pkgd.min.js"></script>
	<script src="../resources/js/magnific-popup.min.js"></script>
	<script src="../resources/js/main.js"></script>
</body>
</html>
