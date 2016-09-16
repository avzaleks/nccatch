class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :find_header_links
  private

  def find_header_links
  	@menu_items = Refinery::Page.where( show_in_menu: true )
  end
end
