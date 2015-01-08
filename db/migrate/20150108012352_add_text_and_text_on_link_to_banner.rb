class AddTextAndTextOnLinkToBanner < ActiveRecord::Migration
  def change
    add_column :banners, :text, :text
    add_column :banners, :text_on_link, :text
  end
end
