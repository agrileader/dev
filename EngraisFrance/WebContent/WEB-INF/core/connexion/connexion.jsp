<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="false"%>
    
<%@ include file="/inc/header.jsp" %>

<section class="container">
				
	<!--==============================================================
	================= Si l'utilisateur est connecté ==================
	===============================================================-->	
	<c:if test="${ ! empty user }">
		<div class="row my-5">
			<div class="col alert alert-primary" role="alert">
				<h2>Bienvenue <strong>${user.getNom()} ${user.getPrenom()}</strong></h2>  
				<p>Votre adresse email : ${user.getCoordonnee().getEmail() }</p>
				<c:forEach items="${user_role }" var="role">					
					<c:if test="${role.getCode().equals('ADM') || role.getCode.equals('SPV') || role.getCode.equals('COM')}">
						<a href="<c:url value='/BackOffice' />" class="btn btn-primary" role="button">Accèder au back office</a>					
					</c:if>
				</c:forEach> 
				
				
				<form action="Connexion" method="POST">
					<input type="hidden" name="etat_connexion" value="deconnexion" />
					<button type="submit" class="btn btn-secondary mt-2">Se déconnecter</button>
				</form>
			</div>
		</div>
	</c:if>
	
	<!--==============================================================
	================= Si l'utilisateur est déconnecté =================================
	===============================================================-->	
	<c:if test="${ empty user}">
		<div class="row align-items-center">
			<div class="col">
				<h3 class="text-center my-5">Identification</h3>
				<form method="post" class="form-floating" action="Connexion">
					<div class="form-floating mb-3 col-md-8 col-lg-3 mx-auto">
						<input type="text" name="user_identifiant" class="form-control" id="floatingInput" placeholder="Adresse mail">
					  	<label for="floatingInput">Identifiant</label>
					</div>
					<div class="form-floating mb-3 col-md-8 col-lg-3 mx-auto">
					  	<input type="password" name="user_password" class="form-control" id="floatingPassword" placeholder="Mot de passe">
					  	<label for="floatingPassword">Mot de passe</label>
					</div>
					<div class="forget-password col-md-8 col-lg-3 mx-auto">
						<p class="text-end">
							<a href="#" title="Mot de passe oublié" class="">Mot de passe oublié ?</a>
						</p>
					</div>
					<div class="col-3 mx-auto mt-5">
						<button type="submit" class="btn btn-primary btn-lg" >Envoyer</button>
					</div>
				</form>
			</div>
		</div>
	</c:if>
</section>

<%@ include file="/inc/footer.jsp" %>