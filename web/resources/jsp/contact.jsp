<%-- 
    Document   : contact
    Created on : 13/09/2019, 05:10:58 PM
    Author     : sala8
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
	<link rel="stylesheet" href="../css/bootstrap.min.css"/>
	<link rel="stylesheet" href="../css/font-awesome.min.css"/>
	<link rel="stylesheet" href="../css/animate.css"/>
	<link rel="stylesheet" href="../css/owl.carousel.css"/>
	<link rel="stylesheet" href="../css/style.css"/>


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
							(+57) 312 589 2365
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
							<a href=""><i class="fa fa-user-circle-o"></i> Registrarse</a>
							<a href=""><i class="fa fa-sign-in"></i> Iniciar sesion</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="site-navbar">
						<a href="#" class="site-logo"><img src="../img/logo.png" alt=""></a>
						<div class="nav-switch">
							<i class="fa fa-bars"></i>
						</div>
						<ul class="main-menu">
							<li><a href="../index.jsp">Inicio</a></li>
							<li><a href="about.jsp">Acerca de</a></li>
							<li><a href="contact.jsp">Contactenos</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- Header section end -->


	<!-- Page top section -->
	<section class="page-top-section set-bg" data-setbg="../img/page-top-bg.jpg">
		<div class="container text-white">
			<h2>Contactenos</h2>
		</div>
	</section>
	<!--  Page top end -->

	<!-- Breadcrumb -->
	<div class="site-breadcrumb">
		<div class="container">
			<a href="../../index.jsp"><i class="fa fa-home"></i>Inicio</a>
			<span><i class="fa fa-angle-right"></i>Contactenos</span>
		</div>
	</div>

	<!-- page -->
	<section class="page-section blog-page">
		<div class="container">
			<div id="map-canvas"></div>
			<div class="contact-info-warp">
				<p><i class="fa fa-map-marker"></i>Calle 100 con 15</p>
				<p><i class="fa fa-envelope"></i>info@inalpes.com</p>
				<p><i class="fa fa-phone"></i>(+57) 312 589 2365</p>
			</div>
			<div class="row">
				<div class="col-lg-6">
					<img src="../img/contact.jpg" alt="">
				</div>
				<div class="col-lg-6">
					<div class="contact-right">
						<div class="section-title">
							<h3>Envianos un mensaje</h3>
						</div>
						<form class="contact-form">
							<div class="row">
								<div class="col-md-6">
									<input type="text" placeholder="Nombre">
								</div>
								<div class="col-md-6">
									<input type="text" placeholder="Correo electronico">
								</div>
								<div class="col-md-12">
									<textarea  placeholder="Mensaje"></textarea>
									<button class="site-btn">Enviar</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- page end -->


	<!-- Clients section -->
	<div class="clients-section">
		<div class="container">
			<div class="clients-slider owl-carousel">
				<a href="#">
					<img src="../img/partner/1.png" alt="">
				</a>
				<a href="#">
					<img src="../img/partner/2.png" alt="">
				</a>
				<a href="#">
					<img src="../img/partner/3.png" alt="">
				</a>
				<a href="#">
					<img src="../img/partner/4.png" alt="">
				</a>
				<a href="#">
					<img src="../img/partner/5.png" alt="">
				</a>
			</div>
		</div>
	</div>
	<!-- Clients section end -->


	<!-- Footer section -->
	<footer class="footer-section set-bg" data-setbg="../img/footer-bg.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6 footer-widget" >
					<img src="../img/logo.png">
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
	<script src="../js/jquery-3.2.1.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/owl.carousel.min.js"></script>
	<script src="../js/masonry.pkgd.min.js"></script>
	<script src="../js/magnific-popup.min.js"></script>
	<script src="../js/main.js"></script>

	<!-- load for map -->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB0YyDTa0qqOjIerob2VTIwo_XVMhrruxo"></script>
	<script src="../js/map.js"></script>
</body>
</html>
