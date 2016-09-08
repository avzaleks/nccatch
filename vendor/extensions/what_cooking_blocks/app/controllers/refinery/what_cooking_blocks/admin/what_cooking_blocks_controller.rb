module Refinery
  module WhatCookingBlocks
    module Admin
      class WhatCookingBlocksController < ::Refinery::AdminController

        crudify :'refinery/what_cooking_blocks/what_cooking_block'

        private

        # Only allow a trusted parameter "white list" through.
        def what_cooking_block_params
          params.require(:what_cooking_block).permit(:title, :image_id, :file_id, :body, :add_to_home_page)
        end
      end
    end
  end
end
