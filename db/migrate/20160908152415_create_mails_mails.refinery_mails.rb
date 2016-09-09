# This migration comes from refinery_mails (originally 1)
class CreateMailsMails < ActiveRecord::Migration

  def up
    create_table :refinery_mails do |t|
      t.string :full_name
      t.string :email
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-mails"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/mails/mails"})
    end

    drop_table :refinery_mails

  end

end
