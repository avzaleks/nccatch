module Refinery
  module Blogs
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Blogs

      engine_name :refinery_blogs

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "blogs"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.blogs_admin_blogs_path }
          plugin.pathname = root
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Blogs)
      end
    end
  end
end
