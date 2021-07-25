import java.io.*;
import java.util.*;
import java.awt.*;
import javax.servlet.*;
import javax.servlet.http.*;
import recipes.db.*;

public class filtering extends HttpServlet {

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		res.setContentType("text/html");
		PrintWriter out = res.getWriter();
		out.println("GET Request. No Form Data Posted");
	}

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		String filtering;
		String text;
		ArrayList data = new ArrayList();

		// Extraemnos los parámetros del formulario de búsqueda de la página principal
		filtering = req.getParameter("filtering");
		text = req.getParameter("text1");

		try {
			DBInteraction db = new DBInteraction();
			// Dependiendo del criterio de búsqueda que el usario haya seleccionado,
			// llamamos a un método u a otro
			if (filtering.equals("name")) {
				data = db.listRecipeByName(text);
			} else if (filtering.equals("country")) {
				data = db.listRecipeByCountry(text);
			} else if (filtering.equals("style")) {
				data = db.listRecipeByStyle(text);
			} else if (filtering.equals("type")) {
				data = db.listRecipeByType(text);
			}

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

				RequestDispatcher outRecipe = req.getRequestDispatcher("outRecipe.jsp?id=" + recipeID + "&name="
						+ recipeName + "&author=" + author + "&recipeOriginCountry=" + recipeOriginCountry
						+ "&recipeStyle=" + recipeStyle + "&recipeType=" + recipeType);
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