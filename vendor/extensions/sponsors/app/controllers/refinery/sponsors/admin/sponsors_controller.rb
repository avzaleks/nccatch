module Refinery
  module Sponsors
    module Admin
      class SponsorsController < ::Refinery::AdminController

        crudify :'refinery/sponsors/sponsor'

        private

        # Only allow a trusted parameter "white list" through.
        def sponsor_params
          params.require(:sponsor).permit(:title, :image_id, :add_to_home_page)
        end
      end
    end
  end
end
