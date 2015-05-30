class AddOrderToVideo < ActiveRecord::Migration
  def change
    add_column :videos, :order_number, :integer
  end
end
