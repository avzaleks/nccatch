module Refinery
  module Videos
    class Video < Refinery::Core::BaseModel
      self.table_name = 'refinery_videos'


      validates :title, :presence => true, :uniqueness => true

      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      acts_as_indexed :fields => [:title]
      
      after_save :checkbox_checking

      def friendly_search_name
        "Video Gallery"
      end
      private
        def checkbox_checking
          if self.add_to_home_page
            id = [] << self.id
            ids = Refinery::Videos::Video.where(add_to_home_page: true).map(&:id)
            (ids - id).map{|r| Refinery::Videos::Video.find(r).update_column(:add_to_home_page, false)} unless ids.blank?
          end
        end
    end
  end
end
