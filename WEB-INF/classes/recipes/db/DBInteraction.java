package recipes.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DBInteraction {
	final String user = "root";
	final String password = "PBsZ+8r:bYDrgv&s";
	Query q;
	Connection con;

	// Constructor para conectar con la base de datos
	public DBInteraction() throws SQLException {
		String url = "jdbc:mysql://localhost/wtf_project2";
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (java.lang.ClassNotFoundException e) {
			System.err.print("ClassNotFoundException: ");
			System.err.println(e.getMessage());
		}
		try {
			System.out.println("Trying to connect...");
			con = DriverManager.getConnection(url, user, password);
			System.out.println("Connected!");
		} catch (SQLException ex) {
			System.err.print("SQLException: ");
			System.err.println(ex.getMessage());
		}
		q = new Query(con);
	}

	public void close() throws Exception {
		q.close();
		con.close();
	}

	// Método para añadir una nueva recetas a la tabla "RECIPES", y recoger el
	// identificador con el cual la receta ha sido añadida a la tabla.
	// Dicho parámetro en el entero que la función devuelve
	public int addRecipe(String recipeName, String author, String recipeOriginCountry, String recipeStyle,
			String recipeType, String recipeElaborationSteps) throws Exception {
		String addRecipe = "INSERT INTO RECIPES(RECIPE_NAME, AUTHOR, RECIPE_ORIGIN_COUNTRY, RECIPE_STYLE, RECIPE_TYPE, RECIPE_ELABORATION_STEPS) VALUES ('"
				+ recipeName + "','" + author + "','" + recipeOriginCountry + "','" + recipeStyle + "','" + recipeType
				+ "','" + recipeElaborationSteps + "')";
		q.doUpdate(addRecipe);
		String selectionID = "SELECT RECIPE_ID FROM RECIPES";
		ResultSet rs = q.doSelect(selectionID);
		int recipeID = 0;
		while (rs.next()) {
			recipeID = rs.getInt(1);
		}
		return recipeID;
	}

	// Método para añadir un nuevo ingrediente a la tabla "INGREDIENTS", y recoger
	// el identificador con el cual dicho ingrediente ha sido añadido a la tabla.
	// Este parámetro en el entero que la función devuelve
	public int addIngredient(String ingredientName, float ingredientQuantity, String ingredientQuantityUnits)
			throws Exception {
		String addIngredient = "INSERT INTO INGREDIENTS(INGREDIENT_NAME, INGREDIENT_QUANTITY, INGREDIENT_QUNATITY_UNITS) VALUES ('"
				+ ingredientName + "','" + ingredientQuantity + "','" + ingredientQuantityUnits + "')";
		q.doUpdate(addIngredient);
		String selectionID = "SELECT INGREDIENT_ID FROM INGREDIENTS";
		ResultSet rs = q.doSelect(selectionID);
		int ingredientID = 0;
		while (rs.next()) {
			ingredientID = rs.getInt(1);
		}
		return ingredientID;
	}

	// Método para añadir a la tabla "INGREDIENTS_RECIPES" una relación
	// receta-ingrediente
	public void linkIngredientToRecipe(int id_recipe, int id_ingredient) throws Exception {
		String linkIngredientToRecipe = "INSERT INTO INGREDIENTS_RECIPES VALUES ('" + id_recipe + "','" + id_ingredient
				+ "')";
		q.doUpdate(linkIngredientToRecipe);
	}

	// Método que realiza una solicitud espefificada como parámetro a la base de
	// datos y devuelve una lista de recetas que incluyen aquellas que cumplen los
	// criterios de la solicitud
	public ArrayList listRecipes(String selection) throws Exception {
		ArrayList data = new ArrayList();
		ResultSet rs = q.doSelect(selection);
		while (rs.next()) {
			int recipeID = rs.getInt(1);
			String recipeName = rs.getString(2);
			String author = rs.getString(3);
			String recipeOriginCountry = rs.getString(4);
			String recipeStyle = rs.getString(5);
			String recipeType = rs.getString(6);
			String recipeElaborationSteps = rs.getString(7);
			System.out.print(recipeType);
			data.add(new Recipe(recipeID, recipeName, author, recipeOriginCountry, recipeStyle, recipeType,
					recipeElaborationSteps));
		}
		return (data);

	}

	// Método para listar todas las recetas de la base de datos
	public ArrayList listallRecipes() throws Exception {
		String selection = "SELECT * FROM RECIPES";
		ArrayList data = this.listRecipes(selection);
		return (data);
	}

	// Método para listar todas las recetas de la base de datos que tienen un
	// determinado nombre
	public ArrayList listRecipeByName(String name) throws Exception {
		System.out.println("ENTRA!");
		String selection = "SELECT * FROM RECIPES WHERE RECIPE_NAME='" + name + "'";
		ArrayList data = this.listRecipes(selection);
		// System.out.print(data==null);
		return (data);
	}

	// Método para listar todas las recetas de la base de datos que son de un país
	// determinado
	public ArrayList listRecipeByCountry(String country) throws Exception {
		System.out.print(country);
		String selection = "SELECT * FROM RECIPES WHERE RECIPE_ORIGIN_COUNTRY='" + country + "'";
		ArrayList data = this.listRecipes(selection);
		System.out.print(data == null);
		return (data);
	}

	// Método para listar todas las recetas de la base de datos de acuerdo a un
	// estilo
	public ArrayList listRecipeByStyle(String style) throws Exception {
		System.out.print(style);
		String selection = "SELECT * FROM RECIPES WHERE RECIPE_STYLE='" + style + "'";
		ArrayList data = this.listRecipes(selection);
		System.out.print(data == null);
		return (data);
	}

	// Método para listar todas las recetas de la base de datos de acuerdo a un tipo
	// de comida
	public ArrayList listRecipeByType(String type) throws Exception {
		System.out.print(type);
		String selection = "SELECT * FROM RECIPES WHERE RECIPE_TYPE='" + type + "'";
		ArrayList data = this.listRecipes(selection);
		System.out.print(data == null);
		return (data);
	}

	// Método para buscar la/s receta/s con un nombre, país de procedencia, estilo y
	// tipo de comida específicos
	public ArrayList listRecipeByName_Country_Style_Type(String name, String country, String style, String type)
			throws Exception {
		System.out.print(type);
		String selection = "SELECT * FROM RECIPES WHERE RECIPE_NAME='" + name + "'  AND RECIPE_ORIGIN_COUNTRY='"
				+ country + "'  AND RECIPE_STYLE='" + style + "'  AND RECIPE_TYPE='" + type + "'";
		ArrayList data = this.listRecipes(selection);
		System.out.println("llego aquí y data es:" + data.isEmpty());
		return (data);
	}
}
