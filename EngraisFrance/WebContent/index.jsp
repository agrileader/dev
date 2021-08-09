<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="inc/header.jsp" %>
	
<!-- Section comparaison -->
<section id="container-comparaison" class="container mt-5">
	<div class="row g-4">
		<h2 class="comparaison-titre">Rechercher le meilleur prix pour l'engrais</h2>
		<div class="col-12 col-lg-4 offset-lg-4 section-engrais-agricole">			
			<form method="post" action="<c:url value='/Engrais-au-meilleur-prix' />" class="input-group input-group-lg mb-3">
				<input type="text" name="code_postal" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" placeholder="Mon code postal...">
				<button class="btn btn-lg btn-outline-secondary" type="submit" id="button-addon2">Rechercher</button>
			</form>				
			
			<c:set var="nb_commune" value="${communes.size()}" property="int" />
				
			<c:choose>
				<c:when test="${nb_commune == 0}">
					<p>Aucune ville n'a été trouvée avec ce code postal...</p>
				</c:when>
				<c:when test="${nb_commune == 1}">
					<c:forEach var="commune" items="${communes}">
						<p>Une ville "${commune.getLibelle()}" a été trouvée avec ce code postal !</p>
					</c:forEach>
				</c:when>
				<c:when test="${nb_commune > 1}">
					<select name="select_commune" class="form-select" aria-label="Choix de la commune">
						<option value="">Veuillez selectionner votre commune...</option>
						<c:forEach var="commune" items="${communes}">
							<option value="${commune.getId() }">${commune.getLibelle()}</option>							
						</c:forEach>
					</select>
				</c:when>
			</c:choose>
		</div>
	</div>	
	
	<div class="row">
		<div class="comparaison-map mx-auto mt-2 mb-2">
			<div id="legende"></div>
			<map name="map" >
				<area id="carte-france"></area> 
			</map>
			<img id="canvasMap" src="${modules_resources }franceMap/img/trans.gif" usemap="#map" alt="Carte de comparaison France" />
			<canvas id="canvas">Mettez à jour votre navigateur Internet !</canvas>
		</div>	
	</div>
</section>

<!-- Section présentation -->
<section id="container-presentation" class="container mt-5">
	<div class="row">
		<div class="col-12 mt-2 section-engrais-agricole">
			<h2>Engrais Agricole</h2>
			<p>
				Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ultrices est non nulla dignissim ullamcorper. Nam vitae lectus vel libero pulvinar posuere non vitae urna. Nam non magna et dolor facilisis dignissim. Ut eu luctus elit. Suspendisse et neque dictum, vestibulum massa quis, rhoncus tortor. Nullam nec tellus orci. Duis ullamcorper eu nisl tincidunt lobortis. Maecenas pretium nibh mi, id dignissim mi aliquet id. Curabitur eros enim, gravida in magna sit amet, euismod laoreet lectus. Nunc in neque quis metus semper semper vel a augue. Nam venenatis elit ac libero dictum auctor. Vestibulum condimentum mattis mi, sit amet molestie tortor vehicula ac.
			</p>
		</div>
		<div class="col-12 mt-2 section-nutrition-plante">
			<h2>La nutrition de la plante</h2>
			<p>
				Ut vestibulum efficitur lacus, vel lobortis diam mattis quis. Nam blandit gravida blandit. Aliquam sit amet felis varius, facilisis odio in, porttitor sem. Morbi accumsan aliquet cursus. Sed non felis leo. Morbi ac enim convallis, dignissim lorem sed, convallis purus. In odio neque, lacinia ac nibh a, ullamcorper luctus dui. Quisque dictum venenatis metus in facilisis. Mauris accumsan eget lorem eu lacinia. Phasellus nisi dui, mattis sit amet semper et, pulvinar eget ipsum. Proin ut urna vitae libero viverra aliquam sed vel odio. Mauris quis mi nisl. Nulla elementum diam porta, molestie enim a, dictum enim.
			</p>
		</div>
		<div class="col-12 mt-2 section-type-engrais">
			<h2>Les différents types d’engrais agricole</h2>
			<p>
				Cras dignissim, urna non imperdiet eleifend, velit ligula cursus odio, in condimentum mauris justo vel odio. Sed accumsan diam eu neque molestie, eget accumsan elit posuere. Donec suscipit neque id lorem placerat hendrerit. Sed vitae vehicula nibh, at tincidunt ante. Maecenas vel mollis neque. Proin ut viverra turpis. Maecenas scelerisque eget dolor suscipit pulvinar. Sed placerat risus id blandit varius. Pellentesque iaculis lectus non placerat hendrerit. Nam eleifend eget ante non malesuada. Cras molestie, dui non consectetur ultrices, ex lorem elementum dolor, at pretium leo nisl a ipsum. Morbi non justo finibus, lobortis metus at, aliquet velit. Donec dictum ultricies porta. Aliquam fermentum sem vel erat rhoncus, ut luctus dui eleifend. Donec auctor accumsan enim pretium cursus. Cras nisl orci, auctor eget interdum sit amet, porta eget quam.
			</p>
		</div>
	</div>
</section>

<!-- Section composition -->
<section id="container-composition" class="container mt-5">
	<div class="row">
		<div class="table-responsive">
			<table class="table table-hover">
				<caption>Composition des engrais</caption>
				<thead>
					<tr>
						<th scope="col">Nom de l'engrais</th>
						<th scope="col">Composition en éléments nutritifs</th>
						<th scope="col">Forme et conditionnement</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>Solution azoté N39</td>
						<td>Azote (N) 30%</td>
						<td>Liquide, en citerne</td>
					</tr>
					<tr>	
						<td>Urée 46	Azote</td>
						<td>(N) 46% sous forme Uréeique</td>
						<td>Granulée, Vrac et BB 600Kg</td>
					</tr>
					<tr>
						<td>18-46-00 DAP</td>
						<td>Azote (N) 18%  Phosphore (P2O5) 46%</td>
						<td>Granulée, Vrac et BB 600Kg</td>
					</tr>
					<tr>
						<td>Ammonitrate 33.5</td>
						<td>Azote (N) 33.5%</td>
						<td>Granulée, Vrac et BB 600Kg</td>
					</tr>
				</tbody>
			</table>
		</div>		
	</div>
</section>

<%@ include file="/inc/footer.jsp" %>