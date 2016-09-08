module Refinery
  module Videos
    module Admin
      class VideosController < ::Refinery::AdminController

        crudify :'refinery/videos/video'

        private

        # Only allow a trusted parameter "white list" through.
        def video_params
          params.require(:video).permit(:title, :link, :add_to_home_page)
        end
      end
    end
  end
end
