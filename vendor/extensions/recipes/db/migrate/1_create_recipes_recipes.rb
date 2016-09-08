class CreateRecipesRecipes < ActiveRecord::Migration

  def up
    create_table :refinery_recipes do |t|
      t.string :title
      t.integer :image_id
      t.text :body
      t.boolean :recipe_of_the_week
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-recipes"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/recipes/recipes"})
    end

    drop_table :refinery_recipes

  end

end
