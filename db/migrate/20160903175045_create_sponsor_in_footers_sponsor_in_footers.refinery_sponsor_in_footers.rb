# This migration comes from refinery_sponsor_in_footers (originally 1)
class CreateSponsorInFootersSponsorInFooters < ActiveRecord::Migration

  def up
    create_table :refinery_sponsor_in_footers do |t|
      t.string :name
      t.string :link
      t.integer :image_id
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-sponsor_in_footers"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/sponsor_in_footers/sponsor_in_footers"})
    end

    drop_table :refinery_sponsor_in_footers

  end

end
