module Refinery
  module SponsorInFooters
    class SponsorInFootersController < ::ApplicationController

      before_action :find_all_sponsor_in_footers
      before_action :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @sponsor_in_footer in the line below:
        present(@page)
      end

      def show
        @sponsor_in_footer = SponsorInFooter.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @sponsor_in_footer in the line below:
        present(@page)
      end

    protected

      def find_all_sponsor_in_footers
        @sponsor_in_footers = SponsorInFooter.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/sponsor_in_footers").first
      end

    end
  end
end
