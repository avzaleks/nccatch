module Refinery
  module Blogs
    class Blog < Refinery::Core::BaseModel
      self.table_name = 'refinery_blogs'


      validates :title, :presence => true, :uniqueness => true

      belongs_to :image, :class_name => '::Refinery::Image'

      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      acts_as_indexed fields: [:title, :body]
    end
  end
end
