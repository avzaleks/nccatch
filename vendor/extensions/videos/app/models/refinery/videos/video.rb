module Refinery
  module Videos
    class Video < Refinery::Core::BaseModel
      self.table_name = 'refinery_videos'


      validates :title, :presence => true, :uniqueness => true

      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      #   acts_as_indexed :fields => [:title]
      before_save :checkbox_checking

      private
        def checkbox_checking
          if self.add_to_home_page
            Refinery::Videos::Video.all.map{|r| r.update_column(:add_to_home_page, false)}
            self.update_column(:recipe_of_the_week, true)
          end
        end
    end
  end
end
