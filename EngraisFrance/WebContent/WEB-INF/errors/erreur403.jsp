<%@ page language="java" 
		 contentType="text/html; charset=UTF-8"
    	 pageEncoding="UTF-8" 
    	 isErrorPage="true"%>

<%@ include file="/inc/header.jsp" %>

<section id="container-error" class="container">    
    <h3 class="mt-5">Une erreur 403 est survenue</h3>
   	<a class="btn btn-primary my-3" href="<c:url value='/Engrais-au-meilleur-prix' />" title="Retourner à l'accueil du site">Retourner à l'accueil du site</a>

    <img class="error_img" alt="Erreur sur la page" src="${core_resources }/img/error_pic.png">
</section>

<%@ include file="/inc/footer.jsp" %>