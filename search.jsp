<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>What to feed</title>
<link rel="stylesheet" href="createRecipe.css">
</head>

<body>
	<%@ include file="banner.include"%>
	<center>
		<p style="font-size: 90px"><b>Buscar recetas con...</b> 
		<div class="container">
			<form action="<%=response.encodeURL("searchRecipes")%>" method=POST>
				<!-- BUSCAR POR NOMBRE DE RECETA -->
				<div class="row">
					<div class="col-label">
						<label style="font-size:70px" for='searchRecipeName'><strong>Nombre de la receta:</strong></label>
					</div>
					<div class="col-input">
							<input type="text" name=searchRecipeName >
					</div>
				</div>
				<!-- BUSCAR POR PAÍS DE ORIGEN DE LA RECETA -->
				<div class="row">
					<div class="col-label">
						<label style="font-size:70px" for='searchRecipeCountry'><strong>País de origen:</strong></label>
					</div>
				<div class="col-input">
					<input type="text" name=searchRecipeCountry>
					</div>
				</div>
				<!-- BUSCAR POR ESTILO DE COMIDA DE LA RECETA -->
				<div class="row">
					<div class="col-label">
						<label style="font-size:70px" for='searchRecipeStyle'><strong>Estilo de comida:</strong></label>
					</div>
					<div class="col-input">
						<input type="text" name=searchRecipeStyle>
					</div>
				</div>
				<!-- BUSCAR POR TIPO DE COMIDA DE LA RECETA -->
				<div class="row">
					<div class="col-label">
						<label style="font-size:70px" for='searchRecipeType'><strong>Tipo de comida:</strong></label>
					</div>
					<div class="col-input">
						<input type="text" name=searchRecipeType >
					</div>
				</div>
				<br><br><br>
				<input type="submit" value="Buscar recetas"> 
				<input type="reset" value="Borrar criterios de búsqueda">
			</form>
			<br><br><br>
			<form id="goBackFromCreate" action="<%=response.encodeURL("homepage.jsp")%>" method=POST>
				<input type="submit" value="Volver a la página principal"> 
			</form>
		</div>
	</center>
	
	<div class="footer">
		<%@ include file="banner2.include"%>
	</div>
	
	<div class="footer">
  		<%@ include file="copyright.include"%>
	</div>
	
</body>
</html>
