module Refinery
  module Recipes
    class RecipesController < ::ApplicationController

      before_action :find_all_recipes
      before_action :find_page

      def index
        @recipes = Refinery::Recipes::Recipe.paginate(page: params[:page], per_page: 6)
        present(@page)
      end

      def recipes_search
        if !params[:search_by_title].blank?
          @recipes = Refinery::Recipes::Recipe.search_by_title(params[:search_by_title]).paginate(page: params[:page], per_page: 6)
        elsif !params[:search_by_body].blank?
          @recipes = Refinery::Recipes::Recipe.search_by_ingredient(params[:search_by_body]).paginate(page: params[:page], per_page: 6)
        else
          redirect_to refinery.recipes_recipes_path and return
        end
        render 'index'
      end

      def show
        @recipes = Refinery::Recipes::Recipe.order('created_at DESC').first(3)
        @recipe = Recipe.find(params[:id])
        @category = @recipe.try(:refinery_category)
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
