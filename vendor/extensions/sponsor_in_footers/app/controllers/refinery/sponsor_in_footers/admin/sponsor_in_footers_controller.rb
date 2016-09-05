module Refinery
  module SponsorInFooters
    module Admin
      class SponsorInFootersController < ::Refinery::AdminController

        crudify :'refinery/sponsor_in_footers/sponsor_in_footer',
                :title_attribute => 'name'

        private

        # Only allow a trusted parameter "white list" through.
        def sponsor_in_footer_params
          params.require(:sponsor_in_footer).permit(:name, :link, :image_id)
        end
      end
    end
  end
end
