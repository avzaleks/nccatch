class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :find_links
  
  private

	  def find_links
	  	@mail = Refinery::Mails::Mail.new
	  	@menu_items = Refinery::Page.where( show_in_menu: true )
	  	@banner_images = Refinery::Banners::Banner.all
	  end
end
