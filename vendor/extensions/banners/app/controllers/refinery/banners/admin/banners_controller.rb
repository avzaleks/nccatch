module Refinery
  module Banners
    module Admin
      class BannersController < ::Refinery::AdminController

        crudify :'refinery/banners/banner'

        private

        # Only allow a trusted parameter "white list" through.
        def banner_params
          params.require(:banner).permit(:image_id)
        end
      end
    end
  end
end
