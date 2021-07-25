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
		<div class="container">
			<!-- Se muestra al usuario la información de la receta para que confirme si es correcta -->
			<p style="font-size: 80px">Por favor, compruebe que la información de la receta es correcta:</p>
			<p style="font-size: 80px">
				<strong>Nombre de la receta: </strong><%=request.getParameter("newRecipeName")%></p>
			<p style="font-size: 80px">
				<strong>Autor:</strong><%=request.getParameter("authorNewRecipe")%></p>
			<p style="font-size: 80px">
				<strong>País de procedencia: </strong><%=request.getParameter("originCountryNewRecipe")%></p>
			<p style="font-size: 80px">
				<strong>Tipo de comida: </strong><%=request.getParameter("styleNewRecipe")%></p>
			<p style="font-size: 80px">
				<strong>Estilo de comida: </strong><%=request.getParameter("typeNewRecipe")%></p>
			<p style="font-size: 80px">
				<strong>Pasos de elaboración: </strong><%=request.getParameter("elaborationStepsNewRecipe")%></p>
			<p style="font-size: 80px">
				<strong>Nombre del ingrediente principal: </strong><%=request.getParameter("ingredient1Name")%></p>
			<p style="font-size: 80px">
				<strong>Cantidad del ingrediente: </strong><%=request.getParameter("ingredient1Quantity")%></p>
			<p style="font-size: 80px">
				<strong>Unidades del ingrediente: </strong><%=request.getParameter("ingredient1Units")%></p>
			
			<!-- Si el usuario confirma que todo es correcto -->
			<form action="<%=response.encodeURL("createRecipe")%>" method=POST>
				<%
				session.setAttribute("newRecipeName", (Object) request.getParameter("newRecipeName"));
				session.setAttribute("authorNewRecipe", (Object) request.getParameter("authorNewRecipe"));
				session.setAttribute("originCountryNewRecipe", (Object) request.getParameter("originCountryNewRecipe"));
				session.setAttribute("styleNewRecipe", (Object) request.getParameter("styleNewRecipe"));
				session.setAttribute("typeNewRecipe", (Object) request.getParameter("typeNewRecipe"));
				session.setAttribute("elaborationStepsNewRecipe", (Object) request.getParameter("elaborationStepsNewRecipe"));
				session.setAttribute("ingredient1Name", (Object) request.getParameter("ingredient1Name"));
				session.setAttribute("ingredient1Quantity", (Object) request.getParameter("ingredient1Quantity"));
				session.setAttribute("ingredient1Units", (Object) request.getParameter("ingredient1Units"));
				%>
				<input type="submit" value="Confirmar información">
			</form>

			<!-- Si no, el usuario es redirigido a la página de creación de recetas de nuevo, manteniendo los campos que había introducido -->
			<p style="font-size: 80px">En caso contrario, vuelva atrás para modificar su receta:</p>
			<form action="<%=response.encodeURL("createRecipe.jsp")%>">
				<%
				session.setAttribute("newRecipeName", (Object) request.getParameter("newRecipeName"));
				session.setAttribute("authorNewRecipe", (Object) request.getParameter("authorNewRecipe"));
				session.setAttribute("originCountryNewRecipe", (Object) request.getParameter("originCountryNewRecipe"));
				session.setAttribute("styleNewRecipe", (Object) request.getParameter("styleNewRecipe"));
				session.setAttribute("typeNewRecipe", (Object) request.getParameter("typeNewRecipe"));
				session.setAttribute("elaborationStepsNewRecipe", (Object) request.getParameter("elaborationStepsNewRecipe"));
				session.setAttribute("ingredient1Name", (Object) request.getParameter("ingredient1Name"));
				session.setAttribute("ingredient1Quantity", (Object) request.getParameter("ingredient1Quantity"));
				session.setAttribute("ingredient1Units", (Object) request.getParameter("ingredient1Units"));
				%>
				<input type="submit" value="Volver a la página de creación de recetas">
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