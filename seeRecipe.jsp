<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>What to feed</title>
<link rel="stylesheet" href="style_homepage.css">
</head>
<body>
	
	<%@ include file="banner.include"%>
	<center>
		<div class="container">
			<h1 style="font-size: 200px; color: #4B7846;"><strong><%=request.getParameter("recipeName")%></strong></h1>
			<p>
				<strong>AUTOR: </strong><%=request.getParameter("author")%></p>
			<p >
				<strong>PA�S DE ORIGEN: </strong><%=request.getParameter("recipeOriginCountry")%></p>
			<p >
				<strong>ESTILO DE COMIDA: </strong><%=request.getParameter("recipeStyle")%></p>
			<p >
				<strong>TIPO DE COMIDA: </strong><%=request.getParameter("recipeType")%></p>
			<p >
				<strong>PASOS DE ELABORACI�N: </strong><%=request.getParameter("recipeElaborationSteps")%></p>
			<p>Puede volver a la p�gina principal: </p>
			<form action="<%=response.encodeURL("homepage.jsp")%>" method=POST>
				<input type="submit" value="Volver a la p�gina principal">
			</form>
			<p>O ir al �ndice de todas las recetas:</p>
			<form action="<%=response.encodeURL("listAllRecipes")%>" method=POST>
				<input type="submit" value="�ndice de recetas"> 
			</form>
		</div>
	</center>
	<div class="footer">
  		<%@ include file="copyright.include"%>
	</div>
</body>
</html>
