<%@ page errorPage="errorHandling.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>What to feed</title>
<link rel="stylesheet" href="createRecipe.css">
</head>
</head>
<body>
	<%@ include file="banner.include"%>
	<center>
		<hr WIDTH="100%" />
		<div class="container">
			<form action="<%=response.encodeURL("homepage.jsp")%>" method=POST>
				<p style="font-size: 90px">Su nueva receta ha sido añadida!!!</p>
				<br>
				<p style="font-size: 90px">Será redirigido a la página principal al hacer click en el botón de abajo:</p>
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