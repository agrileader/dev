<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="fr.engraisfrance.messages.LecteurMessage" %>

<%@ include file="/inc/header.jsp" %>

<section class="container-fluid">
	<!--==============================================================
	================= Ligne d'erreur =================================
	===============================================================-->	
	<c:if test="${!empty requestScope.listeErreur }">
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
	================= Main Page =====================
	===============================================================-->
	<div class="row">
		<!-- 
			Back Office Menu
		-->
		<%@ include file="inc/backofficemenu.jsp" %>
		
		<!-- 
			Main Page
		 --> 
	    <div class="col-12 col-lg-8 offset-lg-1 mt-3">
	    	<h3>Todo : Voir quoi mettre en page d'accueil du BO.</h3>
	    	<p>Exemple : Statistiques, ajout rapide d'une infocom, ajout rapide d'une nouvelle, etc...</p>
	    	<p>! fait ! Pourquoi pas également un menu flottant sur la gauche pour pouvoir accèder aux différentes fonctionnalités du BO</p>
	    	<p>Il faut aussi penser à l'obligation d'être connecté, et d'avoir les droits d'accès au BO !</p>
		</div>
	</div>
</section>

<%@ include file="/inc/footer.jsp" %>