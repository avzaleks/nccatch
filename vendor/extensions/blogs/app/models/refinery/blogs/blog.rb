module Refinery
  module Blogs
    class Blog < Refinery::Core::BaseModel
      self.table_name = 'refinery_blogs'

      validates :title, :presence => true, :uniqueness => true
      validates :image, :body, :presence => true

      belongs_to :image, :class_name => '::Refinery::Image'

      acts_as_indexed fields: [:title, :body]
    end
  end
end
