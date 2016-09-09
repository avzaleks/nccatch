module Refinery
  module Mails
    class MailsController < ::ApplicationController

      before_action :find_all_mails
      before_action :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @mail in the line below:
        present(@page)
      end

      def show
        @mail = Mail.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @mail in the line below:
        present(@page)
      end

    protected

      def find_all_mails
        @mails = Mail.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/mails").first
      end

    end
  end
end
