class CreateBanners < ActiveRecord::Migration
  def change
    create_table :banners do |t|
      t.text :image
      t.text :url
      t.text :state

      t.timestamps
    end
  end
end
