import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import recipes.db.DBInteraction;

public class createRecipe extends HttpServlet {

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		res.setContentType("text/html");
		PrintWriter out = res.getWriter();
		out.println("GET Request. No Form Data Posted");
	}

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {

		HttpSession session = req.getSession();
		String newRecipeName;
		String authorNewRecipe;
		String originCountryNewRecipe;
		String styleNewRecipe;
		String typeNewRecipe;
		String elaborationStepsNewRecipe;
		String ingredient1Name;
		String ingredient1Quantity;
		String ingredient1Units;

		final Object lock = session.getId().intern();
		
		synchronized (lock) {
			newRecipeName = String.valueOf(session.getAttribute("newRecipeName"));
			authorNewRecipe = String.valueOf(session.getAttribute("authorNewRecipe"));
			originCountryNewRecipe = String.valueOf(session.getAttribute("originCountryNewRecipe"));
			styleNewRecipe = String.valueOf(session.getAttribute("styleNewRecipe"));
			typeNewRecipe = String.valueOf(session.getAttribute("typeNewRecipe"));
			elaborationStepsNewRecipe = String.valueOf(session.getAttribute("elaborationStepsNewRecipe"));
			ingredient1Name = String.valueOf(session.getAttribute("ingredient1Name"));
			ingredient1Quantity = String.valueOf(session.getAttribute("ingredient1Quantity"));
			ingredient1Units = String.valueOf(session.getAttribute("ingredient1Units"));
		}
		
		try {
			DBInteraction db = new DBInteraction();
			// Se añade la receta a la base de datos
			int recipeID = db.addRecipe(newRecipeName, authorNewRecipe, originCountryNewRecipe, styleNewRecipe, typeNewRecipe, elaborationStepsNewRecipe);
			// Se añade el ingrediente
			int ingredientID = db.addIngredient(ingredient1Name, Float.parseFloat(ingredient1Quantity), ingredient1Units);
			// Se relaciona el ingredient con la receta mediante la tabla INGREDIENTS_RECIPES
			db.linkIngredientToRecipe(recipeID, ingredientID);
			db.close();
			
			session.removeAttribute("newRecipeName");
			session.removeAttribute("authorNewRecipe");
			session.removeAttribute("originCountryNewRecipe");
			session.removeAttribute("styleNewRecipe");
			session.removeAttribute("typeNewRecipe");
			session.removeAttribute("elaborationStepsNewRecipe");
			session.removeAttribute("ingredient1Name");
			session.removeAttribute("ingredient1Quantity");
			session.removeAttribute("ingredient1Units");

			// Una vez que la receta ha sido creada, se le muestra al usuario un mensaje con ésta información
			RequestDispatcher homepage = req.getRequestDispatcher(res.encodeURL("confirm_recipe_creation.jsp"));
			homepage.forward(req, res);

		} catch (Exception e) {
		}
	}
}