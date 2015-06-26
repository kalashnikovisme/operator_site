class AddShowWithAllToVideo < ActiveRecord::Migration
  def change
    add_column :videos, :show_with_all, :text
  end
end
