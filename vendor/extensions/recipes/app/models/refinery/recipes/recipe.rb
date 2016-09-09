module Refinery
  module Recipes
    class Recipe < Refinery::Core::BaseModel
      self.table_name = 'refinery_recipes'


      validates :title, :presence => true, :uniqueness => true

      belongs_to :image, :class_name => '::Refinery::Image'

      after_save :checkbox_checking

      private
        def checkbox_checking
          if self.recipe_of_the_week
            id = [] << self.id
            ids = Refinery::Recipes::Recipe.where(recipe_of_the_week: true).map(&:id)
            (ids - id).map{|r| Refinery::Recipes::Recipe.find(r).update_column(:recipe_of_the_week, false)} unless ids.blank?
          end
        end

      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      #   acts_as_indexed :fields => [:title]

    end
  end
end
