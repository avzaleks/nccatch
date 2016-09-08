class CreateWhatCookingBlocksWhatCookingBlocks < ActiveRecord::Migration

  def up
    create_table :refinery_what_cooking_blocks do |t|
      t.string :title
      t.integer :image_id
      t.integer :file_id
      t.text :body
      t.boolean :add_to_home_page
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-what_cooking_blocks"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/what_cooking_blocks/what_cooking_blocks"})
    end

    drop_table :refinery_what_cooking_blocks

  end

end
