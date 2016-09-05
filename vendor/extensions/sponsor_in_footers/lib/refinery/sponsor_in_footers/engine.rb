module Refinery
  module SponsorInFooters
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::SponsorInFooters

      engine_name :refinery_sponsor_in_footers

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "sponsor_in_footers"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.sponsor_in_footers_admin_sponsor_in_footers_path }
          plugin.pathname = root
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::SponsorInFooters)
      end
    end
  end
end
