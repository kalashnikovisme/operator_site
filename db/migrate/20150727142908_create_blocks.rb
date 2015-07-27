class CreateBlocks < ActiveRecord::Migration
  def change
    create_table :blocks do |t|
      t.text :title
      t.text :text
      t.text :state
      t.integer :order_number
      t.text :view_name

      t.timestamps null: false
    end
  end
end
