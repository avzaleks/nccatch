module Refinery
  module Articles
    module Admin
      class ArticlesController < ::Refinery::AdminController

        crudify :'refinery/articles/article'

        private

        # Only allow a trusted parameter "white list" through.
        def article_params
          params.require(:article).permit(:title, :image_id, :body)
        end
      end
    end
  end
end
