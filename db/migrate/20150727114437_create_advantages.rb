class CreateAdvantages < ActiveRecord::Migration
  def change
    create_table :advantages do |t|
      t.text :title
      t.text :icon
      t.text :text

      t.timestamps null: false
    end
  end
end
