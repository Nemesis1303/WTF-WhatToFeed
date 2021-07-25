<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>What to feed</title>
<link rel="stylesheet" href="style_homepage.css">
</head>

<body>
	
	<%@ include file="banner.include"%>
	
	<!-- TOP NAVIATION BAR -->
	<nav class="topnav">
		<a href="#home" >MENÚ</a>
		<a href= "<%=response.encodeURL("createRecipe.jsp")%>" >CREAR RECETA</a>
		<a href="<%=response.encodeURL("filtering.jsp")%>" >BUSCAR RECETAS</a>
	</nav>
	
	<div class="descriptionDiv">
		<p class=paragraphDesc>
		   En la sociedad actual, multitud de personas se están habituando a largos horarios de trabajo y calendarios 
		   apretados. Por ello, muchas de estas personas tienden a comer fuera regularmente, habituándose así a la 
		   comida rápida y no estrictamente saludable, con el objetivo de ahorrar tiempo. Así, la aplicación WTF busca
		   como usuarios aquellas personas que no tienen tiempo para pensar qué cocinar o comprar, así como aquellas que
		   desean mantener una dieta sana y regular sin gran inversión de tiempo. WTF se desarrolla con el objetivo de 
		   recopilar y compartir recetas de personas de ideas afines, para dar inspiración a otras, y así eliminarles el 
		   trabajo molesto.
  		</p>
	</div>
	
	<div class="row">
	  	<div class="column left" style="background-color:#DDF7DA;">
	  		<div class="slideshow-container">

			<div class="mySlides fade">
			  <div class="numbertext">1 / 10</div>
			  <img class="imgSrcoll" src="images/moussaka.jpg" style="width:100%">
			</div>
			
			<div class="mySlides fade">
			  <div class="numbertext">2 / 10</div>
			  <img class="imgSrcoll" src="images/briocheDePeras.jpg" style="width:100%">
			</div>
			
			<div class="mySlides fade">
			  <div class="numbertext">3 / 10</div>
			  <img class="imgSrcoll" src="images/arancini.jpg" style="width:100%">
			</div>
			
			<div class="mySlides fade">
			  <div class="numbertext">4 / 10</div>
			  <img class="imgSrcoll" src="images/Focaccia de cebolla.jpg" style="width:100%">
			</div>
			
			<div class="mySlides fade">
			  <div class="numbertext">5 / 10</div>
			  <img class="imgSrcoll" src="images/jiaozi.jpg" style="width:100%">
			</div>
			
			<div class="mySlides fade">
			  <div class="numbertext">6 / 10</div>
			  <img class="imgSrcoll" src="images/Kirschenmichel.jpg" style="width:100%">
			</div>
			
			<div class="mySlides fade">
			  <div class="numbertext">7 / 10</div>
			  <img class="imgSrcoll" src="images/paella.jpg" style="width:100%">
			</div>
			
			<div class="mySlides fade">
			  <div class="numbertext">8 / 10</div>
			  <img class="imgSrcoll" src="images/polloGongBao.jpg" style="width:100%">
			</div>
			
			<div class="mySlides fade">
			  <div class="numbertext">9 / 10</div>
			  <img class="imgSrcoll" src="images/ratatouille.jpg" style="width:100%">
			</div>
			
			<div class="mySlides fade">
			  <div class="numbertext">10 / 10</div>
			  <img class="imgSrcoll" src="images/rotiCanai.jpg" style="width:100%">
			</div>
			
			<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
			<a class="next" onclick="plusSlides(1)">&#10095;</a>
			
			</div>
			<br>
			
			<div style="text-align:center">
			  <span class="dot" onclick="currentSlide(1)"></span> 
			  <span class="dot" onclick="currentSlide(2)"></span> 
			  <span class="dot" onclick="currentSlide(3)"></span> 
			  <span class="dot" onclick="currentSlide(4)"></span> 
			  <span class="dot" onclick="currentSlide(5)"></span> 
			  <span class="dot" onclick="currentSlide(6)"></span> 
			  <span class="dot" onclick="currentSlide(7)"></span>
			  <span class="dot" onclick="currentSlide(8)"></span> 
			  <span class="dot" onclick="currentSlide(9)"></span> 
			  <span class="dot" onclick="currentSlide(10)"></span> 
			</div>
			<br>
			<center>
				<h1 style="font-size: 80px"><strong>Algunas de nuestras recetas...</strong></h1>
			</center>
	  	</div>
	  	<div class="column right" style="background-color:#DDF7DA;">
	  		<div class="row-right-up">
	  			<table style="width:100%">
	  			  <!-- RECETA DEL DÍA -->
				  <tr>
				    <th><label class="labelBig" for='recipeOfTheDay'><strong>Receta del día:</strong></label></th>
				    <th><var style="font-size:100px" id="recipeOfTheDayName"> init</var></th>
				    <th><img id="recipeOfTheDayPic" class="imgRecipe" src="images/comida2.jpg" width="800" height="600"> </th>
				    <th><form action="<%=response.encodeURL("getRecipe")%>"method=POST>
				    			<input type="hidden" name="recipeToShow" id="recipeToShow"> 
    							<input type="submit" value="Ver receta"> 
    					</form>
    				</th>
				  </tr>
				</table>
	  		</div>
  			<div class="row-left-down">
  				<p style="font-size: 90px"><b>Seleccione el criterio de búsqueda:</b> 
  				<div class="container-row-left-down">
	  				<form action="filtering" method=POST><!-- !!!!!!!!!!!!!!!!!! -->
	  					<!-- FILTRAR POR NOMBRE DE RECETA -->
	  					<div class="row">
							<div class="col-label">
								<label style="font-size:70px" for='recipeName'><strong>Nombre de la receta:</strong></label>
							</div>
							<div class="col-input">
								<input type="text" name=recipeName 
									<%String name_var = (String) session.getAttribute("recipeName"); 
									if (name_var == null) name_var = "";
									%>value=<%=name_var%>>
							</div>
						</div>
						<!-- FILTRAR POR PAÍS DE ORIGEN DE LA RECETA -->
	  					<div class="row">
							<div class="col-label">
								<label style="font-size:70px" for='recipeCountry'><strong>País de origen:</strong></label>
							</div>
							<div class="col-input">
								<input type="text" name=recipeCountry 
									<%String recipeCountry_var = (String) session.getAttribute("recipeCountry"); 
									if (recipeCountry_var == null) recipeCountry_var = "";
									%>value=<%=recipeCountry_var%>>
							</div>
						</div>
						<!-- FILTRAR POR INGREDEINTES DE LA RECETA -->
	  					<div class="row">
							<div class="col-label">
								<label style="font-size:70px" for='recipeIngredient'><strong>Ingrediente:</strong></label>
							</div>
							<div class="col-input">
								<input type="text" name=recipeIngredient 
									<%String recipeIngredient_var = (String) session.getAttribute("recipeIngredient"); 
									if (recipeIngredient_var == null) recipeIngredient_var = "";
									%>value=<%=recipeIngredient_var%>>
							</div>
						</div>
						<!-- FILTRAR POR ESTILO DE COMIDA DE LA RECETA -->
	  					<div class="row">
							<div class="col-label">
								<label style="font-size:70px" for='recipeStyle'><strong>Estilo de comida:</strong></label>
							</div>
							<div class="col-input">
								<input type="text" name=recipeStyle 
									<%String recipeStyle_var = (String) session.getAttribute("recipeStyle"); 
									if (recipeStyle_var == null) recipeStyle_var = "";
									%>value=<%=recipeStyle_var%>>
							</div>
						</div>
						<!-- FILTRAR POR TIPO DE COMIDA DE LA RECETA -->
	  					<div class="row">
							<div class="col-label">
								<label style="font-size:70px" for='recipeType'><strong>Tipo de comida:</strong></label>
							</div>
							<div class="col-input">
								<input type="text" name=recipeType 
									<%String recipeType_var = (String) session.getAttribute("recipeType"); 
									if (recipeType_var == null) recipeType_var = "";
									%>value=<%=recipeType_var%>>
							</div>
						</div>
						<input type="submit" value="FITLER"> 
						<input type="reset" value="RESET">
					</form>
  				</div>
  			</div>
	  	</div>
	</div>
	
	<div class="footer">
		<%@ include file="banner2.include"%>
	</div>
	
	<div class="footer">
  		<%@ include file="copyright.include"%>
	</div>
	

	<!-- JAVASRCIPT FUNCTIONS -->
	<script>	
		var slideIndex = 1;
		showSlides(slideIndex);
	
		function plusSlides(n) {
		  showSlides(slideIndex += n);
		}
	
		function currentSlide(n) {
		  showSlides(slideIndex = n);
		}
	
		function showSlides(n) {
		  var i;
		  var slides = document.getElementsByClassName("mySlides");
		  var dots = document.getElementsByClassName("dot");
		  if (n > slides.length) {slideIndex = 1}    
		  if (n < 1) {slideIndex = slides.length}
		  for (i = 0; i < slides.length; i++) {
		      slides[i].style.display = "none";  
		  }
		  for (i = 0; i < dots.length; i++) {
		      dots[i].className = dots[i].className.replace(" active", "");
		  }
		  slides[slideIndex-1].style.display = "block";  
		  dots[slideIndex-1].className += " active";
		};
	
    	function getRecipe() {
		var recipes = [
	        {
	         	text: "Moussaka",
	         	img:  "images/moussaka.jpg",
	        },
	        {
	         	text: "Brioche de peras",
	         	img:  "images/briocheDePeras.jpg",
	        },
	        {
		    	text: "Arancini",
		       	img:  "images/arancini.jpg",
		    },
		    {
		       	text: "Focaccia de cebolla",
		        img:  "images/Focaccia de cebolla.jpg",
		    },
		    {
		        text: "Jiaozi",
		        img:  "images/jiaozi.jpg",
		    },
		    {
		        text: "Kirschenmichel",
		        img:  "images/Kirschenmichel.jpg",
		    },
		    {
			    text: "Paella",
			    img:  "images/paella.jpg",
			},
			{
			    text: "Pollo Gong Bao",
			    img:  "images/polloGongBao.jpg",
			},
			{
			    text: "Ratatouille",
			    img:  "images/ratatouille.jpg",
			},
			{
			    text: "Roti Canai",
			    img:  "images/rotiCanai.jpg",
			}
	      ];
		  var recipe = recipes[Math.floor(Math.random() * recipes.length)];
		  console.log(recipe.text)
		  document.getElementById("recipeOfTheDayName").innerHTML = recipe.text;
		  document.getElementById("recipeToShow").value = recipe.text;
		  console.log(document.getElementById("recipeOfTheDayName").innerHTML)
		  console.log(document.getElementById("recipeToShow").value)
		  document.getElementById("recipeOfTheDayPic").src = recipe.img;
		};	
		if (document.readyState == 'loading') {
			getRecipe();
		}
	</script>

</body>
</html>
