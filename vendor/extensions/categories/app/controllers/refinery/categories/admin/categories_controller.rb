module Refinery
  module Categories
    module Admin
      class CategoriesController < ::Refinery::AdminController

        crudify :'refinery/categories/category'

        private

        # Only allow a trusted parameter "white list" through.
        def category_params
          params.require(:category).permit(:title)
        end
      end
    end
  end
end
