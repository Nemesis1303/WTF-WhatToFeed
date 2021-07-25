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
			<form action="<%=response.encodeURL("search.jsp")%>" method=POST>
				<p style="font-size: 90px">No se han encontrado resultados que coincidan con sus criterios de b�squeda.</p>
				<br>
				<p style="font-size: 90px">Ser� redirigido a la p�gina de b�squeda al hacer click en el bot�n de abajo:</p>
				<input type="submit" value="Volver a la p�gina de b�squeda">
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