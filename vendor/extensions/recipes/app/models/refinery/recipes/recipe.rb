module Refinery
  module Recipes
    class Recipe < Refinery::Core::BaseModel
      self.table_name = 'refinery_recipes'

      belongs_to :refinery_category, :class_name => '::Refinery::Categories::Category'

      class << self
        def search_by_title(title)
          where("title ILIKE ?", "%#{title}%")
        end

        def search_by_ingredient(body)
          where("ingredients ILIKE ?", "%#{body}%")
        end
      end

      validates :title, :presence => true, :uniqueness => true
      validates :image, :ingredients, :body, :presence => true

      belongs_to :image, :class_name => '::Refinery::Image'

      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      acts_as_indexed fields: [:title, :body]

    end
  end
end
