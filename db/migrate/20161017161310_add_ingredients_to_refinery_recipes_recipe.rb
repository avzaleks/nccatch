class AddIngredientsToRefineryRecipesRecipe < ActiveRecord::Migration
  def change
    add_column :refinery_recipes, :ingredients, :text
    # add_reference :refinery_recipes_recipes, :category_id, index: true, foreign_key: true
  end
end
