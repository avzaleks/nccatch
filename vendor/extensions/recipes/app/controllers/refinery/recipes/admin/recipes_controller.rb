module Refinery
  module Recipes
    module Admin
      class RecipesController < ::Refinery::AdminController

        crudify :'refinery/recipes/recipe'

        private

        # Only allow a trusted parameter "white list" through.
        def recipe_params
          params.require(:recipe).permit(:title, :image_id, :add_to_the_home_page, :body, :ingredients)
        end
      end
    end
  end
end
