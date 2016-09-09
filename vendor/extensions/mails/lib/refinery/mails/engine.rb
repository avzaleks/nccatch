module Refinery
  module Mails
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Mails

      engine_name :refinery_mails

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "mails"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.mails_admin_mails_path }
          plugin.pathname = root
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Mails)
      end
    end
  end
end
