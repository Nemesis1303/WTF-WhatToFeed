<%@ page errorPage="errorHandling.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>What to feed</title>
<link rel="stylesheet" href="createRecipe.css">
</head>
<body>
	<%@ include file="banner.include"%>
	<center>
		<hr WIDTH="100%" />
		<h1 style="font-size:150px" ><strong>Introduzca los detalles de la nueva receta a crear:</strong></h1>
		<div class="container">
			<!-- Al hacer click en "Crear receta", se envían los datos del formulario a "confirm_recipe.jsp" -->
			<!-- Si ya hay una sesión activa, el usuario debe haber venido a esta página desde "confirm_data",
				 por lo que se muestra la información que escribió.-->
			<form id="formCreate" action="<%=response.encodeURL("confirm_recipe.jsp")%>" onsubmit="return validateForm()" method=POST>
				<!-- NOMBRE DE LA NUEVA RECETA -->
				<div class="row">
					<div class="col-label">
						<label style="font-size:70px" for='newRecipeName'><strong>Nombre de la receta:</strong></label>
					</div>
					<div class="col-input">
						<input type="text" name=newRecipeName 
							<%String newRecipeName_var = (String) session.getAttribute("newRecipeName"); 
							if (newRecipeName_var == null) newRecipeName_var = "";
							%>value=<%=newRecipeName_var%>>
					</div>
				</div>
				<!-- AUTOR DE LA NUEVA RECETA -->
				<div class="row">
					<div class="col-label">
						<label style="font-size:70px" for='authorNewRecipe'><strong>Autor de la receta:</strong></label>
					</div>
					<div class="col-input">
						<input type="text" name=authorNewRecipe
							<%String authorNewRecipe_var = (String) session.getAttribute("authorNewRecipe");
							if (authorNewRecipe_var == null) authorNewRecipe_var = "";
							%>value=<%=authorNewRecipe_var%>>
					</div>
				</div>
				<!--PAÍS DE ORIGEN DE LA RECETA -->
				<div class="row">
					<div class="col-label">
						<label style="font-size:70px" for='originCountryNewRecipe'><strong>País de origen:</strong></label>
					</div>
					<div class="col-input">
						<input type="text" name=originCountryNewRecipe
							<%String originCountryNewRecipe_var = (String) session.getAttribute("originCountryNewRecipe");
							if (originCountryNewRecipe_var == null) originCountryNewRecipe_var = "";
							%>value=<%=originCountryNewRecipe_var%>>
					</div>
				</div>
				<!-- TIPO DE COMIDA DE LA NUEVA RECETA  -->
				<div class="row">
					<div class="col-label">
						<label style="font-size:70px" for='styleNewRecipe'><strong>Estilo de la receta:</strong></label>
					</div>
					<div class="col-input">
						<input type="text" name=styleNewRecipe
							<%String styleNewRecipe_var = (String) session.getAttribute("styleNewRecipe");
							if (styleNewRecipe_var == null) styleNewRecipe_var = "";
							%>value=<%=styleNewRecipe_var%>>
					</div>
				</div>
				<!-- ESTILO DE COMIDA DE LA NUEVA RECETA -->
				<div class="row">
					<div class="col-label">
						<label style="font-size:70px" for='typeNewRecipe'><strong>Tipo de comida:</strong></label>
					</div>
					<div class="col-input">
						<input type="text" name=typeNewRecipe
							<%String typeNewRecipe_var = (String) session.getAttribute("typeNewRecipe");
							if (typeNewRecipe_var == null) typeNewRecipe_var = "";
							%>value=<%=typeNewRecipe_var%>>
					</div>
				</div>
				<!-- PASOS DE ELABORAIÓN DE LA RECETA -->
				<div class="row">
					<div class="col-label">
						<label style="font-size:70px" for='elaborationStepsNewRecipe'><strong>Pasos de elaboración:</strong></label>
					</div>
					<div class="col-input">
						<input type="text" width="100px" name=elaborationStepsNewRecipe
							<%String elaborationStepsNewRecipe_var = (String) session.getAttribute("elaborationStepsNewRecipe");
							if (elaborationStepsNewRecipe_var == null) elaborationStepsNewRecipe_var = "";
							%>value=<%=elaborationStepsNewRecipe_var%>>
					</div>
				</div>
				<!-- INGREDIENTE PRINCIPAL DE LA NUEVA RECETA  -->
				<div class="row">
					<div class="col-label">
						<label style="font-size:70px" for='ingredient1Name'><strong>Nombre del ingrediente principal:</strong></label>
					</div>
					<div class="col-input">
						<input type="text" width="100px" name=ingredient1Name
							<%String ingredient1Name_var = (String) session.getAttribute("ingredient1Name");
							if (ingredient1Name_var == null) ingredient1Name_var = "";
							%>value=<%=ingredient1Name_var%>>
					</div>
				</div>
				<!-- CANTIDAD DEL INGREDIENTE PRINCIPAL  -->
				<div class="row">
					<div class="col-label">
						<label style="font-size:70px" for='ingredient1Quantity'><strong>Cantidad del ingrediente :</strong></label>
					</div>
					<div class="col-input">
						<input type="text" width="100px" name='ingredient1Quantity'
							<%String ingredient1Quantity_var = (String) session.getAttribute("ingredient1Quantity");
							if (ingredient1Quantity_var == null) ingredient1Quantity_var = "";
							%>value=<%=ingredient1Quantity_var%>>
					</div>
				</div>
				<!-- UNIDADES EN LAS QUE LA CANTIDAD DEL INGREDIENTE PRINCIPAL ESTÁ EXPRESADA -->
				<div class="row">
					<div class="col-label">
						<label style="font-size:70px" for='ingredient1Units'><strong>Unidades del ingrediente :</strong></label>
					</div>
					<div class="col-input">
						<input type="text" width="100px" name='ingredient1Units'
							<%String ingredient1Units_var = (String) session.getAttribute("ingredient1Units");
							if (ingredient1Units_var == null) ingredient1Units_var = "";
							%>value=<%=ingredient1Units_var%>>
					</div>
				</div>
				<br><br><br>
				<input type="submit" value="Crear receta"> 
				<input type="button" name="clear" value="Borrar datos receta" onclick="resetForm(this.form);">
			</form>
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
	
	<script type="text/javascript">
		/*Función Javascript que se usa para resetear los valores del 
		formulario al hacer click en el botón de "Borrar datos receta",
		ya que al fijar los elementos del formulario como parámetros de sesión,
		si el usuario hace click en crear receta y luego vuelve para atrás, 
		el input reset por defecto no resetea los valores del formulario
		*/
		function resetForm(form) {
			var form_elements = form.elements; 
			for(i=0; i<form_elements.length; i++)
			{	
				field_type = form_elements[i].type.toLowerCase();
				if(field_type != "submit" && field_type != "button") {
					form_elements[i].value = ""; 
				}
			}
		}
		/*Función Javascript que hace salter un popup si el usario no 
		introduce todos los campos necesarios para la creación de la receta
		*/
		function validateForm() {
			  var x1 = document.forms["formCreate"]["newRecipeName"].value;
			  var x2 = document.forms["formCreate"]["authorNewRecipe"].value;
			  var x3 = document.forms["formCreate"]["originCountryNewRecipe"].value;
			  var x4 = document.forms["formCreate"]["styleNewRecipe"].value;
			  var x5 = document.forms["formCreate"]["typeNewRecipe"].value;
			  var x6 = document.forms["formCreate"]["elaborationStepsNewRecipe"].value;
			  var x7 = document.forms["formCreate"]["ingredient1Name"].value;
			  var x8 = document.forms["formCreate"]["ingredient1Quantity"].value;
			  var x9 = document.forms["formCreate"]["ingredient1Units"].value;
			  if (x1 == "" || x2 == "" || x3 == "" || x4 == "" || x5 == "" || x6 == "" 
					  	   || x7 == "" || x8 == "" || x9 == "") {
			    alert("Todos los campos deben ser rellenados para poder crear la receta.");
			    return false;
			  }
			}
	</script>
</body>
</html>