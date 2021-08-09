<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="backoffice-menu list-group mt-3 col-10 col-md-6 col-lg-3 offset-1 offset-md-3 offset-lg-0">
	<a href="<c:url value='/BackOffice' />" class="list-group-item list-group-item-action <c:if test="${currentUrl.equals('/BackOffice') }" >active</c:if>">Accueil</a>
	<a href="<c:url value='/BackOffice/Produit' />" class="list-group-item list-group-item-action <c:if test="${currentUrl.equals('/BackOffice/Produit') }" >active</c:if>">Gestion des tarifs engrais</a>
	<a href="#" class="list-group-item list-group-item-action">Nouvelles</a>
	<a href="#" class="list-group-item list-group-item-action">Statistiques</a>	
	<form action="<c:url value='/Connexion' />" method="POST">
		<input type="hidden" name="etat_connexion" value="deconnexion" />
		<button type="submit" class="list-group-item list-group-item-action">Se déconnecter</button>
	</form>
</div>