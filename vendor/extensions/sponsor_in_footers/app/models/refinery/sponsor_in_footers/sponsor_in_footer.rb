module Refinery
  module SponsorInFooters
    class SponsorInFooter < Refinery::Core::BaseModel
      self.table_name = 'refinery_sponsor_in_footers'


      validates :name, :presence => true, :uniqueness => true

      belongs_to :image, :class_name => '::Refinery::Resource'

      before_save :check_link

      def check_link
        link = self.link
        unless link.blank? || link.include?('http')
          self.link = 'http://' + link
        else
          self.link = '/'
        end
      end
      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      #   acts_as_indexed :fields => [:title]

    end
  end
end
