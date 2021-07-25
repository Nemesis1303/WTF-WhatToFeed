import java.io.*;
import java.util.*;
import java.awt.*;
import javax.servlet.*;
import javax.servlet.http.*;
import recipes.db.*;

public class searchRecipes extends HttpServlet {

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		res.setContentType("text/html");
		PrintWriter out = res.getWriter();
		out.println("GET Request. No Form Data Posted");
	}

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		
		String searchRecipeName;
		String searchRecipeCountry;
		String searchRecipeStyle;
		String searchRecipeType;

		ArrayList data = new ArrayList();
		
		// Cogemos los parámetros del formulario de búsqueda
		searchRecipeName = req.getParameter("searchRecipeName");
		searchRecipeCountry = req.getParameter("searchRecipeCountry");
		searchRecipeStyle = req.getParameter("searchRecipeStyle");
		searchRecipeType = req.getParameter("searchRecipeType");
		
		try {
			DBInteraction db = new DBInteraction();
			data = db.listRecipeByName_Country_Style_Type(searchRecipeName, searchRecipeCountry, searchRecipeStyle, searchRecipeType);
			
			// Si no se encuentran resultados se muestra un mensaje indicando de esto al usuario
			if (data.isEmpty()) {
				RequestDispatcher noResultsPage = req.getRequestDispatcher(res.encodeURL("noResultsFound.jsp"));
				noResultsPage.forward(req, res);
			// Si sí se encuentran resultados, se le muestran al usuario
			} else {
				RequestDispatcher layout = req.getRequestDispatcher("layoutRecipe.jsp");
				layout.include(req, res);
				
				for (int i = 0; i < data.size(); i++) {
					Recipe r = (Recipe) data.get(i);
					int recipeID = r.getRecipeId();
					String recipeName = r.getRecipeName();
					String author = r.getAuthor();
					String recipeOriginCountry = r.getRecipeOriginCountry();
					String recipeStyle = r.getRecipeStyle();
					String recipeType = r.getRecipeType();
					
					RequestDispatcher outRecipe = req.getRequestDispatcher("outRecipe.jsp?id=" + recipeID + "&name=" + recipeName
							+ "&author=" + author + "&recipeOriginCountry=" + recipeOriginCountry + "&recipeStyle=" + recipeStyle + "&recipeType="
							+ recipeType);
					outRecipe.include(req, res);
				}
				RequestDispatcher end = req.getRequestDispatcher("end.jsp");
				end.include(req, res);
			}
			db.close();
		} catch (Exception e) {
		}
	}// doPost end
}// class end