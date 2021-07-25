<div class="row-right-up">
  					<div class="row-right-up-title">
						<h1 style="font-size: 100px"><strong>Receta del día:</strong></h1>
					</div>
					<div class="row-right-up-recipe">
						<input type="text" name=recipeOfTheDay value="">
					</div>
					<div class="row-right-up-content">
						<img class="imgRecipe" src="images/moussaka.jpeg">
					</div>
					<div class="row-right-up-button">
						<center>
							<form action="<%=response.encodeURL("seeRecipe.jsp")%>"method=POST>
    							<input type="submit" value="Ver receta"> 
    						</form>
						</center>
					</div>
	  			</div>
	  			
	  			
	  			
	  			<p style="font-size: 80px"><b>Selecciona el criterio de búsqueda:</b> 
					<form action="filtering" method=POST> 
					  <input type="radio" id="name" name="filtering" value="name">
					  	<label style="font-size: 60px" for="name">Nombre</label><br>
					  <input type="radio" id="country" name="filtering" value="country">
					  	<label style="font-size: 60px" for="country">País</label><br><p>
					  <input type="radio" id="ingredient" name="filtering" value="ingredient">
					  	<label style="font-size: 60px" for="ingredient">Ingrediente</label><br><p>
					  <input type="radio" id="style" name="filtering" value="style">
					  	<label style="font-size: 60px" for="style">Estilo de comida</label><br><p>
					  <input type="radio" id="type" name="filtering" value="type">
					  	<label style="font-size: 60px" for="type">Tipo de comida</label><br><p> 
					  	&emsp;&emsp;&emsp;<input type="submit" value="Search">
					 </form>
					 
					 
		