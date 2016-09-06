class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :footer_links

  def footer_links
	@footer_links ||= Refinery::Page.where(show_in_footer: true)
  end
end
