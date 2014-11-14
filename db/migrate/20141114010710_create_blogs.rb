class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.text :title
      t.text :body
      t.text :photo

      t.timestamps
    end
  end
end
