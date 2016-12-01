class AddLinkToRefineryBanners < ActiveRecord::Migration
  def change
    add_column :refinery_banners, :link, :string
  end
end
