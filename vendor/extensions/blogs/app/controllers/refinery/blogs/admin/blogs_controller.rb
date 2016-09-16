module Refinery
  module Blogs
    module Admin
      class BlogsController < ::Refinery::AdminController

        crudify :'refinery/blogs/blog'

        private

        # Only allow a trusted parameter "white list" through.
        def blog_params
          params.require(:blog).permit(:title, :image_id, :body)
        end
      end
    end
  end
end
