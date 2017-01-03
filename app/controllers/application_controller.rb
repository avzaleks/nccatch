class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :find_links
  
  private

	  def find_links
  		@soon_events = Refinery::Events::Event.where( "start_date > ?", Date.today ).order('start_date ASC').first(4)
	  	@mail = Refinery::Mails::Mail.new
	  	@menu_items = Refinery::Page.where( show_in_menu: true ).roots.includes(:children)
	  	@banner_images = Refinery::Banners::Banner.all
	  end
end
