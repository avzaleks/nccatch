module Refinery
  module WhatCookingBlocks
    class WhatCookingBlock < Refinery::Core::BaseModel
      self.table_name = 'refinery_what_cooking_blocks'


      validates :title, :presence => true, :uniqueness => true

      belongs_to :image, :class_name => '::Refinery::Image'

      belongs_to :file, :class_name => '::Refinery::Resource'

      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      #   acts_as_indexed :fields => [:title]
      private
        def checkbox_checking
          if self.add_to_home_page
            Refinery::WhatCookingBlocks::WhatCookingBlock.all.map{|r| r.update_column(:add_to_home_page, false)}
            self.update_column(:add_to_home_page, true)
          end
        end
    end
  end
end
