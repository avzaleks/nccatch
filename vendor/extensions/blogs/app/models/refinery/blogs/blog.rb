module Refinery
  module Blogs
    class Blog < Refinery::Core::BaseModel
      self.table_name = 'refinery_blogs'

      class << self
        def search_by_title(title)
          where("title ILIKE ?", "%#{title}%")
        end

        def search_by_body(body)
          where("body ILIKE ?", "%#{body}%")
        end
      end

      validates :title, :presence => true, :uniqueness => true
      validates :image, :body, :presence => true

      belongs_to :image, :class_name => '::Refinery::Image'

      acts_as_indexed fields: [:title, :body]
    end
  end
end
