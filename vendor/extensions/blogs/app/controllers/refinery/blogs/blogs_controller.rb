module Refinery
  module Blogs
    class BlogsController < ::ApplicationController

      before_action :find_all_blogs
      before_action :find_page

      def index
        @posts = Blog.order('created_at DESC').paginate(page: params[:page], per_page: 6)
        present(@page)
      end

      def posts_search
        if !params[:search_by_title].blank?
          @posts = Blog.search_by_title(params[:search_by_title]).paginate(page: params[:page], per_page: 6)
        elsif !params[:search_by_body].blank?
          @posts = Blog.search_by_body(params[:search_by_body]).paginate(page: params[:page], per_page: 6)
        else
          redirect_to refinery.blogs_blogs_path and return
        end
        render 'index'
      end

      def show
        @post = Blog.find(params[:id])
        @posts = Blog.order('created_at DESC').first(3)
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @blog in the line below:
        present(@page)
      end

    protected

      def find_all_blogs
        @blogs = Blog.order('created_at DESC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/blogs").first
      end

    end
  end
end
