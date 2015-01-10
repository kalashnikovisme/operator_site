class AddTypeToVideo < ActiveRecord::Migration
  def change
    add_column :videos, :project_type, :text
  end
end
