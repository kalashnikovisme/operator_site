class AddStateToVideo < ActiveRecord::Migration
  def change
    add_column :videos, :state, :text
  end
end
