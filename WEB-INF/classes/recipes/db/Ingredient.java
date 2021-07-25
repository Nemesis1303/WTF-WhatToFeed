package recipes.db;

public class Ingredient {
	private int ingredientId;
	private String ingredientName;
	private float ingredientQuantity;
	private String ingredientQuantityUnits;

	public Ingredient(int ingredientId, String ingredientName, float ingredientQuantity, String ingredientQuantityUnits) {
		this.ingredientId = ingredientId;
		this.ingredientName = ingredientName;
		this.ingredientQuantity = ingredientQuantity;
		this.ingredientQuantityUnits = ingredientQuantityUnits;
	}

	public int getIngredientId() {
		return ingredientId;
	}

	public void setIngredientId(int ingredientId) {
		this.ingredientId = ingredientId;
	}

	public String getIngredientName() {
		return ingredientName;
	}

	public void setIngredientName(String ingredientName) {
		this.ingredientName = ingredientName;
	}

	public float getIngredientQuantity() {
		return ingredientQuantity;
	}

	public void setIngredientQuantity(float ingredientQuantity) {
		this.ingredientQuantity = ingredientQuantity;
	}

	public String getIngredientQuantityUnits() {
		return ingredientQuantityUnits;
	}

	public void setIngredientQuantityUnits(String ingredientQuantityUnits) {
		this.ingredientQuantityUnits = ingredientQuantityUnits;
	}

}
