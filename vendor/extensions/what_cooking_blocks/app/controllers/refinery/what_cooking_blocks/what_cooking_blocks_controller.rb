module Refinery
  module WhatCookingBlocks
    class WhatCookingBlocksController < ::ApplicationController

      before_action :find_all_what_cooking_blocks
      before_action :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @what_cooking_block in the line below:
        present(@page)
      end

      def show
        @what_cooking_block = WhatCookingBlock.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @what_cooking_block in the line below:
        present(@page)
      end

    protected

      def find_all_what_cooking_blocks
        @what_cooking_blocks = WhatCookingBlock.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/what_cooking_blocks").first
      end

    end
  end
end
