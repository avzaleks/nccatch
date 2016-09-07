class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :footer_links, :find_sponsors, :find_menu_items
  private
  
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
