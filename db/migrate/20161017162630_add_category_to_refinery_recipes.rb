class AddCategoryToRefineryRecipes < ActiveRecord::Migration
  def change
    add_reference :refinery_recipes, :refinery_category, index: true, foreign_key: true
  end
end
