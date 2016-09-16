module Refinery
  module Recipes
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Recipes

      engine_name :refinery_recipes

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "recipes"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.recipes_admin_recipes_path }
          plugin.pathname = root
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Recipes)
      end
    end
  end
end
