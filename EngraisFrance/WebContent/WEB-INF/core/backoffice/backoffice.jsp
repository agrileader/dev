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
	<div class="row my-5">
		<!-- 
			Back Office Menu
		-->
		<%@ include file="inc/backofficemenu.jsp" %>
		
		<!-- 
			Main Page
		 --> 
	    <div class="col-12 col-lg-8 offset-lg-1 mt-3">
	    	<h3>Todo : Voir quoi mettre en page d'accueil du BO.</h3>
	    	<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>

		</div>
	</div>
</section>

<%@ include file="/inc/footer.jsp" %>