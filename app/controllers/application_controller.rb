class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :footer_links, :find_sponsors, :find_menu_items, :find_variables
  
  private
    def find_variables
      @mail = Refinery::Mails::Mail.new
      @articles = Refinery::Articles::Article.order("created_at DESC").first(4)
      @what_cooking_block = Refinery::WhatCookingBlocks::WhatCookingBlock.where(add_to_home_page: true).last
      @video = Refinery::Videos::Video.where(add_to_home_page: true).last
      @recipe = Refinery::Recipes::Recipe.where( recipe_of_the_week: true )
      @explore_regional = Refinery::ExploreRegionalNcFishings::ExploreRegionalNcFishing.where(add_to_home_page: true).last(4)
    end

    def footer_links
  	@footer_links = Refinery::Page.where(show_in_footer: true)
    end

    def find_sponsors
      @footer_sponsors = Refinery::SponsorInFooters::SponsorInFooter.all
    end

    def find_menu_items
      @menu_items = Refinery::Page.where(show_in_menu: true).roots.includes(:children)
    end
end
