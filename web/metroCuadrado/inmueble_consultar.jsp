<%@page import="co.edu.ucatolica.is.ejemplois.DTOs.metroCuadradoDTO"%>
<html lang="en">
<head>
	<title>Metro Cuadrado</title>
        <!-- Resources-->
        <link href="./metroCuadrado/metroCuadrado.css" rel="stylesheet">

	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro" rel="stylesheet">

	<!-- Stylesheets -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="./resources/css/font-awesome.min.css"/>
	<link rel="stylesheet" href="./resources/css/animate.css"/>
	<link rel="stylesheet" href="./resources/css/owl.carousel.css"/>
	<link rel="stylesheet" href="./resources/css/style.css"/>

</head>        
<body>     
    <nav class="navbar navbar-expand-sm navbar-light bg-light" data-toggle="affix">
        <div class="mx-auto d-sm-flex d-block flex-sm-nowrap">
            <a href="https://www.metrocuadrado.com/"> <img alt="Metrocuadrado" src="./metroCuadrado/img/logo_metrocuadrado@2x.png" class="logo"/></a>
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
    <div class="container-fluid" id="containcon">
        <div class="row">
            <div class="col-lg-12">
               
            </div>
        </div>
    </div>
    <div class="container" id="hola">
        <%
            String lista = (String) request.getAttribute("listap");
                out.write(lista);
        %>
    </div>
    
    
    
    
	<!-- Footer section end -->

	<!--====== Javascripts & Jquery ======-->
	<script src="./resources/js/jquery-3.2.1.min.js"></script>
	<script src="./resources/js/bootstrap.min.js"></script>
	<script src="./resources/js/owl.carousel.min.js"></script>
	<script src="./resources/js/masonry.pkgd.min.js"></script>
	<script src="./resources/js/magnific-popup.min.js"></script>
	<script src="./resources/js/main.js"></script>
</body>
</html>
