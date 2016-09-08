module Refinery
  module WhatCookingBlocks
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::WhatCookingBlocks

      engine_name :refinery_what_cooking_blocks

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "what_cooking_blocks"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.what_cooking_blocks_admin_what_cooking_blocks_path }
          plugin.pathname = root
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::WhatCookingBlocks)
      end
    end
  end
end
