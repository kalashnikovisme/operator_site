class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.integer :user_id
      t.text :avatar
      t.text :position

      t.timestamps
    end
  end
end
