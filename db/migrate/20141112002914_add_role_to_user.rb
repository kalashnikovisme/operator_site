class AddRoleToUser < ActiveRecord::Migration
  def change
    add_column :users, :role, :text
  end
end
