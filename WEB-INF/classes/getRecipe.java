import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import recipes.db.Recipe;
import recipes.db.DBInteraction;

public class getRecipe extends HttpServlet {

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		res.setContentType("text/html");
		PrintWriter out = res.getWriter();
		out.println("GET Request. No Form Data Posted");
	}

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {

		ArrayList data = new ArrayList();

		// Cogemos el valor del parámetro que hace referencia a la receta que
		// aleatoriamente se muestra en la página principal
		String name = req.getParameter("recipeToShow");
		try {
			DBInteraction db = new DBInteraction();
			data = db.listRecipeByName(name);
			db.close();
		} catch (Exception e) {
		}
		
		for (int i = 0; i < data.size(); i++) {
			Recipe recipe = (Recipe) data.get(i);
			String recipeName = recipe.getRecipeName();
			String author = recipe.getAuthor();
			String recipeOriginCountry = recipe.getRecipeOriginCountry();
			String recipeStyle = recipe.getRecipeStyle();
			String recipeType = recipe.getRecipeType();
			String recipeElaborationSteps = recipe.getRecipeElaborationSteps();
			System.out.print(recipeName);

			RequestDispatcher showRecipe = req.getRequestDispatcher("seeRecipe.jsp?recipeName=" + recipeName
					+ "&author=" + author + "&recipeOriginCountry=" + recipeOriginCountry + "&recipeStyle="
					+ recipeStyle + "&recipeType=" + recipeType + "&recipeElaborationSteps=" + recipeElaborationSteps);
			showRecipe.forward(req, res);
		}
	}// doPost end
}// class end