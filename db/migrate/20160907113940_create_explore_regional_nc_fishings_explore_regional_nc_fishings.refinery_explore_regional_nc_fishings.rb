# This migration comes from refinery_explore_regional_nc_fishings (originally 1)
class CreateExploreRegionalNcFishingsExploreRegionalNcFishings < ActiveRecord::Migration

  def up
    create_table :refinery_explore_regional_nc_fishings do |t|
      t.string :link
      t.integer :image_id
      t.boolean :add_to_home_page
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-explore_regional_nc_fishings"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/explore_regional_nc_fishings/explore_regional_nc_fishings"})
    end

    drop_table :refinery_explore_regional_nc_fishings

  end

end
