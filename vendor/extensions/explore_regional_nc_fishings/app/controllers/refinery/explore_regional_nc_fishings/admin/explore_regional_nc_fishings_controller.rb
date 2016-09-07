module Refinery
  module ExploreRegionalNcFishings
    module Admin
      class ExploreRegionalNcFishingsController < ::Refinery::AdminController

        crudify :'refinery/explore_regional_nc_fishings/explore_regional_nc_fishing',
                :title_attribute => 'link'

        private

        # Only allow a trusted parameter "white list" through.
        def explore_regional_nc_fishing_params
          params.require(:explore_regional_nc_fishing).permit(:link, :add_to_home_page, :image_id)
        end
      end
    end
  end
end
