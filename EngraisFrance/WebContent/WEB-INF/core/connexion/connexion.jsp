<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="false"%>
    
<%@ page import="fr.engraisfrance.messages.LecteurMessage" %>

<%@ include file="/inc/header.jsp" %>

<section class="container">
	<!--==============================================================
	================= Ligne d'erreur =================================
	===============================================================-->	
	<c:if test="${ ! empty requestScope.listeErreur }">
		<div class="row">
			<div class="col alert alert-danger listeErreur" role="alert">
				<ul>
					<c:forEach items="${requestScope.listeErreur}" var="item">
						<li>
							${LecteurMessage.getMessageErreur(item) } 
						</li>
					</c:forEach>				
				</ul>
			</div>
		</div>
	</c:if>
				
	<!--==============================================================
	================= Ligne de reussite =================================
	===============================================================-->
	<c:if test="${ ! empty sessionScope.utilisateur }">
		<div class="row">
			<div class="col alert alert-primary" role="alert">
				<h2>Bienvenue : </h2> ${utilisateur.getEmail()}
			</div>
		</div>
	</c:if>
	
	<div class="row align-items-center">
		<div class="col">
			<h3 class="text-center my-5">Identification</h3>
			<form method="post" class="form-floating" action="/">
				<div class="form-floating mb-3 col-md-8 col-lg-3 mx-auto">
					<input type="email" name="user_name" class="form-control" id="floatingInput" placeholder="Adresse mail">
				  	<label for="floatingInput">Adresse mail</label>
				</div>
				<div class="form-floating mb-3 col-md-8 col-lg-3 mx-auto">
				  	<input type="password" name="user_pass" class="form-control" id="floatingPassword" placeholder="Mot de passe">
				  	<label for="floatingPassword">Mot de passe</label>
				</div>
				<div class="forget-password col-md-8 col-lg-3 mx-auto">
					<p class="text-end"><a href="#" title="Mot de passe oublié" class="">Mot de passe oublié ?</a></p>
				</div>
				<div class="col-3 mx-auto mt-5">
					<button type="submit" class="btn btn-primary btn-lg" >Envoyer</button>
				</div>
			</form>
		</div>
	</div>
</section>

<%@ include file="/inc/footer.jsp" %>