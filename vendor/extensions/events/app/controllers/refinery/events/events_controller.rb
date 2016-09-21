module Refinery
  module Events
    class EventsController < ::ApplicationController

      before_action :find_all_events
      before_action :find_page

      def index
        @events_js = Refinery::Events::Event.all.map{ |event| {title: event.title, url: refinery.events_event_path(event), start: event.start_date, end: event.end_date} }
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @event in the line below:
        present(@page)
      end

      def show
        @event = Event.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @event in the line below:
        present(@page)
      end

    protected

      def find_all_events
        @events = Event.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/events").first
      end

    end
  end
end
