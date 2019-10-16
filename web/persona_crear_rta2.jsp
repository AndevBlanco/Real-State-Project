<%-- 
    Document   : InAlpes
    Created on : 13/09/2019, 04:43:10 PM
    Author     : sala8
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                                                    <li><a href="./persona_crear_rta2.jsp">Inicio</a></li>
							<li><a href="./resources/jsp/about.jsp">Acerca de</a></li>
							<li><a href="./resources/jsp/contact.jsp">Contactenos</a></li>
                                                        <li><a href="./inmueble_creara.jsp">Crear inmueble</a></li>
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
			<h2>Encuentra la casa de tus sueños con nosotros</h2>
			<a href="#" class="site-btn">Ver detalles</a>
		</div>
	</section>
	<!-- Hero section end -->


	<!-- Filter form section -->
	<div class="filter-search">
		<div class="container">
			<form class="filter-form">
				<input type="text" placeholder="Enter a street name, address number or keyword">
				<select>
					<option value="City">Ciudad</option>
				</select>
				<select>
					<option value="City">Departamento</option>
				</select>
				<button class="site-btn fs-submit">Buscar</button>
			</form>
		</div>
	</div>
	<!-- Filter form section end -->



	<!-- Properties section -->
	<section class="properties-section spad">
		<div class="container">
			<div class="section-title text-center">
				<h3>Propiedades recientes</h3>
				<p>Descubre las propiedades que estan disponibles para comprar o arrendar</p>
			</div>
			<div class="row">
				<div class="col-md-6">
					<div class="propertie-item set-bg" data-setbg="./resources/img/propertie/1.jpg">
						<div class="sale-notic">En venta</div>
						<div class="propertie-info text-white">
							<div class="info-warp">
								<h5>Chia</h5>
								<p><i class="fa fa-map-marker"></i>Carrera 80A 50</p>
							</div>
							<div class="price">$1000777000</div>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="propertie-item set-bg" data-setbg="./resources/img/propertie/2.jpg">
						<div class="rent-notic">Por arrendar</div>
						<div class="propertie-info text-white">
							<div class="info-warp">
								<h5>Cota</h5>
								<p><i class="fa fa-map-marker"></i>Carrera 9A</p>
							</div>
							<div class="price">$2500000/mensual</div>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="propertie-item set-bg" data-setbg="./resources/img/propertie/3.jpg">
						<div class="sale-notic">En venta</div>
						<div class="propertie-info text-white">
							<div class="info-warp">
								<h5>Colina campestre</h5>
								<p><i class="fa fa-map-marker"></i>Calle 130 diagonal 12</p>
							</div>
							<div class="price">$1500000000</div>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="propertie-item set-bg" data-setbg="./resources/img/propertie/4.jpg">
						<div class="rent-notic">Por arrendar</div>
						<div class="propertie-info text-white">
							<div class="info-warp">
								<h5>Los rosales</h5>
								<p><i class="fa fa-map-marker"></i>Calle 106 carrera 7</p>
							</div>
							<div class="price">$3000000/mensual</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Properties section end -->


	<!-- Services section -->
	<section class="services-section spad set-bg" data-setbg="./resources/img/service-bg.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<img src="./resources/img/service.jpg" alt="">
				</div>
				<div class="col-lg-5 offset-lg-1 pl-lg-0">
					<div class="section-title text-white">
						<h3>Nuestros servicios</h3>
						<p>Tenemos mucho para ofrecerte</p>
					</div>
					<div class="services">
						<div class="service-item">
							<i class="fa fa-comments"></i>
							<div class="service-text">
								<h5>Servicios de consulta</h5>
								<p>Si necesitas asesoramiento habla gratuitamente con alguno de nuestros asesores</p>
							</div>
						</div>
						<div class="service-item">
							<i class="fa fa-home"></i>
							<div class="service-text">
								<h5>Propiedades de organizacion</h5>
								<p>Cuidamos tu seguridad</p>
							</div>
						</div>
						<div class="service-item">
							<i class="fa fa-briefcase"></i>
							<div class="service-text">
								<h5>Compra y venta</h5>
								<p>Tenemos muchas propiedades para que consigas el hogar de tus sueños</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Services section end -->


	<!-- feature section -->

	<!-- Blog section end -->

	<!-- Clients section -->
	<div class="clients-section">
		<div class="container">
			<div class="clients-slider owl-carousel">
				<a href="#">
					<img src="./resources/img/partner/1.png" alt="">
				</a>
				<a href="#">
					<img src="./resources/img/partner/2.png" alt="">
				</a>
				<a href="#">
					<img src="./resources/img/partner/3.png" alt="">
				</a>
				<a href="#">
					<img src="./resources/img/partner/4.png" alt="">
				</a>
				<a href="#">
					<img src="./resources/img/partner/5.png" alt="">
				</a>
			</div>
		</div>
	</div>
	<!-- Clients section end -->



	<!-- Footer section -->
	<footer class="footer-section set-bg" data-setbg="./resources/img/footer-bg.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6 footer-widget" >
					<img src="./resources/img/logo.png">
					<p>InAlpes</p>
					<div class="social">
						<a href="#"><i class="fa fa-facebook"></i></a>
						<a href="#"><i class="fa fa-twitter"></i></a>
						<a href="#"><i class="fa fa-instagram"></i></a>
						<a href="#"><i class="fa fa-pinterest"></i></a>
						<a href="#"><i class="fa fa-linkedin"></i></a>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 footer-widget">
					<div class="contact-widget">
						<h5 class="fw-title">Contactanos</h5>
						<p><i class="fa fa-map-marker"></i>3711-2880 Bogota, Colombia </p>
						<p><i class="fa fa-phone"></i>(+57) 313 562 3265</p>
						<p><i class="fa fa-envelope"></i>info.InAlpes@colorlib.com</p>
						<p><i class="fa fa-clock-o"></i>Lunes - Sabado, 08 AM - 06 PM</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 footer-widget">
					<div class="double-menu-widget">
						<h5 class="fw-title">Lugares populares/h5>
						<ul>
							<li><a href="">Bogota</a></li>
							<li><a href="">Cali</a></li>
							<li><a href="">Medellin</a></li>
							<li><a href="">Cartagena</a></li>
							<li><a href="">Barranquilla</a></li>
						</ul>
						<ul>
							<li><a href="">Mirandela</a></li>
							<li><a href="">Colina campestre</a></li>
							<li><a href="">Los rosales</a></li>
							<li><a href="">Parque lleras</a></li>
							<li><a href="">Club de pesca</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-3 col-md-6  footer-widget">
					<div class="newslatter-widget">
						<h5 class="fw-title">Noticias</h5>
						<p>Subscribete a nuestras noticias mas relevantes</p>
						<form class="footer-newslatter-form">
							<input type="text" placeholder="Correo electronico">
							<button><i class="fa fa-send"></i></button>
						</form>
					</div>
				</div>
			</div>
			<div class="footer-bottom">
				<div class="copyright">
					<p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->

<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
				</div>
			</div>
		</div>
	</footer>
	<!-- Footer section end -->

	<!--====== Javascripts & Jquery ======-->
	<script src="./resources/js/jquery-3.2.1.min.js"></script>
	<script src="./resources/js/bootstrap.min.js"></script>
	<script src="./resources/js/owl.carousel.min.js"></script>
	<script src="./resources/js/masonry.pkgd.min.js"></script>
	<script src="./resources/js/magnific-popup.min.js"></script>
	<script src="./resources/js/main.js"></script>
        <!-- Bienvenido ${sessionScope.info} -->
</body>
</html>

