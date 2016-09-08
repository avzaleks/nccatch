module Refinery
  module Banners
    class Banner < Refinery::Core::BaseModel
      self.table_name = 'refinery_banners'


      # def title was created automatically because you didn't specify a string field
      # when you ran the refinery:engine generator. <3 <3 Refinery CMS.
      def title
        "Override def title in vendor/extensions/banners/app/models/refinery/banners/banner.rb"
      end

      belongs_to :image, :class_name => '::Refinery::Image'

      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      #   acts_as_indexed :fields => [:title]
      before_save :checkbox_checking

      private
        def checkbox_checking
          if self.add_to_home_page
            Refinery::Banners::Banner.all.map{|r| r.update_column(:add_to_home_page, false)}
            self.update_column(:add_to_home_page, true)
          end
        end
    end
  end
end
