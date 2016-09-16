# This migration comes from refinery_blogs (originally 1)
class CreateBlogsBlogs < ActiveRecord::Migration

  def up
    create_table :refinery_blogs do |t|
      t.string :title
      t.integer :image_id
      t.text :body
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-blogs"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/blogs/blogs"})
    end

    drop_table :refinery_blogs

  end

end
