class AddTitleAndDescriptionToVideo < ActiveRecord::Migration
  def change
    add_column :videos, :title, :text
    add_column :videos, :description, :text
  end
end
