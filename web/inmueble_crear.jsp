<!DOCTYPE html>
<html lang="en">
<head>
	<title>InAlpes</title>
	<meta charset="UTF-8">
	<meta name="description" content="InAlpes Landing Page Template">
	<meta name="keywords" content="InAlpes, unica, creative, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- Favicon -->
	<link href="img/favicon.ico" rel="shortcut icon"/>

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


	<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

</head>
<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header section -->
	<header class="header-section">
		<div class="header-top">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 header-top-left">
						<div class="top-info">
							<i class="fa fa-phone"></i>
							(+57) 311 589 6523
						</div>
						<div class="top-info">
							<i class="fa fa-envelope"></i>
							info@inalpes.com
						</div>
					</div>
					<div class="col-lg-6 text-lg-right header-top-right">
						<div class="top-social">
							<a href=""><i class="fa fa-facebook"></i></a>
							<a href=""><i class="fa fa-twitter"></i></a>
							<a href=""><i class="fa fa-instagram"></i></a>
							<a href=""><i class="fa fa-pinterest"></i></a>
							<a href=""><i class="fa fa-linkedin"></i></a>
						</div>
						<div class="user-panel">
                                                    <a href="./persona_crear_rta.jsp"><i class="fa fa-user-circle-o"></i> Bienvenido</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="site-navbar">
						<a href="#" class="site-logo"><img src="./resources/img/logo.png" alt="" alt="" style="width:120px; height:120px;"></a>
						<div class="nav-switch">
							<i class="fa fa-bars"></i>
						</div>
						<ul class="main-menu">
							<li><a href="./index.jsp">Inicio</a></li>
							<li><a href="./resources/jsp/about.jsp">Acerca de</a></li>
							<li><a href="./resources/jsp/contact.jsp">Contactenos</a></li>
							<li><a href="./persona_consultar.jsp">Consultar usuario</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- Header section end -->


	<!-- Hero section -->
	<section class="hero-section set-bg" data-setbg="./resources/img/bg.jpg">
		<div class="container hero-text text-white">
                    <h1>Registrar inmueble</h1>
                    <div class="row">
                        <div class="col-lg-6" style="margin: auto; margin-top: 1%;">
                            <div class="form">
                                <form class="form-inline" action="./inmueble" method="post">
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label class="form-control-label" for="typ">Tipo de inmueble</label>
                                            <input class="form-control" type="text" placeholder="Venta o arriendo" name="typ" required pattern="venta|arriendo"/>
                                            <label class="form-control-label" for="add">Dirección</label>
                                            <input class="form-control" type="text" placeholder="Direccion" name="add" required/>
                                            <label class="form-control-label" for="cost">Precio</label>
                                            <input class="form-control" type="text" placeholder="costo" name="cost" required/>
                                            <label class="form-control-label" for="city">Ciudad</label>
                                            <input class="form-control" type="text" placeholder="city" name="city" required pattern="Medellín|Bogotá|Cali"/>
                                        </div>
                                    </div> 
                                   <div class="col-lg-6">
                                        <div class="form-group">
                                            <label class="form-control-label" for="place">Descripción del sitio</label>
                                            <textarea class="form-control" rows="8" placeholder="Descripción" name="place" required></textarea>
                                        </div>
                                    </div>
                                    <button type="submit" name="operacion" value="crear" class="btn btn-primary w-100" style="margin-top: 4%;">Registrar inmueble</button>
                                </form>
                            </div>
                        </div>
                    </div>
		</div>
	</section>
	<!-- Hero section end -->



	<!--====== Javascripts & Jquery ======-->
	<script src="./resources/js/jquery-3.2.1.min.js"></script>
	<script src="./resources/js/bootstrap.min.js"></script>
	<script src="./resources/js/owl.carousel.min.js"></script>
	<script src="./resources/js/masonry.pkgd.min.js"></script>
	<script src="./resources/js/magnific-popup.min.js"></script>
	<script src="./resources/js/main.js"></script>

</body>
</html>

