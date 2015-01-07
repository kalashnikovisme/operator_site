class CreateDeclares < ActiveRecord::Migration
  def change
    create_table :declares do |t|
      t.integer :user_id
      t.integer :proposition_id

      t.timestamps
    end
  end
end
