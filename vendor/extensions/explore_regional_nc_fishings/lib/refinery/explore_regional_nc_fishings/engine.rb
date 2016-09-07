module Refinery
  module ExploreRegionalNcFishings
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::ExploreRegionalNcFishings

      engine_name :refinery_explore_regional_nc_fishings

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "explore_regional_nc_fishings"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.explore_regional_nc_fishings_admin_explore_regional_nc_fishings_path }
          plugin.pathname = root
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::ExploreRegionalNcFishings)
      end
    end
  end
end
