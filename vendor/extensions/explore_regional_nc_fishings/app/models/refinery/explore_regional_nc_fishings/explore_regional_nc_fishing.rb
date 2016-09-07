module Refinery
  module ExploreRegionalNcFishings
    class ExploreRegionalNcFishing < Refinery::Core::BaseModel
      self.table_name = 'refinery_explore_regional_nc_fishings'


      validates :link, :presence => true, :uniqueness => true

      belongs_to :image, :class_name => '::Refinery::Image'

      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      #   acts_as_indexed :fields => [:title]
      before_save :check_link

      private

      def check_link
        link = self.link
        unless link.blank? || link.include?('http')
          self.link = 'http://' + link
        else
          self.link
        end
      end
    end
  end
end
