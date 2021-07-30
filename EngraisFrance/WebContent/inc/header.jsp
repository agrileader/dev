<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!--[if lte IE 7]> <html class="ie67 ie678" lang="fr"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="fr-FR"> <!--<![endif]-->
	<!-- HEAD -->
	<head>
		<base href="${fn:substring(url, 0, fn:length(url) - fn:length(uri))}${req.contextPath}/" />
		
		<!-- titre et description -->
		<title>Engrais France - Comparatif d'engrais dans votre secteur dans toute la france !</title>
		
		<!-- Meta -->
		<meta charset="UTF-8">
		<meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />
		<meta name="description" content="Vous souhaitez acheter de l'engrais au meilleurs prix ? Indiquez votre localisation et prenez connaissance des meilleurs tarifs !">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">		
		<meta name="HandheldFriendly" content="true">
		<meta name="msapplication-tap-highlight" content="no">
		<meta name="format-detection" content="telephone=no">
		
		<!-- OpenGraph -->
		<meta property=”og:url” content=”https://engraisfrance.fr/” />
		<meta property=”og:title” content="Engrais France - Comparatif d'engrais dans votre secteur dans toute la france !" />
		<meta property="og:site_name" content="Engrais France">
		<meta property=”og:type” content=”siteweb” />
		<meta property="og:locale" content="fr_FR">
		<meta property=”og:image” content="resources/core/img/engraisfrance_logo.png" />
		<meta property="og:image:type" content="image/jpeg" />
		<meta property="og:image:width" content="1080">
		<meta property="og:image:height" content="317">
		<meta property="og:image:alt" content="Logo de EngraisFrance.fr" />
		
		<!-- Link --> 
		<link rel="canonical" href="https://engraisfrance.fr/engrais-au-meilleur-prix/">
		<link rel="icon" href="resources/core/img/icons/favicon.ico">
		<link rel="preconnect" href="https://cdn.jsdelivr.net/">		
		<link rel="preconnect" href="https://code.jquery.com/">
		
		<!-- CSS -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.0/font/bootstrap-icons.css">
		<link rel="stylesheet" href="resources/core/css/engraisfrance.css" media="screen">
		
		<!--[if lte IE 7]><link rel="stylesheet" href="resources/core/css/engraisfrance_ie.css" media="screen"><![endif]-->
		
		<!-- JS -->		
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
		<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>		
		<script src="resources/core/js/France-map.js"></script>		
	</head>
	
	<!-- BODY -->
	<body class="page-template">
		<header>
			<!-- Barre d'information -->
			<div id="container-header" class="container-fluid">
				<div class="row py-3">
					<p class="header-information my-0 ps-5">
						<i class="bi bi-telephone px-2"></i> 02 33 91 00 70 - Du lundi au vendredi de 8h à 18h
					</p>
				</div>
							
				<!-- Barre  -->
				<div class="row">
					<div class="col-12 col-lg-4 offset-lg-4 py-5">
				    	<h1 class="section-title text-center"><a href="engrais-au-meilleur-prix" title="Retourner sur la page d'acceuil">Engrais France</a></h1>				    	
	   				</div>
	   				<div class="col-12 col-lg-2 offset-lg-2 py-3">
	   					<div class="section-user">
	   						<ul class="nav justify-content-center">
								<li class="nav-item">
						    		<a href="#" class="nav-link" aria-current="page" title="Voir le panier"><i class="bi bi-cart pe-2"></i></a>						    		
						  		</li>
					  			<li class="nav-item">
						    		<a href="Connexion" class="nav-link" title="Accéder à votre compte client"><i class="bi bi-person ps-2"></i></a>
						  		</li>						  
							</ul>	   						 	   						
	   					</div>
	   				</div>
		  		</div>
	  		</div>	
		</header>
