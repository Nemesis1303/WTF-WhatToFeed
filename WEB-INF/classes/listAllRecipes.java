import java.io.*;
import java.util.*;
import java.awt.*;
import javax.servlet.*;
import javax.servlet.http.*;
import recipes.db.*;

public class listAllRecipes extends HttpServlet {

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		res.setContentType("text/html");
		PrintWriter out = res.getWriter();
		out.println("GET Request. No Form Data Posted");
	}

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		ArrayList data = new ArrayList();
		
		try {
			DBInteraction db = new DBInteraction();
			data = db.listallRecipes();
			
			RequestDispatcher layout = req.getRequestDispatcher("layoutListRecipes.jsp");
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
			db.close();
		} // end try
		catch (Exception e) {
		}

	}// doPost end
}// class end