package recipes.db;

public class Recipe {
	private int recipeID;
	private String recipeName;
	private String author;
	private String recipeOriginCountry;
	private String recipeStyle;
	private String recipeType;
	private String recipeElaborationSteps;


	public Recipe(int recipeID, String recipeName, String author, String recipeOriginCountry, String recipeStyle, String recipeType,
			String recipeElaborationSteps) {
		this.recipeID = recipeID;
		this.recipeName = recipeName;
		this.author = author;
		this.recipeOriginCountry = recipeOriginCountry;
		this.recipeStyle = recipeStyle;
		this.recipeType = recipeType;
		this.recipeElaborationSteps = recipeElaborationSteps;
	}
	
	public int getRecipeId() {
		return recipeID;
	}
	
	public void setRecipeId(int recipeID) {
		this.recipeID = recipeID;
	}
	
	public String getRecipeName() {
		return recipeName;
	}

	public void setRecipeName(String recipeName) {
		this.recipeName = recipeName;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getRecipeOriginCountry() {
		return recipeOriginCountry;
	}

	public void setRecipeOriginCountry(String recipeOriginCountry) {
		this.recipeOriginCountry = recipeOriginCountry;
	}

	public String getRecipeStyle() {
		return recipeStyle;
	}

	public void setRecipeStyle(String recipeStyle) {
		this.recipeStyle = recipeStyle;
	}

	public String getRecipeType() {
		return recipeType;
	}

	public void setRecipeType(String recipeType) {
		this.recipeType = recipeType;
	}

	public String getRecipeElaborationSteps() {
		return recipeElaborationSteps;
	}

	public void setRecipeElaborationSteps(String recipeElaborationSteps) {
		this.recipeElaborationSteps = recipeElaborationSteps;
	}

}
