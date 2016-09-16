module Refinery
  module Recipes
    class RecipesController < ::ApplicationController

      before_action :find_all_recipes
      before_action :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @recipe in the line below:
        present(@page)
      end

      def show
        @recipe = Recipe.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @recipe in the line below:
        present(@page)
      end

    protected

      def find_all_recipes
        @recipes = Recipe.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/recipes").first
      end

    end
  end
end
