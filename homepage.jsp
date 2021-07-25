<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>What to feed</title>
<link rel="stylesheet" href="style_homepage.css">
</head>

<body>
	<%@ include file="banner.include"%>
	
	<!-- BARRA DE NAVEGACIÓN -->
	<nav class="topnav">
		<a href="#home" >MENÚ</a>
		<a href= "<%=response.encodeURL("createRecipe.jsp")%>" >CREAR RECETA</a>
		<a href= "<%=response.encodeURL("search.jsp")%>" >BUSCAR RECETAS</a>
	</nav>
	
	<!-- DESCRIPCIÓN DE LA APLICACIÓN -->
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
	  		<!-- SCROLL DE RECETAS -->
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
				    <th><img id="recipeOfTheDayPic" class="imgRecipe" src="images/comida2.jpg" width="1000" height="800"> </th>
				    <th><form action="<%=response.encodeURL("getRecipe")%>"method=POST>
				    			<input type="hidden" name="recipeToShow" id="recipeToShow"> 
    							<input type="submit" value="Ver receta"> 
    					</form>
    				</th>
				  </tr>
				</table>
	  		</div>
  			<div class="row-left-down">
  				<br><br><br><br><br><br><br><br><br><br><br><br>
  				<!-- BUSCAR RECETAS -->
  				<p style="font-size: 90px"><b>Hasta 200.000 recetas nuevas por mes</b> 
  				<div class="container-row-left-down" >
  					<table style="width:100%">
					  <tr>
					    <th>
					    	<form action="<%=response.encodeURL("filtering")%>" method=POST>
					    		<table style="width:100%">
									  <tr>
									    <th>
									    	<select name="filtering" class="selectFiltering" style="width:500px; height:90px; font-size: 80px; font-family: 'Brush Script MT', cursive;">
												<!-- 1.  -->
												<option value="name" SELECTED>Nombre
												<!-- 2.  -->
												<option value="country" SELECTED>País
												<!-- 3.  -->
												<option value="style" SELECTED>Estilo de comida
												<!-- 5.  -->
												<option value="type" SELECTED>Tipo de comida
											</select>
									    </th>
									    <th>
									    	<input type="text" name="text1" id="textToSearch">
									    </th>
									    <th>
					    					<input type="submit" value="Buscar recetas"> 
					    				</th>
									  </tr>
									</table>
							</form>
					    </th>
					  </tr>
					</table>
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
	

	<!-- FUNCIONES JAVASCRIPT -->
	<!-- Las tres primeras funciones se usan para controlar el scroll de recetas. Para su elaboración,
	se ha tomado la idea del manual de W3SCHOOLS -->
	<!-- La cuarta función hace que se muestre una receta diferente como "Receta del día
	cada vez que el usuario recarga la página." -->
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
		  document.getElementById("recipeOfTheDayName").innerHTML = recipe.text;
		  document.getElementById("recipeToShow").value = recipe.text;
		  document.getElementById("recipeOfTheDayPic").src = recipe.img;
		};	
		if (document.readyState == 'loading') {
			getRecipe();
		}
	</script>
</body>
</html>
