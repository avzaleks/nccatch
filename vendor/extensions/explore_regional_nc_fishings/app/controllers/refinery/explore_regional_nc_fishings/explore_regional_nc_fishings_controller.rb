module Refinery
  module ExploreRegionalNcFishings
    class ExploreRegionalNcFishingsController < ::ApplicationController

      before_action :find_all_explore_regional_nc_fishings
      before_action :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @explore_regional_nc_fishing in the line below:
        present(@page)
      end

      def show
        @explore_regional_nc_fishing = ExploreRegionalNcFishing.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @explore_regional_nc_fishing in the line below:
        present(@page)
      end

    protected

      def find_all_explore_regional_nc_fishings
        @explore_regional_nc_fishings = ExploreRegionalNcFishing.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/explore_regional_nc_fishings").first
      end

    end
  end
end
