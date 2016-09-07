require 'refinerycms-core'

module Refinery
  autoload :ExploreRegionalNcFishingsGenerator, 'generators/refinery/explore_regional_nc_fishings_generator'

  module ExploreRegionalNcFishings
    require 'refinery/explore_regional_nc_fishings/engine'

    class << self
      attr_writer :root

      def root
        @root ||= Pathname.new(File.expand_path('../../../', __FILE__))
      end

      def factory_paths
        @factory_paths ||= [ root.join('spec', 'factories').to_s ]
      end
    end
  end
end
